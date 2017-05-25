//
//  sendingViewController.swift
//  protocalPractice
//
//  Created by zheng wu on 5/25/17.
//  Copyright © 2017 CodeMonkey. All rights reserved.
//

import UIKit
protocol passDataDelegate {
    func passdata(data:String)
}
class sendingViewController: UIViewController {
    var delegate: passDataDelegate? = nil
    
    @IBOutlet var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.delegate = self as! passDataDelegate

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var onSending: UIButton!

    @IBAction func onSend(_ sender: Any) {
        if delegate != nil && textfield.text != nil{
            delegate?.passdata(data: textfield.text!)
            dismiss(animated: true, completion: nil)
        }
    }

}
