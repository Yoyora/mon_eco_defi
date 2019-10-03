//
//  TodayChallengeViewController.swift
//  TableViewCells
//
//  Created by shelley cavaness on 30/09/2019.
//  Copyright © 2019 Roots. All rights reserved.
//

import UIKit

class TodayChallengeViewController: UIViewController {
    
    
    @IBOutlet weak var challengeTitleLabel: UILabel!
    @IBOutlet weak var challengeImageView: UIImageView!
    @IBOutlet weak var challengeDescription: UILabel!
    @IBOutlet weak var challengeImpactView: UILabel!
    @IBOutlet weak var pointsView: UILabel!
    @IBOutlet weak var rejectBtn: UIButton!
    @IBOutlet weak var acceptBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        actionDB()
        //create the random number used to show an action in thethe view
//        func setViewTodayChallenge() {
//        let randomInt = Int.random(in: 0..<actions.count)
//
//
//        //View an action
//        //challengeTitleLabel.text = String(actions[randomInt].title)
//        challengeDescription.text = String(actions[randomInt].description)
//        challengeImageView.image = actions[randomInt].image
//        pointsView.text = String(actions[randomInt].points)
//        challengeImpactView.text = String(actions[randomInt].impact)
//
//        //style for image
//        challengeImageView.layer.borderColor = UIColor.lightGray.cgColor
////        challengeImageView.layer.borderWidth = 1.0
//        challengeImageView.layer.cornerRadius = challengeImageView.frame.size.width / 3
//                }
//        setViewTodayChallenge()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        func setViewTodayChallenge() {
            let randomInt = Int.random(in: 0..<actions.count)
            
            
            //View an action
            //challengeTitleLabel.text = String(actions[randomInt].title)
            challengeDescription.text = String(actions[randomInt].description)
            challengeImageView.image = actions[randomInt].image
            pointsView.text = String(actions[randomInt].points)
            challengeImpactView.text = String(actions[randomInt].impact)
            
            //style for image
            challengeImageView.layer.borderColor = UIColor.lightGray.cgColor
            //        challengeImageView.layer.borderWidth = 1.0
            challengeImageView.layer.cornerRadius = challengeImageView.frame.size.width / 3
        }
        setViewTodayChallenge()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
