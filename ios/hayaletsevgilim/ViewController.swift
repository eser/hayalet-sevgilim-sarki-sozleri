//
//  ViewController.swift
//  hayaletsevgilim
//
//  Created by Ömer Hamid Kamışlı on 22.06.2022.
//

import UIKit
import AVFoundation
import youtube_ios_player_helper

class ViewController: UIViewController, YTPlayerViewDelegate {
    private let gradient = CAGradientLayer()
    var timer = Timer()
    @IBOutlet weak var playerView: YTPlayerView!
    @IBOutlet weak var lyricTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animateGradient()
        playHayaletSevgilim()
        playerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func checkTheLyric() {
        playerView.currentTime { data,err  in
            let currentTime = Double(data)
            let string = lyricHandler(time: currentTime)
            if let textfieldText = self.lyricTextLabel.text, textfieldText != string {
                self.lyricTextLabel.text = string
                self.lyricTextLabel.fadeIn()
            }
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            self?.checkTheLyric()
        })
    }
    
    private func playHayaletSevgilim() {
        let playerVars = ["playsinline" : 1,
                            "autoplay" : 1,
                            "showinfo" : 0,
                            "rel" : 0,
                            "controls" : 0]
        playerView.load(withVideoId: "MGGV0P_ZmNs", playerVars: playerVars)
    }
    
    private func animateGradient() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            // create the gradient layer
            self.gradient.frame = self.view.frame
            self.gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
            self.gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
            self.gradient.colors = [UIColor.white.cgColor, UIColor.softPrimaryColor.cgColor, UIColor.primaryColor.cgColor]
            self.gradient.locations =  [1, 0.5, 0, 0.5, 1.5]
            
            let animation = CABasicAnimation(keyPath: #keyPath(CAGradientLayer.colors))
            animation.fromValue = [UIColor.softPrimaryColor.cgColor,UIColor.softPrimaryColor.cgColor, UIColor.primaryColor.cgColor]
            animation.toValue = [UIColor.primaryColor.cgColor, UIColor.softPrimaryColor.cgColor, UIColor.primaryColor.cgColor]
            animation.duration = 1
            animation.autoreverses = true
            animation.repeatCount = .infinity
            
            self.gradient.add(animation, forKey: nil)
            self.view.layer.insertSublayer(self.gradient, at: 0)
        }
    }
}

