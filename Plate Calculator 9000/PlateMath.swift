//
//  PlateMath.swift
//  Plate Calculator 9000
//
//  Created by Scott Seligman on 8/12/15.
//  Copyright (c) 2015 tiny antelope. All rights reserved.
//

import Foundation

import Foundation
class PlateMath {
    func deleteObject<T : Equatable>(object: T, fromArray array: [T]) -> [T] {
        return array.filter() { $0 != object }
    }
    
    static var weight : Double = 315.5
    static var bar : Double = 45
    
    struct platesOwned {
        static var standard : [Double] = []{
            didSet{standard.sort(){ $0 > $1 }}
        }
        static var metric : [Double] = []{
            didSet{metric.sort(){ $0 > $1 }}
        }
    }
    
    
    func pickPlateSets (barWeight: Double, weight: Double, avialPlates : [Double] ) -> [Double] {
        var platesToMake: [Double] = []
        var weightForPlates = (weight-barWeight)/2
        var inventory : [Double] = avialPlates
        for plate in inventory{
            if weightForPlates == 0 {break}
            var numberOfThisPlate = floor(weightForPlates/plate)
            println(numberOfThisPlate)
            weightForPlates = weightForPlates - plate * numberOfThisPlate
            while numberOfThisPlate > 0{
                platesToMake.append(plate)
                numberOfThisPlate--
            }
        }
        return(platesToMake)
    }
}