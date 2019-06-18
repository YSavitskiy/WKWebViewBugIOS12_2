//
//  HtmlView.swift
//  WKWebViewBug
//
//  Created by Yuriy Savitskiy on 17/06/2019.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//

import Foundation

class HtmlView {
    static func getHtml(forID id: String) -> String {
        return """
        <html>
        <head>
        
        <meta id='mw-viewport' name='viewport' content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0"/>
        
        <style type='text/css'>
        
        html {
            height: 100%;
            width: 100%;
        }
        
        body {
            margin: 0;
            background-color: black;
            width: 100%;
            height: 100%;
        }
        
        .row {
            float: top;
            padding: 10px;
        }
        
        .top {
            height: 70%;
            width: 100%;
        }
        
        .bottom {
            height: 30%;
            width: 100%;
        }
        
        #player {
            background-color: black;
            width: 95%;
            height: 95%;
        }
        
        slideContainer {
            width: 100%;
        }
        
        .slider {
            width: 90%;
            height: 50px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }
        
        .slider::-webkit-slider-thumb {
            width: 50px;
            height: 50px;
            background: #0433FF;
        }
        
        .slider::-moz-range-thumb {
            width: 50px;
            height: 50px;
            background: #4CAF50;            
        }
        
        </style>
        </head>
        
        <body>
        
        <div class="column">
            <div class="row top">
                <div id='player'></div>
            </div>
        </div>
        <div align="center" class="row bottom">
            <p style="color:white;" >Move the slider (many times)<br/>to load unbuffered sections of video</p>
            <div align="center" class="slideContainer">
                <input type="range" min="0" max="100" value="0" class="slider" id="myRange">
            </div>
        </div>
        </div>
        
        <script>
        var tag = document.createElement('script');
        tag.src = "https://www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
        
        var player;
        var slider = document.getElementById("myRange");
        
        slider.oninput = function() {
            if (player) {
                var needTime = this.value * player.getDuration() / 100.0;
                player.seekTo(needTime, true);
            }
        }
        
        function onYouTubeIframeAPIReady() {
            player = new YT.Player('player', {
                videoId: '\(id)',
                events: {
                    'onReady': onPlayerReady
                },
                playerVars: {
                    'autoplay': 1,
                    'controls': 0,
                    'enablejsapi': 1,
                    'rel': 0,
                    'fs': 1,
                    'modestbranding': 1,
                    'disablekb': 1,
                    'playsinline': 1,
                    'iv_load_policy' : 1
                }
            });
        }
        
        function onPlayerReady(event) {
            event.target.playVideo();
        }
              
        </script>
        </body>
        </html>
        """
    }
}
