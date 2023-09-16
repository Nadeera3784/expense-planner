//
//  TabViewX.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-16.
//

import SwiftUI

struct TabViewX: View {
    let image: String
    @Binding var selectedTab: String
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
                        .scaleEffect(selectedTab == image ? 1.2 : 1.0)
                        .foregroundColor(selectedTab == image ? .accentColor : Color.green)
                    
                    RoundedRectangle(cornerRadius: 1)
                        .frame(width: 20, height: 2)
                        .background(selectedTab == image ? .accentColor : Color.green)
                        .opacity(selectedTab == image ? 1.0 : 0.0)
                        .padding(.top, 1)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 50)
    }
}
