//
//  Action.swift
//  TableViewCells
//
//  Created by Alexandre Bloch on 27/09/2019.
//  Copyright © 2019 Alexandre Bloch. All rights reserved.
//

import Foundation
import UIKit

struct Action {
    let title: String
    var done: Bool = false // true quand on fait l'action au moins 1 fois
    let description: String
    let image: UIImage
    let impact: String
    let points: Int //points rapportés quand on fait l'action
    var dates: Date //dates à laquelle on a fait l'action
    var nbTimes: Int = 0 //nombre de fois que l'action a été faite
}
