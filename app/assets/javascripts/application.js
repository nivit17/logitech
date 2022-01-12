// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require active_admin/searchable_select

// function state(){
//   var request = "/admin/area/state_from_country?country="+ $('#area_country').val();
//   debugger
//   var aj = $.ajax({
//     url: request,
//     type: 'get',
//     data: $(this).serialize()
//   }).done(function (data) {
//     // console.log("clicked")
//     change_state(data);
//   }).fail(function (data) {
//     console.log('AJAX request has FAILED');
//   });
// };


// function change_state(data) {
//     $("#area_state").empty();
//     $("#area_state").append('<option> </option>');
//     for(i = 0;i<data.length;i++){
//       console.log(i)
//       console.log(data)
//         $("#area_state").append(
//           '<option>' + data[i] + '</option>'
//         );
//     }
// };


// $(document).on('change','#area_country', function () {
    
//    state();
// });

// $(document).on('change','#area_country', function () {
    
//    alert('hello');
// });

