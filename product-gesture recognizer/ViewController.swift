//
//  ViewController.swift
//  product-gesture recognizer
//
//  Created by cheng on 2016/4/18.
//  Copyright © 2016年 reyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    gesture recognizer
    @IBAction func tapGesture(sender: AnyObject) {
        addDigital()
    }
    
    @IBAction func panGesture(sender: AnyObject) {
        addDigital()
    }
//    宣告
    @IBOutlet weak var counterTxt: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
//    動作
    @IBAction func addCounter(sender: AnyObject) {
        addDigital()
    }
    
    @IBAction func panGestureAction(sender: UIPanGestureRecognizer) {
        addDigital()
    }
    
    
    
    @IBAction func resetCounter(sender: AnyObject) {
        counterTxt.text = String(0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addDigital() {
        var tmpVal = Int(counterTxt.text!)
        tmpVal = tmpVal! + 1
        counterTxt.text = String(tmpVal!)
    }

}

