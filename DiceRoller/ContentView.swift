//
//  ContentView.swift
//  DiceRoller
//
//  Created by Candy Pangestu on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle)
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) {
                    _ in DiceView()
                }
                
                
            }
            
            HStack {
                Button("Remove Dice") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 3)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
