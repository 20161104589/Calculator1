//
//  ViewController.swift
//  Calculator1
//
//  Created by 20161104589 on 2018/9/26.
//  Copyright © 2018年 20161104589. All rights reserved.
//

import UIKit
var control:Int = 0
var number_one:String = ""
class ViewController: UIViewController {
    var DisplayWindowAcknowledgement = false
    @IBAction func button1(_ sender: Any) {
        let button1=(sender as AnyObject).currentTitle
        if(DisplayWindowAcknowledgement){
            num.text=num.text!+button1!!
        }
        else{
            num.text = button1!
            if(button1 != "0"){
                DisplayWindowAcknowledgement = true
            }
        }
    }
    @IBAction func button_dot(_ sender: Any) {
    }
    @IBAction func button_add(_ sender: Any) {
    }
    @IBAction func button_minus(_ sender: Any) {
    }
    @IBAction func button_ride(_ sender: Any) {
    }
    @IBAction func button_eli(_ sender: Any) {
    }
    @IBAction func button_equal(_ sender: Any) {
    }
    @IBAction func button_zero(_ sender: Any) {
    }
    @IBAction func button_square(_ sender: Any) {
    }
    @IBAction func button_percent(_ sender: Any) {
    }
    @IBOutlet weak var num: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

