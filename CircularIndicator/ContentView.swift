//
//  ContentView.swift
//  CircularIndicator
//
//  Created by Evgeny on 29.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var amount: CGFloat = 90
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()

            CircularIndicatorView(amount: amount)

            HStack {
                Button(action: {
                    if amount > 0 {
                        amount -= 10
                    }
                }, label: {
                    Text("Decrease")
                })
                Button(action: {
                    if amount < 100 {
                        amount += 10
                    }
                }, label: {
                    Text("Increase")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
