//
//  ViewController.swift
//  hayaletsevgilim
//
//  Created by Ömer Hamid Kamışlı on 22.06.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    private let gradient = CAGradientLayer()
    var AudioPlayer = AVAudioPlayer()
    var timer = Timer()
    @IBOutlet weak var lyricTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        animateGradient()
        playHayaletSevgilim()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func checkTheLyric() {
        let currentTime1 = Double(AudioPlayer.currentTime)
        let string = lyricHandler(time: currentTime1)
        if let textfieldText = lyricTextLabel.text, textfieldText != string {
            lyricTextLabel.text = string
            lyricTextLabel.fadeIn()
        }
    }
    
    private func playHayaletSevgilim() {
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "hayalet-sevgilim", ofType: "mp3")!)
        AudioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        AudioPlayer.prepareToPlay()
        AudioPlayer.numberOfLoops = -1
        AudioPlayer.play()
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            self?.checkTheLyric()
        })
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

