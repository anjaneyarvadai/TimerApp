//
//  ViewController.swift
//  TimerApp
//
//  Created by Manikandan Mohan on 1/31/16.
//  Copyright © 2016 M2 Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0

    @IBOutlet var timerLabel: UILabel!
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    func increaseTimer() {
        time = time+1
        timerLabel.text = String(time)
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

