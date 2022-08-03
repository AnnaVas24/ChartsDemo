//
//  ContentView.swift
//  ChartsDemo
//
//  Created by Vasichko Anna on 29.07.2022.
//

import SwiftUI
import Charts

struct ContentView: View {
    private let monthData = Month.getMonthData()
    
    var body: some View {
        NavigationView {
            ScrollView {
                Chart(monthData) { month in
                    AreaMark(
                        x: .value("Months", month.name),
                        y: .value("Values", month.value)
                    )
                    .foregroundStyle(.purple)
                }
                .frame(height: 300)
                .padding()
                
                Chart(monthData) { month in
                    BarMark(
                        x: .value("Values", month.value),
                        y: .value("Months", month.name)
                    )
                    .foregroundStyle(by: .value("Values", month.value))
                }
                .frame(height: 500)
                .padding()
                
                Chart(monthData) { month in
                    LineMark(
                        x: .value("Months", month.name),
                        y: .value("Values", month.value)
                    )
                    .foregroundStyle(.red)
                    .interpolationMethod(.cardinal)
                }
                .frame(height: 300)
                .padding()
            }
            .navigationTitle("Swift Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
