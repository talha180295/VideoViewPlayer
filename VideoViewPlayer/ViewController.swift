//
//  ViewController.swift
//  VideoViewPlayer
//
//  Created by talha on 02/10/2019.
//  Copyright © 2019 talha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var videoView: VideoViewPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //var url = URL.init(fileURLWithPath: "https://www.youtube.com/watch?v=SeY7qcK8d-s&list=RDqLv4msFH35Y&index=8")
        
        guard let path = Bundle.main.path(forResource: "demo", ofType:"mov") else {
            debugPrint("demo.mov not found")
            return
        }
        self.videoView.configure(videoURL: path)
        self.videoView.isLoop = true
        self.videoView.play()    }
    


}

