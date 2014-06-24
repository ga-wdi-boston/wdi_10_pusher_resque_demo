$(document).ready(function() {
  var pusher = new Pusher('66c9253da5412c55d026');
  var channel = pusher.subscribe('test_channel');
  channel.bind('my_event', function(data) {
    $tweetDiv = $('<div>').text(data.tweet);
    $('.tweets').append($tweetDiv);
  });
})

