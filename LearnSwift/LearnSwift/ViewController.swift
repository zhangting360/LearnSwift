//
//  ViewController.swift
//  LearnSwift
//
//  Created by 张挺 on 2017/12/14.
//  Copyright © 2017年 张挺. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var showLb: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    var timer = Foundation.Timer()
    var count:Float = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showLb.text = "123"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func startClick(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
    }
    @IBAction func stopClick(_ sender: Any) {
        timer.invalidate()
    }
    
    func updateTime() -> Void {
        count+=0.1
        showLb.text = String(format:"%.1f",count)
    }


}

