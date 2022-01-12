//= require active_admin/base
function state(){
  var request = "/admin/areas/state_from_country?country="+ $('#area_country').val();
  // debugger
  var aj = $.ajax({
    url: request,
    type: 'get',
    data: $(this).serialize()
  }).done(function (data) {
    // console.log("clicked")
    change_state(data);
  }).fail(function (data) {
    console.log('AJAX request has FAILED');
  });
}


function change_state(data) {
    $("#area_state").empty();
    $("#area_state").append('<option> </option>');
    for(i = 0;i<data.length;i++){
      console.log(i)
      console.log(data)
        $("#area_state").append(
          '<option>' + data[i] + '</option>'
        );
    }
};


function city(){
    var request = "/admin/areas/city_from_state?state="+ $('#area_state').val();

    var aj = $.ajax({
        url: request,
        type: 'get',
        data: $(this).serialize()
    }).done(function (data) {
         change_city(data);
    }).fail(function (data) {
         console.log('AJAX request has FAILED');
    });
};

function change_city(data) {
    $("#area_city").empty();
    $("#area_city").append('<option> </option>');
    for(i = 0;i<data.length;i++){
      console.log(i)
      console.log(data)
        $("#area_city").append(
          '<option>' + data[i] + '</option>'
        );
    }
};

$(document).on('change','#area_country', function () {
    
   state();
});

$(document).on('change','#area_state', function () {
   city();
});

