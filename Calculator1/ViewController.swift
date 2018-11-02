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
    var count = 0
    var n = 0.0
    var m = 0.0
    var sum = 0.0
    var display:String = ""
    var flag:String = ""
    var dian = 0
    var zero = 0
    var z = 0
    var some = [Double]()
    @IBOutlet weak var num: UITextField!
    @IBAction func button1(_ sender: Any) {
        let button1=(sender as AnyObject).currentTitle
        if(DisplayWindowAcknowledgement)
        {
            if(button1 == "."&&dian == 0)
            {
                num.text=num.text!+button1!!
                dian = dian + 1;
            }
            else if(button1 == ".")
            {
                num.text=num.text!
            }
            else
            {
                num.text=num.text!+button1!!
            }
           
        }
        else
        {
            num.text = button1!
            if(button1 != "0")
            {
                DisplayWindowAcknowledgement = true
            }
        }
    }
    @IBAction func button_add(_ sender: Any) {
        if(count == 0)
        {
            n = Double(num.text!)!
            num.text=""
            flag = "a"
            count = count + 1
            dian = 0
        }
        else
        {
            m = Double(num.text!)!
            switch flag {
            case "a" :   n = n + m
                         flag = "a"
                break
            case "m" :   n = n - m
                         flag = "a"
                break
            case "r" :   n = n * m
                         flag = "a"
                break
            case "e" :   n = n / m
                         flag = "a"
                break
            default:
                break
            }
            num.text=""
            dian = 0
        }
    }
    @IBAction func button_minus(_ sender: Any) {
        if(count == 0)
        {
            n = Double(num.text!)!
            num.text=""
            flag = "m"
            count = count + 1
            dian = 0
        }
        else
        {
            m = Double(num.text!)!
            switch flag {
            case "a" :   n = n + m
                         flag = "m"
                break
            case "m" :   n = n - m
                         flag = "m"
                break
            case "r" :   n = n * m
                         flag = "m"
                break
            case "e" :   n = n / m
                         flag = "e"
                break
            default:
                break
            }
            num.text=""
            dian = 0
        }
    }
    @IBAction func button_ride(_ sender: Any) {
        if(count == 0)
        {
            n = Double(num.text!)!
            num.text=""
            flag = "r"
            count = count + 1
            dian = 0
        }
        else
        {
            m = Double(num.text!)!
            num.text=""
            n = n * m
            dian = 0
        }
    }
    @IBAction func button_eli(_ sender: Any) {
        if(count == 0)
        {
            n = Double(num.text!)!
            num.text=""
            flag = "e"
            count = count + 1
            dian = 0
        }
        else
        {
            m = Double(num.text!)!
            num.text=""
            n = n / m
            dian = 0
        }
    }
    @IBAction func button_equal(_ sender: Any) {
        m = Double(num.text!)!
        switch flag {
        case "a" :   sum = n + m
                     n = sum
                     count = 0
            break
        case "m" :   sum = n - m
                     n = sum
                     count = 0
            break
        case "r" :   sum = n * m
                     n = sum
                     count = 0
            break
        case "e" :   sum = n / m
                     n = sum
                     count = 0
            break
        default:
            break
        }
        num.text=String(sum)
        
    }
    @IBAction func button_zero(_ sender: Any) {
        num.text=""
        n = 0
        count = 0
        m = 0
        sum = 0
        dian = 0
        display = ""
        flag = ""
        num.text = ""
    }
    @IBAction func button_square(_ sender: Any) {
        n = Double(num.text!)!
        n = n * n
        display = String(n)
        num.text = display
    }
    @IBAction func button_percent(_ sender: Any) {
        n = Double(num.text!)!
        sum = n / 100
        display = String(sum)
        num.text = display
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

