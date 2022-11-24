//
//  ContentView.swift
//  FIFA
//
//  Created by Mehedi Hasan on 24/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                
                ForEach(teamsList) { team in
                    NavigationLink(destination: {
                        TeamView(selectionTeam: team)
                    }) {
                        Text(team.flag + " " + team.name)
                    }
                }
            }
            .navigationTitle("World Cup Team List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
