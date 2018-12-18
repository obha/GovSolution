var baseUrl = 'http://localhost:8080/';

$(document).ready(function () {


    $("#tool-bar").hide();
    
    $("#print-btn").click(function () {
        var doc = printJS('details', 'html')
    })

    $("#mytable").click(function () {
        $(".selectable").click(function () {
            $(".highlight").removeClass("highlight");
            $(this).addClass("highlight");
            $("#tool-bar").show()
            $.ajax({
                type: 'GET',
                url: baseUrl+'rest/inscription/'+$(this).data("value")+'.action',
            }).done(function (data) {
                var res = JSON.parse(data)
                $("#details-view").empty();
                for (var key in  res) {
                    $("#details-view").append(
                        "<tr>" +
                        "<td><strong>" + key + "</strong></td>" +
                        "<td>" + res[key] + "</td>" +
                        "<tr>"
                    )
                }
            })
        })
    });

    $.ajax({
        type: 'GET',
        url: baseUrl+'rest/inscription.action',
        dataType: "text"
    }).done(function (data) {
        var result = JSON.parse(data);
        result.forEach(function (item) {
            $("#mytable tbody").append(
                "<tr class='selectable' data-value='"+item.id+"'>" +
                "<td>"+item.id+"</td>"+
                "<td>"+item.rsFr+"</td>"+
                "<td>"+item.mail+"</td>"+
                "<td>"+item.adresseFr+"</td>"+
                "<td>"+item.resolu+"</td>" +
                "</tr>"
            )
        })
    });

    $('#search-btn').click(function() {
        $.ajax({
            type: 'GET',
            url: baseUrl+'rest/inscription.action',
            dataType: "text"
        }).done(function (data) {

            var filter = {
                rsFr: $("#rs-input").val()
            }

            var res = JSON.parse(data);
            var result = res.filter(function (item) {
                try {
                    for (var key in filter){
                        if (item[key] === undefined ||  item[key] === "" || item[key].indexOf(filter[key]) < 0) {
                            return false
                        }
                    }
                    return true;
                }catch (e) {
                    console.log(e)
                }
            })

            $("#mytable td").remove();

            result.forEach(function (item) {
                $("#mytable tbody").append(
                    "<tr class='selectable' data-value='"+item.id+"'>" +
                        "<td>"+item.id+"</td>"+
                        "<td>"+item.rsFr+"</td>"+
                        "<td>"+item.mail+"</td>"+
                        "<td>"+item.adresseFr+"</td>"+
                        "<td>"+item.resolu+"</td>" +
                    "</tr>"
                )
            })
        })
    });

    $('.datepicker').datepicker({
        format: 'mm/dd/yyyy',
        startDate: '-3d'
    });

    $('.btn-expand-collapse').click(function(e) {
        $('.navbar-primary').toggleClass('collapsed');
    });

})


draw = function (selector, data, keys) {

    $(selector).append('<thead>');
    $(selector).append('<tbody>');

    for(var key in keys){
        $("thead").append("<th>"+keys[key]+"</th>")
    }


    //$(selector).append(head, body);




    /*for (var key in keys){
        row.append("<td>"+item[key]+"</td>");
    }*/


}

var loadData = function () {

}