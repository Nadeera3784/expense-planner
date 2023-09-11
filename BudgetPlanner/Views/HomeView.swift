//
//  HomeView.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-12.
//

import SwiftUI

struct HomeView: View {
    @StateObject var expenseService: ExpenseService = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
               VStack(spacing: 12) {
                   SummaryWidgetView().environmentObject(expenseService)
               }
               .padding()
        }
        .background {Color("BG").ignoresSafeArea()}
    }
}

