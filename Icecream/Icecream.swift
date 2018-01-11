//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1.
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe":"Peanut Butter and Chocolate","Tim":"Natural Vanilla","Sophie":"Mexican Chocolate","Deniz":"Natural Vanilla","Tom":"Mexican Chocolate","Jim":"Natural Vanilla","Susan":"Cookies 'N' Cream"]
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var peopleWhoLikeThisFlavor: [String] = []
        for (name,favoriteFlavor) in favoriteFlavorsOfIceCream {
            if flavor == favoriteFlavor {
                peopleWhoLikeThisFlavor.append(name)
            }
        }
        return peopleWhoLikeThisFlavor
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor:String) -> Int {
        let peopleWhoLikeThisFlavor = names(forFlavor: flavor)
        return peopleWhoLikeThisFlavor.count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor personsFlavor:String,forPerson person:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = personsFlavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    // 6.
    func remove(person:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person:String, withFlavor:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        }
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        var sentence:String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            if let favoriteIceCreamFlavor = favoriteFlavorsOfIceCream[name] {
            if sentence == "" {
                sentence = "\(name) likes \(String(describing: favoriteIceCreamFlavor))"
            }
            else {
                sentence = "\(sentence)\n\(name) likes \(String(describing: favoriteIceCreamFlavor))"
            }
            }
        }
        return sentence
    }
    
}
