using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FindHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string GetCitiesAgainstCountry(int countryId)
    {
        string url = "http://alpha.24x7rooms.com/ws/index.php";
        string method = "POST";
        string data = "action=getcity&country=" + countryId + "&gzip=no";
        SearchAPIController searchAPIController = new SearchAPIController(url, method, data);
        return searchAPIController.GetResponse();
    }

    [WebMethod]
    public static string GetCountryList()
    {
        string url = "http://alpha.24x7rooms.com/ws/index.php";
        string method = "POST";
        string data = "action=get_country&gzip=no";
        SearchAPIController searchAPIController = new SearchAPIController(url, method, data);
        return searchAPIController.GetResponse();
    }

    [WebMethod]
    public static string GetNationalityList()
    {
        string url = "http://alpha.24x7rooms.com/ws/index.php";
        string method = "POST";
        string data = "action=get_nationalities&gzip=no";
        SearchAPIController searchAPIController = new SearchAPIController(url, method, data);
        return searchAPIController.GetResponse();
    }
}