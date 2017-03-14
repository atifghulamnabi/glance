

var roomTye;
var nationality;
var city;
var country;
var checkInDate;
var checkOutDate;

$(function () {
    roomTye = getParameterByName('rt') == null || getParameterByName('rt') == undefined ? "" : getParameterByName('rt');
    nationality = getParameterByName('nat') == null || getParameterByName('nat') == undefined ? "0" : getParameterByName('nat');
    city = getParameterByName('city') == null || getParameterByName('city') == undefined ? "0" : getParameterByName('city');
    country = getParameterByName('coun') == null || getParameterByName('coun') == undefined ? "0" : getParameterByName('coun');
    checkInDate = getParameterByName('chkin') == null || getParameterByName('chkin') == undefined ? "0" : getParameterByName('chkin');
    checkOutDate = getParameterByName('chkout') == null || getParameterByName('chkout') == undefined ? "0" : getParameterByName('chkout');

    getSearchResult();
});

var pageSize = 10;

function getSearchResult() {
    $.ajax({
        url: "SearchResult.aspx/getHotelSearchResult",
        contentType: "application/json",
        data: JSON.stringify({ "cityId": city, "countryId": country, "checkInDate": checkInDate, "checkOutDate": checkOutDate, "roomType": roomTye, "nationality": nationality }),
        dataType: "json",
        type: "POST",
        success: function (data) {
            if (data != null && data != undefined && data.d != null && data.d != undefined && data.d != "") {
                var json = JSON.parse(data.d.replace(/\'/g, "/'"));

                if (json != null && json != undefined) {
                    populateSearchResult(json);
                }
            }
        }
    });
}

function populateSearchResult(result) {
    $("span#searchResultCount").append(" <strong>" + result.TotalCount + "</strong><span> results found.</span>");
    if (result.HotelList != null && result.HotelList != undefined && result.HotelList.length > 0) {
        for (var i = 0; i < result.HotelList.length; i++) {
            var divToBeCloned = $("#searchResultItem").clone();
            divToBeCloned.attr("id", "searchResultItem_" + result.HotelList[i].HotelId);
            divToBeCloned.find('span#hotelName').text(result.HotelList[i].HotelName == null || result.HotelList[i].HotelName == undefined ? "" : result.HotelList[i].HotelName.replace("/'", "'"));
            divToBeCloned.find("div#hotelDetail").text(result.HotelList[i].ShortDescription == null || result.HotelList[i].ShortDescription == undefined ? "" : result.HotelList[i].ShortDescription.replace("/'", "'"));
            divToBeCloned.find("span#hotelTotalCharges").text(result.HotelList[i].RateCurrencyCode + " " + result.HotelList[i].TotalCharges);
            divToBeCloned.find("img#hotelThumbnailImage").attr("src", result.HotelList[i].ThumbNailUrl);
            divToBeCloned.find("span#hotelLocation").text(result.HotelList[i].Location == null || result.HotelList[i].Location == undefined ? "" : result.HotelList[i].Location.replace("/'", "'"));
            divToBeCloned.find("span#hotelRating").text(result.HotelList[i].PropertyRating);
            divToBeCloned.attr("data-rating", result.HotelList[i].PropertyRating);
            divToBeCloned.addClass("hotel");

            divToBeCloned.show();
            $("div#searchResult").append(divToBeCloned);
        }
        pagination(pageSize, pageSize);
    }
}

function pagination(noOfRecordsTobeShown, step) {

    $show = noOfRecordsTobeShown;
    $hotels = $("div#searchResult>.hotel");


    $update = function () {
        $vis = 0;
        $pos = 0;
        $hotels.each(function (ind, obj) {
            $pos++;
            $(this).css({ "display": ($pos > $show) ? 'none' : 'block' });
            if ($pos <= $show) { $vis++; }
        });

        if ($vis == $hotels.length) {
            $("#btnMore").css({ "display": "none" });
        }
    };

    $update();

    $btnMore = $("<div />").attr({ "id": "btnMore" });
    $btnMore.addClass('btn btn-success square fullWidth marginB30')
    $btnMore.append("Show more");
    $btnMore.click(function () {
        $show = $show + step;
        $update();
    });
    $("div#searchResult").append($btnMore);
}

function hslBlock(id, index) {
    if ($('#' + index).hasClass("glyphicon-plus-sign")) {
        $('#' + index).removeClass("glyphicon-plus-sign");
        $('#' + index).addClass("glyphicon-minus-sign");
    }
    else if ($('#' + index).hasClass("glyphicon-minus-sign")) {
        $('#' + index).removeClass("glyphicon-minus-sign");
        $('#' + index).addClass("glyphicon-plus-sign");
    }

    $("#" + id).slideToggle();
}

function sortResultSet(controlName) {
    var divListToBeSorted = $("div#searchResult .hotel");
    if ($("div#searchResult").data('sort') != null || $("div#searchResult").data('sort') != undefined) {
        if ($("div#searchResult").data('sort').toLowerCase() == "desc") {
            var alphabeticallyOrderedDivs = divListToBeSorted.sort(function (a, b) {
                $("div#searchResult").data('sort', "asc");
                return String.prototype.localeCompare.call($(a).find(controlName).text().toLowerCase(), $(b).find(controlName).text().toLowerCase());
            });
        } else {
            var alphabeticallyOrderedDivs = divListToBeSorted.sort(function (a, b) {
                $("div#searchResult").data('sort', "desc");
                return String.prototype.localeCompare.call($(b).find(controlName).text().toLowerCase(), $(a).find(controlName).text().toLowerCase());
            });
        }
    } else {
        var alphabeticallyOrderedDivs = divListToBeSorted.sort(function (a, b) {
            $("div#searchResult").data('sort', "asc");
            return String.prototype.localeCompare.call($(a).find(controlName).text().toLowerCase(), $(b).find(controlName).text().toLowerCase());
        });
    }
    $("div#searchResult .hotel").remove();
    $("div#searchResult #btnMore").remove();

    $("div#searchResult").append(alphabeticallyOrderedDivs);
    pagination(pageSize, pageSize);
}

function getParameterByName(name) {

    var url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function leftMenuFilters(selectedRating) {
    //$('#ratingBlock :checkbox').prop('checked', false);
    //$(selectedRating).prop('checked', true);

    //$("div#searchResult .hotel").find("[data-rating!='" + $(selectedRating).val() + "']").hide();
    //$("div#searchResult .hotal").find("[data-rating='" + $(selectedRating).val() + "']").show();


    ////$("div#searchResult .hotel").remove();
    //$("div#searchResult #btnMore").remove();

    ////$("div#searchResult").append(result);
    //pagination(pageSize, pageSize);
}