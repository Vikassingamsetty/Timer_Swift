//
//  ViewController.swift
//  Timer_Concept
//
//  Created by Srans022019 on 29/04/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayTimer: UILabel!
    
    var timer = Timer()
    var startTime = 210
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayTimer.text = String(startTime)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func increaseTime() {
        
        
        if startTime > 0 {
            
            startTime -= 1
            displayTimer.text = String(startTime)
            
        }else{
            
            timer.invalidate()
        }
        
    }
    

    @IBAction func onTapPause(_ sender: Any) {
        
        timer.invalidate()
        
    }

    
    @IBAction func onTapPlay(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(increaseTime), userInfo: nil, repeats: true)
        
    }
    

    @IBAction func onTapDecTen(_ sender: Any) {
        
        if startTime > 10 {
            
            startTime -= 10
            displayTimer.text = String(startTime)
        }
        
    }
    
    
    @IBAction func onTapReset(_ sender: Any) {
        
        startTime = 210
        displayTimer.text = String(startTime)
        
    }
    
    
    @IBAction func onTapIncTen(_ sender: Any) {
        
        startTime += 10
        displayTimer.text = String(startTime)
        
    }
    
    
}

