Class com.emr.controller.Patient Extends %CSP.REST
{

Parameter CHARSET = "utf-8";

Parameter CONTENTTYPE = "application/json";

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/pat/all" Method="GET" Call="com.emr.service.Patient:getAll"/>
<Route Url="/pat/:id" Method="GET" Call="com.emr.service.Patient:getPat"/>
<Route Url="/pat/add" Method="POST" Call="com.emr.service.Patient:addPat"/>
<Route Url="/pat/upd/:id" Method="PUT" Call="com.emr.service.Patient:updPat"/>
<Route Url="/pat/del/:id" Method="DELETE" Call="com.emr.service.Patient:delPat"/>
</Routes>
}

}
