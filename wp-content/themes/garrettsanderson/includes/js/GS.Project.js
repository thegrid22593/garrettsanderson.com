'use strict';

var GS = GS || {};

GS.Project = (function () {
  var $projectVideoPlayer = $('.project-video-player');

  var init = function () {
    if ($projectVideoPlayer.length > 0) {
      getVideos();
    }
  };

  var getVideos = function () {
    $.ajax({
      type: 'GET',
      dataType: 'json',
      url: 'https://api.vimeo.com/me/videos?access_token=e2251ba8ce08942fec8e4afcb7c8f066',
      success: videos => {
        videos = videos.data;
        initPlayer();
      },
    });
  };

  var initPlayer = function () {
    var vimeoVideoId = $projectVideoPlayer.data('vimeo-video-id');

    const options = {
      id: vimeoVideoId,
      loop: false,
    };

    var player = new Vimeo.Player($projectVideoPlayer, options);

    player
      .setColor('#00aaff')
      .then(function () {
        player
          .loadVideo(videoID)
          .then(function () {
            player.play();
            player.setVolume(0);
          })
          .catch(error => {
            console.log(error);
          });
      })
      .catch(error => {
        console.log(error);
      });
  };

  return {
    init: init,
    initPlayer: initPlayer,
  };
})();

GS.Project.init();