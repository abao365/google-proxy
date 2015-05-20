package main

import (
	"github.com/astaxie/beego"
	_ "google-proxy/routers"
)

func main() {
	beego.Run()
}
