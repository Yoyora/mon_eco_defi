//
//  DetailedActionViewController.swift
//  TableViewCells
//
//  Created by shelley cavaness on 02/10/2019.
//  Copyright © 2019 Alexandre Bloch. All rights reserved.
//

import UIKit

class DetailedActionViewController: UIViewController {

    
    @IBOutlet weak var detailActionTitle: UILabel!
    
    @IBOutlet weak var detailDescription: UILabel!
    
    @IBOutlet weak var detailImpact: UILabel!
    
    @IBOutlet weak var detailPoints: UILabel!
    
    @IBOutlet weak var detailNbTimes: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    
    var myAction: Action?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //detailActionTitle.text = myAction?.title
        detailDescription.text = myAction?.description
        detailImpact.text = myAction?.impact
        
        detailPoints.text = String(describing: myAction!.points)
        
        detailNbTimes.text = String(describing: myAction!.nbTimes)

        detailImage.image = myAction?.image
        detailImage.layer.cornerRadius = 8.0
        
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
