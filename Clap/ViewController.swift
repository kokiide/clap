//
//  ViewController.swift
//  Clap
//
//  Created by Koki Ide on 2017/04/21.
//  Copyright © 2017 kokiide. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    @IBOutlet var clapPickerView: UIPickerView!
    
        var audioplayer : AVAudioPlayer!
    var soundCount : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let soundFilePath = Bundle.main.path(forResource: "clap", ofType: "wav")!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        //AVAudioPlayerのインスタンス化
        do{
            audioplayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽が読み込めませんでした")
        }
        clapPickerView.delegate = self
        clapPickerView.dataSource = self
    }
    
    @IBAction func playButton(){
        audioplayer.play()
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

