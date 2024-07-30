//
//  DiceView.swift
//  DiceRoller
//
//  Created by Candy Pangestu on 7/30/24.
//

import SwiftUI

struct DiceView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
            .resizable()
            .frame(width: 100, height: 100)
    }
}

#Preview {
    DiceView()
}
