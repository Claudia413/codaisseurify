//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function createSong(title) {

  var song = $('<h4></h4>')
    .html(title);

  //var rating = $();

  var row = $('<div class="row"></div>')
    .append($('<div class="col-sm-7 col-sm-offset-2 song-line">').append(song))
    .append($('<div class="col-sm-1 song-line">'));//.append(label));

  $("#songs_of_artist").append( row );
}

function updateSongCount() {
  $("#total-count").html($(".song-line").length);
}

function submitSong(event) {
  event.preventDefault();

  var title = $("#new-song").val();

  createSong(title);

  $("#new-song").val(null);
  updateSongCount();
}

$( document ).ready(function() {

  updateSongCount();

});

$("form").bind('submit', submitSong);
