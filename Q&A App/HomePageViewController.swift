//
//  HomePageViewController.swift
//  Q&A App
//
//  Created by Labe on 2024/4/19.
//

import UIKit
import AVFoundation

class HomePageViewController: UIViewController {

    var player:AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playMusic()
    }
    //播放音樂
    func playMusic() {
        if let url = Bundle.main.url(forResource: "forestMusic", withExtension: "mp3") {
            let playerItem = AVPlayerItem(url: url)
            player = AVPlayer(playerItem: playerItem)
            player?.play()
        } else {
            print("無法載入音樂")
        }
    }

    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // 每次返回到這個頁面時重新播放音樂
            player?.seek(to: CMTime.zero)  // 將播放器重置到起始點
            player?.play()  // 播放音樂
        }
}
