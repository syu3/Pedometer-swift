//
//  ViewController.swift
//  万歩計-swift
//
//  Created by 加藤 周 on 2015/03/21.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit
import CoreMotion
class ViewController: UIViewController {
    @IBOutlet var label:UILabel!
    var myStepCounter: CMStepCounter!
    override func viewDidLoad() {
        super.viewDidLoad()
        myStepCounter = CMStepCounter()
        
        // ペドメーター(歩数計)で計測開始.
        myStepCounter.startStepCountingUpdatesToQueue(NSOperationQueue.mainQueue(), updateOn: 1, withHandler:
            {numberOfSteps, timeStamp, error in
                if error==nil {
                    let myStep = numberOfSteps
                    self.label.text = "\(myStep) 歩"
                }
        })
        
    

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

