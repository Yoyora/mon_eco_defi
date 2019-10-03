//
//  ViewController.swift
//  TableViewCells
// Created by Roots on 27/09/2019.
//  Created by Alexandre Bloch on 27/09/2019.
//  Copyright © 2019  Roots. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
//    var actions: [Action] = []
    
    //table view screen
    @IBOutlet weak var tableView: UITableView!
    
    
    var selectedAction: Action?
    
    ////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        actionDB()  //import funmction from the file action_db.swift
        
//        actions = [
//            Action(title: "Je prends mon vélo pour me déplacer", done: false, description: "Je prends mon vélo pour me déplacer", image: UIImage(named: "velo")!, impact: "eau" , points: 100, dates: Date(), nbTimes: 0),
//
//            Action(title: "Refuser les sacs en plastique", done: false, description: "Refuser les sacs en plastique", image: UIImage(named: "filet")!, impact: "02 TU"
//                , points: 100, dates: Date(), nbTimes: 0),
//
//            Action(title: "Je trie mes déchets", done: false, description: "Je trie mes déchets", image: UIImage(named: "dechets")!, impact: "02 TU" , points: 900, dates: Date(), nbTimes: 0),
//
//            Action(title: "Réparer ou faire réparer un appareil en panne au lieu de jeter", done: false, description: "Réparer ou faire réparer un appareil en panne au lieu de jeter", image: UIImage(named: "reparer")!, impact: "02 TU" , points: 900, dates: Date(), nbTimes: 0),
//
//            Action(title: "Je protège les abeilles en utilisant du savon noir contre les puceron", done: false, description: "Je protège les abeilles en utilisant du savon noir contre les puceron", image: UIImage(named: "abeille1")!, impact: "02 TU" , points: 900, dates: Date(), nbTimes: 0),
//
//            Action(title: "Je refuse les pailles en plastique", done: false, description: "Je refuse les pailles en plastique", image: UIImage(named: "paille")!, impact: "02 TU" , points: 900, dates: Date(), nbTimes: 0),
//
//            Action(title: "Je mange végétarien", done: false, description: "Je mange végétarien", image: UIImage(named: "vegetarien")!, impact: "02 TU" , points: 900, dates: Date(), nbTimes: 0),
//
//
//            Action(title: "Utiliser du vinaigre blanc pour tout nettoyer", done: false, description: "Utiliser du vinaigre blanc pour tout nettoyer", image: UIImage(named: "repairMachine")!, impact: "eau", points: 200, dates: Date(), nbTimes: 0)
//
//        ]
        

        
    }  ///end viewDidLoad function
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actions.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            
            let actionViewController = segue.destination as! DetailedActionViewController
            actionViewController.myAction = selectedAction
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let action = actions[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as? ActionsTableViewCell {
        
        cell.actionImage.image = actions[indexPath.row].image //action.image //UIImage(named: "barcelona")
        cell.actionTitleLabel.text = "\(actions[indexPath.row].title)"
        cell.actionDescriptionLabel.text = "\(actions[indexPath.row].impact)"
            
        //create a round image
        cell.actionImage.layer.cornerRadius = cell.actionImage.frame.size.width / 2
        
        cell.actionImage.layer.borderColor = UIColor.lightGray.cgColor
        cell.actionImage.layer.borderWidth = 1.0
        return cell
        }
        else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedAction = actions[indexPath.row]
        performSegue(withIdentifier: "detail", sender: nil)
    }
    
}

