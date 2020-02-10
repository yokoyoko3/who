$(document).on('turbolinks:load', ()=> {

  $('#button3').click(function(e) {
    $("#q_name_cont").val("");
    $("#q_gender_eq").val("");
    $("#q_age_eq").val("");
    $("#q_body_eq").val("");
    $("#q_height_eq").val("");
    $("#q_hair_eq").val("");
    $("#q_characters_chara_start").val("");
  })
})