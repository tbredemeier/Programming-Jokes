//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Tom Bredemeier on 2/18/21.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    
    func getJokes() {
        let apiKey = "d87dc96880msh138dad116ed364ep17b762jsnfa65120c7d18"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
