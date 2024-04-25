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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
