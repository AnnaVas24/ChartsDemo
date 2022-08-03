//
//  Month.swift
//  ChartsDemo
//
//  Created by Vasichko Anna on 29.07.2022.
//

import SwiftUI

struct Month: Identifiable {
    var id = UUID()
    
    let name: String
    let value: Double
    
    static func getMonthData() -> [Month] {
        [
            Month(name: "Jan", value: 25.2),
            Month(name: "Feb", value: 32.2),
            Month(name: "Mar", value: 23.3),
            Month(name: "Apr", value: 10.2),
            Month(name: "May", value: 2.3),
            Month(name: "Jun", value: 13.8),
            Month(name: "Jul", value: 32.9),
            Month(name: "Aug", value: 12.4),
            Month(name: "Sep", value: 4.8),
            Month(name: "Oct", value: 17.2),
            Month(name: "Nov", value: 15.8),
            Month(name: "Dec", value: 29.3)
        ]
    }
}
