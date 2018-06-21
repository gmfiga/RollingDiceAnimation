//
//  ViewController.swift
//  RollingDiceAnimation
//
//  Created by Administrator on 6/20/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var imgDice2: UIImageView!
    @IBOutlet weak var imgDice: UIImageView!
    @IBOutlet weak var btnRoll: UIButton!
    var imageNumber:Int = 0
    var imageNumber2:Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func btnPressed(_ sender: Any) {
        var dice1Animation: [UIImage] = []
        var dice2Animation: [UIImage] = []
        for index in 1...6{
            imageNumber = Int(arc4random_uniform(5))+1
            dice1Animation.append(UIImage(named: "dice\(imageNumber).jpg")!)
        }
        for index in 1...6{
            imageNumber2 = Int(arc4random_uniform(5))+1
            dice2Animation.append(UIImage(named: "dice\(imageNumber2).jpg")!)
        }
        imgDice.animationImages = dice1Animation
        imgDice.animationDuration = 0.7
        imgDice.animationRepeatCount = 5
        imgDice.startAnimating()
        imgDice.image = UIImage(named: "dice\(imageNumber).jpg")
        imgDice2.animationImages = dice2Animation
        imgDice2.animationDuration = 0.7
        imgDice2.animationRepeatCount = 5
        imgDice2.startAnimating()
        imgDice2.image = UIImage(named: "dice\(imageNumber2).jpg")
        lblTotal.text = String (imageNumber + imageNumber2)
        
        if (imageNumber == imageNumber2){
            lblTotal.textColor = UIColor .red
        }else{
            lblTotal.textColor = UIColor .black
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

