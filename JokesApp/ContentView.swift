//
//  ContentView.swift
//  JokesApp
//
//  Created by Abdullah Karagöz on 23.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    @State private var isIpad = UIDevice .current.userInterfaceIdiom == .pad
    
    var body: some View {
        Group {
        if isIpad {
            List(jokesVM.jokes) { element in
                Text(element.joke)
              
            }
        }
        else {
            NavigationView {
                
                List(jokesVM.jokes) { element in
                    Text(element.joke)
                  
                }.toolbar {
                    Button(action: addJoke) {
                        Text("Get Jokes")
                    }
                }
                .navigationTitle("Jokes App")
                
            }
        }
    }
        
    }
    
    func addJoke()  {
        jokesVM.getJokes()
    }
}

#Preview {
    ContentView()
}
