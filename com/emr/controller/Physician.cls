Class com.emr.controller.Physician Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/prc/all" Method="GET" Call="com.emr.service.Physician:getAll"/>
<Route Url="/prc/:id" Method="GET" Call="com.emr.service.Physician:getPhy"/>
<Route Url="/prc/add" Method="POST" Call="com.emr.service.Physician:addPhy"/>
<Route Url="/prc/upd/:id" Method="PUT" Call="com.emr.service.Physician:updPhy"/>
<Route Url="/prc/del/:id" Method="DELETE" Call="com.emr.service.Physician:delPhy"/>
</Routes>
}

}

