//
//  ViewController.swift
//  songfromdata
//
//  Created by Brandon Plank on 3/13/21.
//

import Cocoa
import AVFoundation

var player: AVAudioPlayer?

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            print("Song bytes: \(data.count)")
            print("Song size, in KB: \(Double(data.count/1024))")
            let actualdata = Data(bytes: data, count: data.count)
            player = try AVAudioPlayer(data: actualdata)

        } catch let error as NSError {
                print(error.description)
        }
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func okok(_ sender: Any) {
        player!.prepareToPlay()
        player!.play()
    }
    

}

