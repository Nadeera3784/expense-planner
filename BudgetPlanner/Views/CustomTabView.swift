//
//  CustomTabView.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-15.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var selectedTab: String
    
    var body: some View {
        HStack {
            TabBuilder(image: "line.3.horizontal.circle", selectedTab: $selectedTab)
            TabBuilder(image: "plus.circle", selectedTab: $selectedTab)
            TabBuilder(image: "chart.line.uptrend.xyaxis.circle", selectedTab: $selectedTab)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(25)
        .padding(.horizontal)
        .shadow(radius: 0.5)
    }
    
}

struct TabBuilder: View {
    
    let image: String
    @Binding var selectedTab: String
    
    let gradient = Gradient(colors: [.purple, .cyan, .orange])
    
    var body: some View {
        GeometryReader { button in
            Button {
                withAnimation(.linear(duration: 0.3)) {
                    selectedTab = image
                }
            } label: {
                VStack {
                    Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                        .offset(y: selectedTab == image ? -5 : 0)
                        .scaleEffect(selectedTab == image ? 2.5 : 1.5)
                        .foregroundColor(selectedTab == image ? .accentColor : Color.gray)
         
                    
//                    RoundedRectangle(cornerRadius: 1)
//                        .frame(width: 20, height: 2)
//                        .background(selectedTab == image ? .accentColor : Color.gray)
//                        .opacity(selectedTab == image ? 1.0 : 0.0)
//                        .padding(.top, 1)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
    }
}

