//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var url = window.location.href;
var currentArtistId = url.substring(url.lastIndexOf("/") + 1);

function updateSongCount() {
  $("#total-count").html($(".song-line").length);
}

function createSong(title, release_date) {
  updateSongCount();

  var song = $("<h4></h4>").html(title + " (" + release_date + ")");
  var newSong = {
    title: title,
    release_date: release_date
  };

  var newSongLine = $(
    '<div class="col-sm-7 col-sm-offset-2 song-line">'
  ).append(song);

  var row = $('<div class="row song-info"></div>')
    .append(newSongLine)
    .append($('<div class="col-sm-1 song-line-rating">')); //.append(label));

  $("#songs_of_artist").append(row);

  $.ajax({
    type: "POST",
    url: "/artists/" + currentArtistId + "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  });
}

function submitSong(event) {
  event.preventDefault();

  var year = $("#song_release_date_1i").val();
  var month = $("#song_release_date_2i").val();
  var day = $("#song_release_date_3i").val();

  if (day.length < 2) {
    day = "0" + day;
  }
  if (month.length < 2) {
    month = "0" + month;
  }

  var release_date = year + "-" + month + "-" + day;
  var title = $("#new-title").val();

  createSong(title, release_date);

  $("#new-song").val(null);
  updateSongCount();
}

function deleteAllSongs(event) {
  event.preventDefault();

  $.each($(".song-info"), function(index, songRow) {
    $songRow = $(songRow);
    songId = $(songRow).data('id');
    deleteSingleSong(songId);
  });
}

function deleteSingleSong(event) {
  event.preventDefault();
  var songRow = $(this).parent();
  var songId = $(this).data("id");
  $.ajax({
    type: "DELETE",
    url: "/artists/" + currentArtistId + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  }).then(function(data) {
    $(songRow).remove();
    updateSongCount();
  });
}

function DeleteAllSongs(event) {
  event.preventDefault();
  $.when($(".song-line").remove()).then(updateSongCount);
}

$(document).ready(function() {
  $("form").bind("submit", submitSong);
  $(".delete-this-song").bind("click", deleteSingleSong);
  $("#delete-all-songs").bind("click", deleteAllSongs);
  updateSongCount();
});
