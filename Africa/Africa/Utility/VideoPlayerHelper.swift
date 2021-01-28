//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Christopher Bartling on 1/28/21.
//

import AVKit
import Foundation

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileFormat: String) -> AVPlayer {
    if Bundle.main.url(forResource: filename, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
