using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string getHotelSearchResult(string cityId, string countryId, DateTime checkInDate, DateTime checkOutDate, string roomType, string nationality)
    {
        string url = "http://alpha.24x7rooms.com/ws/index.php";
        string method = "POST";        
        string data = "action=hotel_search&checkin_date=" + checkInDate + "&checkout_date=" + checkOutDate + "&sel_country=" + countryId + "&sel_city=" + cityId + "&chk_ratings=3.0,4.0,5.0&sel_nationality=" + nationality + "&sel_currency=AED&availableonly=0&number_of_rooms=1&roomDetails=[{%22numberOfAdults%22:2}]&gzip=no&timeout=30&static_data=1&limit_hotel_room_type=";
        SearchAPIController searchAPIController = new SearchAPIController(url, method, data);
        return searchAPIController.GetResponse();
    }
}