package routers

import (
	"github.com/astaxie/beego"
	"google-proxy/controllers"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/search", &controllers.SearchController{})
}
