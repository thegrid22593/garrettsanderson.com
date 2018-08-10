'use strict';

var GS = GS || {};

GS.Project = (function () {

    var $projectVideoPlayer = $('.project-video-player');

    var init = function () {
        getVideos();
    };

    var getVideos = function () {
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "https://api.vimeo.com/me/videos?access_token=e2251ba8ce08942fec8e4afcb7c8f066",
            success: videos => {
                videos = videos.data;
                console.log(videos);

                console.log($projectVideoPlayer);

                initPlayer();

            }
        });
    }

    var initPlayer = function () {

        var vimeoVideoId = $projectVideoPlayer.data('vimeo-video-id');

        const options = {
            id: vimeoVideoId,
            loop: false
        };

        var player = new Vimeo.Player($projectVideoPlayer, options);

        player
            .setColor("#00aaff")
            .then(function () {
                player
                    .loadVideo(videoID)
                    .then(function () {
                        player.play();
                    })
                    .catch(error => {
                        console.log(error);
                    });
            })
            .catch(error => {
                console.log(error);
            });

        player.setVolume(1);

        $(".project-overlay, .video-close").on("click", function () {
            player.pause();
            $vimeoPlayerContainer.removeClass("active");
            $overlay.removeClass("active");
            $closeIcon.removeClass("active");
        });
    };

    return {
        init: init,
        initPlayer: initPlayer,
    };
})();

GS.Project.init();