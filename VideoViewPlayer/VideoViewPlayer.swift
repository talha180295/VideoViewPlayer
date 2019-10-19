//
//  VideoViewPlayer.swift
//  VideoViewPlayer
//
//  Created by talha on 02/10/2019.
//  Copyright © 2019 talha. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

public class VideoViewPlayer: UIView {

    
    
    var playerLayer: AVPlayerLayer?
    var player: AVPlayer?
    var isLoop: Bool = false
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        // The Main Stuff
    }
    
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    func configure(videoURL: String) {
        
        print("configure")
        player = AVPlayer(url: URL(fileURLWithPath: videoURL))
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.frame = bounds
        playerLayer?.videoGravity = AVLayerVideoGravity.resize
        if let playerLayer = self.playerLayer {
            layer.addSublayer(playerLayer)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(reachTheEndOfTheVideo(_:)), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: self.player?.currentItem)
        
    }
    
    func play() {
        if player?.timeControlStatus != AVPlayer.TimeControlStatus.playing {
            player?.play()
        }
    }
    
    func pause() {
        player?.pause()
        
    }
    
    func stop() {
        player?.pause()
        player?.seek(to: CMTime.zero)
        
        playerLayer?.removeFromSuperlayer()
    }
    
    @objc func reachTheEndOfTheVideo(_ notification: Notification) {
        if isLoop {
            player?.pause()
            player?.seek(to: CMTime.zero)
            player?.play()
        }
    }


}
