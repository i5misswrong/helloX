//
//  ViewController.swift
//  helloX
//
//  Created by 耿中飞 on 15/6/3.
//  Copyright (c) 2015年 耿中飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var yearM: UITextField!
    
    
    @IBOutlet weak var img: UIImageView!
    
    let offSet=4;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func okButton(sender: AnyObject) {
        //yearM.resignFirstResponder()
        if let  year = yearM.text.toInt(){
            //year
            var imgNum = (year-offSet)%12
            img.image=UIImage(named: String(imgNum))
        }
        else{
            //nil year
        }
    }
}

