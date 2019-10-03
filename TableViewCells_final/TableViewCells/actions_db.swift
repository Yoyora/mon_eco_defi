//
//  actions_db.swift
//  TableViewCells
//
//  Created by shelley cavaness on 30/09/2019.
//  Copyright © 2019 Alexandre Bloch. All rights reserved.
//

import Foundation
import UIKit

var actions: [Action] = []

func actionDB (){

    actions.append(Action(title: "Je prends mon vélo", done: false, description: "Aujourd'hui je prends mon vélo pour me déplacer à mon travail.", image: UIImage(named: "velo")!, impact: "- 20% CO2/km" , points: 100, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je refuse les sacs en plastique", done: false, description: "Je refuse les sacs en plastique à chaque fois que je fais mes courses.", image: UIImage(named: "filet")!, impact: "20g par sac"
        , points: 100, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je trie mes déchets", done: false, description: "Je jette toutes mes objets en verre dans la poubelle de tri pour le verre.", image: UIImage(named: "dechets")!, impact: "30g de verre recyclé/bouteille" , points: 900, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je répare un appareil en panne au lieu de jeter", done: false, description: "Je répare ou je donne à réparer un appareil en panne au lieu de le jeter.", image: UIImage(named: "reparer")!, impact: "50gr de mercure/ machine à laver" , points: 900, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je protège les abeilles en utilisant du savon noir", done: false, description: "Je protège les abeilles en utilisant du savon noir contre les pucerons.", image: UIImage(named: "abeille1")!, impact: "75% d'abeilles en moins en 20 ans" , points: 800, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je refuse les pailles en plastique", done: false, description: "Je refuse les pailles en plastique dans le bar/restaurant.", image: UIImage(named: "paille")!, impact: "5g par paille" , points: 100, dates: Date(), nbTimes: 0))
    
    actions.append(Action(title: "Je mange végétarien", done: false, description: "Je mange végétarien ou encore mieux, végétalien !", image: UIImage(named: "vegetarien")!, impact: "1 kg de viande = 22 kg de CO2" , points: 300, dates: Date(), nbTimes: 0))
    
    
    actions.append(Action(title: "Utiliser du vinaigre blanc pour tout nettoyer", done: false, description: "Utiliser du vinaigre blanc pour tout nettoyer.", image: UIImage(named: "vinigar")!, impact: "Evite 30g de Benzisothiazolinone", points: 200, dates: Date(), nbTimes: 0))
    


}
