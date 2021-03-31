//
//  ClubModel.swift
//  My2Places
//
//  Created by Борис  on 31.03.2021.
//

import Foundation

struct Club {
    var name: String
    var location: String
    var year: String
    var image: String
    
    static let clubnames = ["Tottenham", "Man United", "Man City", "Chelsea", "Arsenal",
   "Liverpool", "Everton", "West Ham", "Leicester", "Wolverhampton"]
    
    static func getClubs()-> [Club]{
        
        var clubs = [Club]()
        
        for club in clubnames {
            
            clubs.append(Club(name: club, location: "England", year: "19 century", image: club))
            
        }
        return clubs
        
    }
}
