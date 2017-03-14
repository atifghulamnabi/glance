<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="SearchResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">


        <div class="container bgLightGray">
            <br>
            <div class="row">
                <div class="col-md-3">
                    <div class="lBlock padding15 marginB5 bgWhite">
                        <span id="searchResultCount" class="glyphicon glyphicon-search marginR5 cPurple"></span>


                    </div>

                    <div class="lBlock padding15 bgWhite clearfix cursorPointer" onclick="hslBlock('priceBlock', 'pricePlusMinus')">
                        <strong>Price</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="pricePlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite" id="priceBlock" style="display: none;">
                        Widget Goes here !
                    </div>

                    <div class="lBlock padding15 marginT5 bgWhite clearfix cursorPointer" onclick="hslBlock('ratingBlock', 'ratingPlusMinus')">
                        <strong>User Rating</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="ratingPlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite" id="ratingBlock" style="display: none;">

                        <div>
                            <label>5.0</label>
                            <input type="checkbox" id="chkRatingLessThanOrEqualTo5" value="5.0" onchange="javascrit:leftMenuFilters(this)"/>
                        </div>
                         <div>
                            <label>4.0</label>
                            <input type="checkbox" id="chkRatingLessThanOrEqualTo4" value="4.0" onchange="javascrit:leftMenuFilters(this)"/>
                        </div>
                        <div>
                            <label>3.0</label>
                            <input type="checkbox" id="chkRatingLessThanOrEqualTo3" value="3.0" onchange="javascrit:leftMenuFilters(this)"/>
                        </div>
                        <div>
                            <label>2.0</label>
                            <input type="checkbox" id="chkRatingLessThanOrEqualTo2" value="2.0" onchange="javascrit:leftMenuFilters(this)"/>
                        </div>
                        <div>
                            <label>1.0</label>
                            <input type="checkbox" id="chkRatingLessThanOrEqualTo1" value="1.0" onchange="javascrit:leftMenuFilters(this)"/>
                        </div>
                        
                    </div>

                  <%--  <div class="lBlock padding15 marginT5 bgWhite clearfix cursorPointer" onclick="hslBlock('accomodationBlock', 'accomodationPlusMinus')">
                        <strong>Accomodation Type</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="accomodationPlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite" id="accomodationBlock" style="display: none;">
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="all" />
                            <span class="marginL5">ALL</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="hotel" />
                            <span class="marginL5">HOTEL</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="resort" />
                            <span class="marginL5">RESORT</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="breakfast" />
                            <span class="marginL5">BED & BREAKFAST</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="condo" />
                            <span class="marginL5">CONDO</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="residence" />
                            <span class="marginL5">RESIDENCE</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="house" />
                            <span class="marginL5">GUEST HOUSE</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <button class="btn btn-primary font-11">More</button>
                    </div>

                    <div class="lBlock padding15 marginT5 bgWhite clearfix cursorPointer" onclick="hslBlock('amenitiesBlock', 'amenitiesPlusMinus')">
                        <strong>Amnities</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="amenitiesPlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite" id="amenitiesBlock" style="display: none;">
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="bathroom" />
                            <span class="marginL5">BATHROOM</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="cable" />
                            <span class="marginL5">CABLE</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="ac" />
                            <span class="marginL5">AC</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="bar" />
                            <span class="marginL5">MINI BAR</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="wifi" />
                            <span class="marginL5">WIFI</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="pets" />
                            <span class="marginL5">PETS ALLOWED</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="service" />
                            <span class="marginL5">ROOM SERVICE</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <button class="btn btn-primary font-11">More</button>
                    </div>

                    <div class="lBlock padding15 marginT5 bgWhite clearfix cursorPointer" onclick="hslBlock('languageBlock', 'languagePlusMinus')">
                        <strong>Host Language</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="languagePlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite" id="languageBlock" style="display: none;">
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="english" />
                            <span class="marginL5">ENGLISH</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="espanol" />
                            <span class="marginL5">ESPANOL</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="portugues" />
                            <span class="marginL5">PORTUGUES</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="francais" />
                            <span class="marginL5">FRANCAIS</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="suomi" />
                            <span class="marginL5">SUOMI</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="italiano" />
                            <span class="marginL5">ITALIANO</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <div class="selectBlock bgLightGray marginB5 padding15 font-11">
                            <input type="checkbox" checked name="all" id="sign" />
                            <span class="marginL5">SIGN LANGUAGE</span>
                            <span class="label label-info pull-right">722</span>
                        </div>
                        <button class="btn btn-primary font-11">More</button>
                    </div>

                    <div class="lBlock padding15 marginT5 bgWhite clearfix cursorPointer" onclick="hslBlock('searchBlock', 'searchPlusMinus')">
                        <strong>Modify Search</strong>
                        <span class="glyphicon glyphicon-plus-sign iShow bgWhite cPurple pull-right" id="searchPlusMinus"></span>
                    </div>
                    <div class="lBlock padding15 bgWhite marginB5 font-12" id="searchBlock" style="display: none;">
                        <div>
                            Destination
                        </div>
                        <div>
                            <input type="text" class="msInput bgLightGray" placeholder="New York" />
                        </div>
                        <br>
                        <div>
                            Check In
                        </div>
                        <div class="input-group">
                            <input type="text" class="msInput bgLightGray" placeholder="Calender Whidget Here !!!">
                            <div class="input-group-btn">
                                <button class="btnCalendar cWhite bgPurple" type="submit">
                                    <i class="glyphicon glyphicon-calendar"></i>
                                </button>
                            </div>
                        </div>
                        <br>
                        <div>
                            Check Out
                        </div>
                        <div class="input-group">
                            <input type="text" class="msInput bgLightGray" placeholder="Calender Whidget Here !!!">
                            <div class="input-group-btn">
                                <button class="btnCalendar cWhite bgPurple" type="submit">
                                    <i class="glyphicon glyphicon-calendar"></i>
                                </button>
                            </div>
                        </div>
                        <br>
                        <button class="btn btn-success btnSuccess square">Search Again</button>
                    </div>--%>
                </div>
                <div id="searchResult" class="col-md-9">
                    <div class="padding15 bgWhite sMarginT ssMarginT marginB30">
                        <div class="row">
                            <div class="col-sm-9 centeringSmallest">
                                <div class="pull-left dropping sMarginAuto marginR15 bold">Sort results by:</div>
                                <div onclick="javascrit:sortResultSet('span#hotelName');" class="pull-left dropping sMarginAuto ssMarginB styled-select bgLightGray marginR5">
                                    Name
                                </div>
                                <div onclick="javascrit:sortResultSet('span#hotelTotalCharges');" class="pull-left dropping sMarginAuto styled-select bgLightGray marginR5">
                                    Price
                                </div>
                                <div onclick="javascrit:sortResultSet('div#hotelRating');" class="pull-left dropping sMarginAuto styled-select bgLightGray marginR5">
                                    Rating
                                </div>
                                <div class="pull-left dropping sMarginAuto styled-select bgLightGray marginR5">
                                    <select>
                                        <option>Popularity</option>
                                    </select>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-sm-3 centeringSmallest">
                                <span class="bgLightGray gType dropping ssDropping cursorPointer glyphicon glyphicon-th pull-right marginL5"></span>
                                <span class="bgLightGray gType dropping ssDropping cursorPointer glyphicon glyphicon-th-large pull-right marginL5"></span>
                                <span class="bgLightGray gType dropping ssDropping cursorPointer glyphicon glyphicon-menu-hamburger pull-right marginL5"></span>
                            </div>
                        </div>
                    </div>
                    <div id="searchResultItem" class="marginB30" style="display: none;">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="bgWhite clearfix">
                                    <div class="col-sm-4">
                                        <div class="marginLM15 sMarginAuto ssMarginAuto overflowHidden">
                                            <img id="hotelThumbnailImage" src="Images/Custom/1.png" class="fullWidth" />
                                        </div>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="textBlock sMarginAuto ssMarginAuto padding15">
                                            <div class="upperBlock">
                                                <div class="block1 sFullWidth ssFullWidth sborderNone ssborderNone">
                                                    <div class="pull-left dropping ssDropping">
                                                        <span id="hotelName" class="bold">Hotel Hilton and Resorts</span>
                                                        <br>
                                                        <span class="glyphicon glyphicon-map-marker cPurple font-12"></span>
                                                        <span id="hotelLocation" class="font-12">Bastille, Paris france</span>
                                                    </div>
                                                    <div class="pull-right dropping sMarginT cGray">
                                                        <span class="fa fa-television specIcons round marginL5 pull-right dropping"></span>
                                                        <span class="fa fa-cutlery specIcons round marginL5 pull-right dropping"></span>
                                                        <span class="fa fa-hotel specIcons round marginL5 pull-right dropping"></span>
                                                        <span class="fa fa-wifi specIcons round marginL5 pull-right dropping"></span>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div id="" class="block2 sFullWidth ssFullWidth sborderNone ssborderNone text-center">
                                                    Rating: <span id="hotelRating"></span>
                                                </div>
                                            </div>
                                            <div class="upperBlock">
                                                <div id="hotelDetail" class="block1 sborderNone sFullWidth ssborderNone ssFullWidth paddingT10 textHeight overflowHidden">
                                                    
                                                </div>
                                                <div class="block2 sborderNone sFullWidth ssborderNone ssFullWidth paddingT10 text-center">
                                                    <span class="font-11">AVG/NIGHT</span>
                                                    <br>
                                                    <span id="hotelTotalCharges" class="cSuccess"></span>
                                                    <br>
                                                    <button class="btn btn-primary font-11 square">SELECT</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>





                    <%--<button class="btn btn-success square fullWidth marginB30">LOAD MORE LISTINGS</button>--%>
                </div>
            </div>
        </div>
        <!--inquery form starts here -->
        <div class="row">
            <div class="col-sm-12">
                <div id="partners">
                    <h2>Contact Us </h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="well well-sm">
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">
                                        Name</label>
                                    <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="email">
                                        Email Address</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                        </span>
                                        <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="subject">
                                        Subject</label>
                                    <select id="subject" name="subject" class="form-control" required="required">
                                        <option value="na" selected="">Choose One:</option>
                                        <option value="service">General Customer Service</option>
                                        <option value="suggestions">Suggestions</option>
                                        <option value="product">Product Support</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">
                                        Message</label>
                                    <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                        placeholder="Message"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                                    Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- inquery form ends here -->

        <div>
            <img src="Images/Custom/ad.jpg" class="img-responsive" />
        </div>

        <br />


    </div>


    <script src="Scripts/Custom/Search.js"></script>
</asp:Content>
