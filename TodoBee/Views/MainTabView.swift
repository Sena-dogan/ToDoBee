//
//  MainTabView.swift
//  TodoBee
//
//  Created by Zeynep Sena Doğan on 20.08.2024.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView{
                ListView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
                
            }
            .tag(0)
            
            NavigationView{
                AddView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
                
            }
            .tag(1)
            
            NavigationView {
                MoviesGridView()
            }
            .tabItem {
                Image(systemName: "film.fill")
                Text("Movies")
            }
            .tag(2)
            
            NavigationView {
                TVSeriesGridView()
            }
            .tabItem {
                Image(systemName: "film.fill")
                Text("TV")
            }
            .tag(3)
        }
    }
}
