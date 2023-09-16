//
//  ContentView.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-11.
//

import SwiftUI

struct LayoutView: View {
    @State var selectedTab: String = "plus.circle"
    
//    init(){
//        UITabBar.appearance().backgroundColor = UIColor.white
//    }
    
    var body: some View {
        NavigationView{
            AddTabbar()
       }
    }
    
    
    @ViewBuilder
    func AddTabbar() -> some View {
        TabView {
            HomeView().navigationBarHidden(true)
            .tabItem {
              Image(systemName: "circle.grid.2x2")
            }
                      
            HomeView()
            .tabItem {
                Image(systemName: "plus")
                .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
            }
            
            HomeView().navigationBarHidden(true)
            .tabItem {
                Image(systemName: "waveform.circle")
            }
        }
        .cornerRadius(10)
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}



