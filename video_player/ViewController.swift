//
//  ViewController.swift
//  video_player
//
//  Created by Іван Штурхаль on 31.01.2024.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    private func playVideo() {
        // створити шлях до відео
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            debugPrint("test.mp4 not found")
            
            return
        }
        // створити плеєр з позначенням шляху до відео
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        // створити вікно плеєра
        let playerController = AVPlayerViewController()
        // позначити у вікні плеєра плеєр з щляхом до відео
        playerController.player = player
        // презентувати на екран вікно плеєру, та запустити його
        present(playerController, animated: true) {
            player.play()
        }
    }
    
   
    
}

