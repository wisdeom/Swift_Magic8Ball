//
//  ViewController.swift
//  magic8Ball
//
//  Created by Jihye Eom on 2018. 3. 18..
//  Copyright © 2018년 Jihye Eom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0 
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPresed(_ sender: UIButton) {
        updateBallAnswer()
    }
    
    func updateBallAnswer(){
        randomBallNumber = Int(arc4random_uniform(5))
        print(randomBallNumber)
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallAnswer()
    }


}

