//
//  ViewController.swift
//  protocalPractice
//
//  Created by zheng wu on 5/25/17.
//  Copyright © 2017 CodeMonkey. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,passDataDelegate{

    @IBOutlet var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func passdata(data: String) {
        textLabel.text = data
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "tosend"){
          let VC = segue.destination as! sendingViewController
            VC.delegate = self
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

