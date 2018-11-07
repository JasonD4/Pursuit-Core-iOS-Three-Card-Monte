//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var counter = 0
  override func viewDidLoad() {
    super.viewDidLoad()
    backGround.backgroundColor = .green
    }
    // Do any additional setup after loading the view, typically from a nib.

    @IBOutlet weak var cardFront: UIButton!
    @IBOutlet weak var cardMiddle: UIButton!
    @IBOutlet weak var cardLast: UIButton!
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var winOrLose: UILabel!
    
    @IBOutlet var backGround: UIView!

    
    @IBAction func cardMainFunc(_ sender: UIButton) {
        let cardShuffled: [UIImage] = [
            UIImage(named: "King")!,
            UIImage(named: "King")!,
            UIImage(named: "Ace")!]
      var cardShuffled1 = cardShuffled.shuffled()
        let winningCard = UIImage(named: "King")
        switch sender.tag {
        case 0:
            if cardShuffled1[0] == winningCard{

            cardFront.setImage(UIImage.init(named: "King"), for: .normal)
                winOrLose.text = "You Lose"
                
            }

            else{
                 cardFront.setImage(UIImage.init(named: "Ace"), for: .normal)
                winOrLose.text = "You Win"
                counter += 1
                        score.text = "Wins = \(counter)"

            }
            cardFront.isEnabled = false
            cardMiddle.isEnabled = false
            cardLast.isEnabled = false
                case 1:
                    if cardShuffled1[1] == winningCard{
                        
                        cardMiddle.setImage(UIImage.init(named: "King"), for: .normal)
                        winOrLose.text = "You Lose"


                    }
                    else{
                        cardMiddle.setImage(UIImage.init(named: "Ace"), for: .normal)
                        winOrLose.text = "You Win"
                        counter += 1
                        score.text = "Wins = \(counter)"


            }
                    cardFront.isEnabled = false
                    cardMiddle.isEnabled = false
                    cardLast.isEnabled = false

//        cardMiddle.setImage(UIImage.init(named: "Ace"), for: .normal)
        case 2:
            if cardShuffled1[2] == winningCard{
                
                cardLast.setImage(UIImage.init(named: "King"), for: .normal)
                winOrLose.text = "You Lose"


            }
            else{
                cardLast.setImage(UIImage.init(named: "Ace"), for: .normal)
                winOrLose.text = "You Win"
                counter += 1
                score.text = "Wins = \(counter)"

            }
            
            cardFront.isEnabled = false
            cardMiddle.isEnabled = false
            cardLast.isEnabled = false

//        cardLast.setImage(UIImage.init(named: "King"), for: .normal)
        default:
            print("Nothing")
        }
        for cards in 0..<cardShuffled1.count{
            if cardShuffled1[cards] == UIImage(named: "Ace") {
                if cards == 0{
                    cardFront.setImage(UIImage.init(named: "Ace"), for: .normal)
                }
                else if cards == 1{
                    cardMiddle.setImage(UIImage.init(named: "Ace"), for: .normal)
                }
                else if cards == 2{
                    cardLast.setImage(UIImage.init(named: "Ace"), for: .normal)
                }
            }
            
        }
        }
    
    
    
    @IBAction func gameOn(_ sender: UIButton) {
        cardFront.isEnabled = true
        cardMiddle.isEnabled = true
        cardLast.isEnabled = true
           cardFront.setImage(UIImage.init(named: "BackofCard"), for: .normal)
           cardMiddle.setImage(UIImage.init(named: "BackofCard"), for: .normal)
           cardLast.setImage(UIImage.init(named: "BackofCard"), for: .normal)
    }
    
    }

