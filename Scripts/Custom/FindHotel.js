$("#btnFindHotel").on("click", function (e) {
    window.location.href = "SearchResult.aspx?nat=" + $("#selNationality").val() + "&rt=" + $("#selRoomType").val() + "&coun=" + $("#selCountry").val() + "&chkin=" + $("#checkInDate").val() + "&chkout=" + $("#checkOutDate").val() + "&city=" + $("#selCity").val();
    e.preventDefault();
});

$(document).ready(function () {
    dateInitialization();

    getCountryList();
    getNationalityList();
});

function dateInitialization() {
    $("#checkInDate").datepicker('setDate', new Date());
    $("#checkOutDate").datepicker('setDate', new Date());

    $("#checkInDate").datepicker({
        format: 'mm/dd/yyyy',
        startDate: '01/011850',
        endDate: '12/31/2050'
    });

    $("#checkOutDate").datepicker({
        format: 'mm/dd/yyyy',
        startDate: '01/011850',
        endDate: '12/31/2050'
    });


}

function getCityListAgainstCountry(context) {
    $("#selCity").empty();
    var countryId = $(context).val();
    if (countryId > 0) {
        $.ajax({
            url: "FindHotel.aspx/GetCitiesAgainstCountry",
            contentType: "application/json",
            data: JSON.stringify({ "countryId": countryId }),
            dataType: "json",
            type: "POST",
            success: function (data) {
                if (data != null && data != undefined) {
                    var json = JSON.parse(data.d.replace(/\'/g, "/'"));
                    if (json != null && json != undefined) {
                        populateSearchResult(json);
                    }
                }
            }
        });
    }
}

function populateSearchResult(result) {
    if (result.CityInfo.length > 0) {
        var optionList = "<option value=0> - Select - </option>";
        for (var i = 0; i < result.CityInfo.length; i++) {
            if (result.CityInfo[i].Name != "") {
                optionList = optionList + "<option value=" + result.CityInfo[i].CityCode + ">" + result.CityInfo[i].Name.replace("/'", "'") + "</option>";
            }
        }
        $("#selCity").append(optionList);
    }
}

function getCountryList() {


    $.ajax({
        url: "FindHotel.aspx/GetCountryList",
        contentType: "application/json",
        data: JSON.stringify({}),
        dataType: "json",
        type: "POST",
        success: function (data) {
            if (data != null && data != undefined) {
                var json = JSON.parse(data.d.replace(/\'/g, "/'"));
                if (json != null && json != undefined) {
                    populateCountryList(json);
                }
            }
        }
    });

}

function populateCountryList(result) {

    var optionList = "";
    $.each(result, function (index, item) {
        if (item.Code != null && item.Code != undefined) {
            optionList = optionList + "<option value=" + item.Code + ">" + item.Name.replace("/'", "'") + "</option>";
        }
    });

    $("#selCountry").append(optionList);

}

function getNationalityList() {


    $.ajax({
        url: "FindHotel.aspx/GetNationalityList",
        contentType: "application/json",
        data: JSON.stringify({}),
        dataType: "json",
        type: "POST",
        success: function (data) {
            if (data != null && data != undefined) {
                var json = JSON.parse(data.d.replace(/\'/g, "/'"));
                if (json != null && json != undefined) {
                    populateNationalityList(json);
                }
            }
        }
    });

}

function populateNationalityList(result) {

    var optionList = "";

    for (var i = 0; i < result.NationalitiesInfo.length; i++) {
        if (result.NationalitiesInfo[i].Nationality != "") {
            optionList = optionList + "<option value=" + result.NationalitiesInfo[i].Code + ">" + result.NationalitiesInfo[i].Nationality.replace("/'", "'") + "</option>";
        }
    }
    $("#selNationality").append(optionList);
}

