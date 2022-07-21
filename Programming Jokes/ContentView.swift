//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Tom Bredemeier on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear() {
            getJokes()
        }
    }
    
    func getJokes() {
        let apiKey = "63284d5ce8mshe1ade5b1942d9b3p1472a5jsnf44aab4102fc"
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}

