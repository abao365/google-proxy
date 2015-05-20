package controllers

import (
	"compress/gzip"
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"github.com/astaxie/beego"
	"net/http"
	"os"
	"strings"
)

type MainController struct {
	beego.Controller
}

type SearchController struct {
	beego.Controller
}

func (this *SearchController) getHtml(doc *goquery.Document) map[string]interface{} {
	responseData := make(map[string]interface{})
	results := make([]map[string]string, 0)
	doc.Find("div#ires").Find("li.g").Each(func(i int, s *goquery.Selection) {
		title := s.Find("h3.r a").Text()
		if title != "" {
			result := make(map[string]string)
			href, ch := s.Find("h3.r a").Attr("data-href")
			if !ch {
				href, _ = s.Find("h3.r a").Attr("href")
			}
			content, _ := s.Find("span.st").Html()
			result["Title"] = title
			result["Href"] = href
			result["Content"] = content
			results = append(results, result)
		}
	})
	responseData["Results"] = results
	pageHtml, _ := doc.Find("#navcnt").Html()
	pageHtml = strings.Replace(pageHtml, "/images/nav_logo195.png", "/static/img/nav_logo195.png", -1)
	responseData["Pages"] = pageHtml
	responseData["ResultStats"] = doc.Find("#resultStats").Text()
	responseData["Botstuff"], _ = doc.Find("#botstuff").Html()
	return responseData
}

/**
*
**/
func (this *SearchController) getGoogle(query_url string) map[string]interface{} {
	client := &http.Client{}
	reqest, err := http.NewRequest("GET", "https://www.google.com/search?"+query_url, nil)
	if err != nil {
		fmt.Println("Fatal error ", err.Error())
		os.Exit(0)
	}
	reqest.Header = this.Ctx.Request.Header
	reqest.Header.Set("Host", "www.google.com")
	reqest.Header.Set("Referer", "https://www.google.com/")
	response, err := client.Do(reqest)
	defer response.Body.Close()
	if err != nil {
		fmt.Println("Fatal error ", err.Error())
		os.Exit(0)
	}
	if response.StatusCode == 200 {
		switch response.Header.Get("Content-Encoding") {
		case "gzip":
			reader, _ := gzip.NewReader(response.Body)
			doc, _ := goquery.NewDocumentFromReader(reader)
			return this.getHtml(doc)
		default:
			doc, _ := goquery.NewDocumentFromReader(response.Body)
			return this.getHtml(doc)
		}
	}
	return nil
}

func (this *MainController) Get() {
	this.TplNames = "default.tpl"
}

func (this *SearchController) Get() {
	q := this.GetString("q")
	if q != "" {
		this.Data["q"] = q
		query_url := this.Ctx.Request.URL.RawQuery
		this.Data["responseData"] = this.getGoogle(query_url)
		this.TplNames = "index.tpl"
	} else {
		this.TplNames = "default.tpl"
	}

}
