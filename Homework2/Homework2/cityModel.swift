//
//  cityModel.swift
//  Homework2
//
//  Created by Cody Tavenner on 4/5/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import Foundation
import UIKit
class cityModel
{
    var cities:[city] = []
    var citySectionTitles = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    init()
    {
        let p1 = UIImage(named: "tempe.jpeg")
        let p2 = UIImage(named: "gilbert.jpeg")
        let p3 = UIImage(named: "chandlet.jpeg")
        let p4 = UIImage(named: "san diego.jpeg")
        let p5 = UIImage(named: "denver.jpeg")
        
        let f1 = city(fn: "Tempe", fd:"This is a city in Arizona", fin: p1!)
        let f2 = city(fn: "Gilbert", fd:"This is a city in Arizona", fin: p2!)
        let f3 = city(fn: "Chandler", fd:"This is a city in Arizona", fin: p3!)
        let f4 = city(fn: "San Diego", fd:"This is a city in southern California", fin: p4!)
        let f5 = city(fn: "Denver", fd:"This is a city in Colorado", fin: p5!)
        
        cities.append(f1)
        cities.append(f2)
        cities.append(f3)
        cities.append(f4)
        cities.append(f5)


        
    }
    
}
class city
{
    var cityName:String?
    var cityDetails:String?
    var cityImageName:UIImage?
    
    init(fn:String, fd: String, fin:UIImage)
    {
        cityName = fn
        cityDetails = fd
        cityImageName = fin
        
    }
    
    
}
