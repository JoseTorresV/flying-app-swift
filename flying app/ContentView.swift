//
//  ContentView.swift
//  flying app
//
//  Created by José Torres on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Flying App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("airport_pexels")
                .resizable()
                .cornerRadius(15)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
        }
    }
}

#Preview {
    ContentView()
}
