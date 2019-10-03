//
//  ProfileController.swift
//  TableViewCells
//
//  Created by shelley cavaness on 01/10/2019.
//  Copyright © 2019  Roots All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var pseudoname: UILabel!
    @IBOutlet weak var myScore: UILabel!
    @IBOutlet weak var myRank: UILabel!
    @IBOutlet weak var myTeam: UILabel!
    @IBOutlet weak var myCity: UILabel!
    @IBOutlet weak var cityScore: UILabel!
    
    var users: [User] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        users = [
            User(username: "Claire  Sisoko", pseudoname: "ClaireSimplon", score: "4242", rank: "42", team: "Simplon10", city: "Paris", cityScore: "200000"),
            User(username: "Pierre Latour", pseudoname: "PierreSimplon", score: "4242", rank: "33", team: "Simplon02", city: "Paris", cityScore: "200000"),
             User(username: "Souki Haddad", pseudoname: "Souookki", score: "4242", rank: "128", team: "SimplonApple", city: "Lyon", cityScore: "30000")
        
        ]
        let randomInt = Int.random(in: 0..<users.count)
        
        username.text = String(users[randomInt].username)
        pseudoname.text = String(users[randomInt].pseudoname)
        myScore.text = String(users[randomInt].score)
        myRank.text = String(users[randomInt].rank)
        myTeam.text = String(users[randomInt].team)
//        myCity.text = String(users[randomInt].city)
        cityScore.text = String(users[randomInt].cityScore)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    
    
    
    
    
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
