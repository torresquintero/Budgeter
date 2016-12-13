//
//  ViewController.swift
//  Budgeter
//
//  Created by Alexandra Torresquintero on 11/5/16.
//  Copyright © 2016 YSECS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var clickCount = 0
    var timer = Timer()
    

    @IBAction func securityTapButton(_ sender: Any) {
        clickCount += 1
        
        print(clickCount)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // called every time interval from the timer
    func timerAction() {
        timer.invalidate()
        if clickCount == 4 {
            self.performSegue(withIdentifier: "firstSegue", sender: nil)
        }
        else {
            print("ran out of time")
            fatalError()
        }
    }


}

