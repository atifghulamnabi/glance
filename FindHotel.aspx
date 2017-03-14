<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="FindHotel.aspx.cs" Inherits="FindHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/bootstrap-datepicker.js"></script>
    <link href="css/datepicker.css" rel="stylesheet" />
    
    <div class="banner">
        <img src="images/banners/1. BOOK A HOTEL - Web banner 2017.jpg" />
    </div>
    <div class="container">

        <div class="content">
            <h2>Book a Hotel </h2>
            <p>
                Grab a joy with a consistent travel involvement before or after you book a flight on glanceworldtravels.com by booking your lodging with us. We offer you incredible rates with wide range of   lodgings and investment properties in more than 100 nations around the globe.<br />
                <br />
                You can book a hotel before obtaining your flight or add one to your schedule later through Manage a booking. You can even make a hotel reservation without booking a flight.
                <br />
                Why would it be a good idea for me to book an inn through glanceworldtravels.com?
            </p>
            <ul>
                <li>No reserving or card installment expenses </li>
                <li>All day, every day contact focus bolster, accessible in 42 dialects</li>
                <li>Day by day offers and rates to suit each financial plan </li>
                <li>Straightforward booking process and secure online installment framework</li>
            </ul>
            <br />
            <br />




            <form class="form-horizontal">
                <div class="form-group has-feedback">
                    <label class="control-label col-sm-2 col-sm-offset-2" for="country">Country:</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="selCountry" placeholder="Room Type" onchange="javascript:getCityListAgainstCountry(this);">
                            <option value="0">- Select -  </option>                            
                        </select>
                        <span class="form-control-feedback"></span>
                    </div>
                    <label class="control-label col-sm-1 col-sm-offset-0" for="country">City:</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="selCity" placeholder="Room Type">
                            <option value="0">- Select -  </option>                            
                        </select>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label class="control-label col-sm-2 col-sm-offset-2" for="checkin">Check-in:</label>
                    <div id="checkInDateContainer" class="col-sm-5 input-group date">
                        <input class="form-control" class="form-control" id="checkInDate" placeholder="Check-in" type="text" />
                        <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label class="control-label col-sm-2 col-sm-offset-2" for="checkout">Check-out:</label>
                    <div id="checkOutDateContainer" class="col-sm-5 input-group date">
                        <input type="text" class="form-control" id="checkOutDate" placeholder="Check-out">
                        <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label class="control-label col-sm-2 col-sm-offset-2" for="Room">Room Type:</label>
                    <div class="col-sm-2">
                        <select id="selRoomType" class="form-control" id="Room" placeholder="Room Type">
                            <option value="">-Select- </option>
                            <option value="1">Single</option>
                            <option value="2">Double</option>
                            <option value="3">Double + 1 child</option>
                            <option value="4">Twin</option>
                            <option value="5">Twin + 1 child</option>
                            <option value="6">Triple</option>
                            <option value="8">Quad</option>
                            <option value="9">Double + 2 Children</option>
                            <option value="10">Twin + 2 children</option>
                        </select>
                        <span class="form-control-feedback"></span>
                    </div>
                    <label class="control-label col-sm-1 col-sm-offset-0" for="Nationality">Nationality:</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="selNationality" placeholder="Nationality">
                            <option value="">- Select -  </option>
                            
                        </select>
                        <span class="form-control-feedback"></span>
                    </div>
                </div>

                <%--<input type="button" id="btnFindHotel" class="btn btn-primary" value="Find Hotel"/>--%>
                <button id="btnFindHotel" class="btn btn-primary" >Find Hotel </button>

            </form>


            <br />
            <br />
            <div class="row">
                <div class="col-sm-6 remaining">
                    <img src="images/banners/2. book a flight - web abnner.jpg" />
                    <div class="detail">
                        <font>Book a flight</font>
                        <a class="btn btn-info" href="bookFlight.html">Explore > </a>
                    </div>
                </div>
                <div class="col-sm-6 remaining">
                    <img src="images/banners/3. BOOK A CAR - web abnner 2017.jpg" />
                    <div class="detail">
                        <font>Book a car</font>
                        <a class="btn btn-info" href="bookCar.html">Explore > </a>
                    </div>
                </div>

            </div>
        </div>
        <script src="Scripts/Custom/FindHotel.js"></script>
</asp:Content>
