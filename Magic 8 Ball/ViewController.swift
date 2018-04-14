//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by ADENELING on 14/04/18.
//  Copyright © 2018 Maulana Yusup A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballNumber : Int = 0;
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"];
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallNumber();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallNumber();
    }
    
    func randomBallNumber() {
        ballNumber = Int(arc4random_uniform(4));
        
        imageView.image = UIImage(named: ballArray[ballNumber]);
    }
    
}

