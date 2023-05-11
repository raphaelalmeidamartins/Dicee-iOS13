//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1Outlet: UIImageView!
    @IBOutlet weak var diceImageView2Outlet: UIImageView!
    
    var leftDiceImageIndex = 0;
    var rightDiceImageIndex = 5;
    
    let diceSideImageLiterals = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix"),
    ];

    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
        diceImageView1Outlet.image = diceSideImageLiterals[leftDiceImageIndex];
        diceImageView2Outlet.image = diceSideImageLiterals[rightDiceImageIndex];
    }

    @IBAction func handleRollButtonPressAction(_ sender: UIButton) {
        leftDiceImageIndex += 1;
        rightDiceImageIndex -= 1;

        diceImageView1Outlet.image = diceSideImageLiterals[leftDiceImageIndex];
        diceImageView2Outlet.image = diceSideImageLiterals[rightDiceImageIndex];
    }
}
