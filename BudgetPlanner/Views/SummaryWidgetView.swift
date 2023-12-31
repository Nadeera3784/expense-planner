//
//  SummaryWidgetView.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-12.
//

import SwiftUI


struct SummaryWidgetView: View {
    @EnvironmentObject var expenseViewModel : ExpenseService
    var isFilter : Bool = false
    var body: some View {
        GeometryReader{proxy in
            RoundedRectangle(cornerRadius: 20,style: .continuous)
                .fill(.linearGradient(colors: [
                Color("Purple"),
                Color("Gradient2"),
                Color("Gradient3")], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            VStack(spacing: 15){
                VStack(spacing:15){
                    Text("Total Balance")
                        .font(.callout)
                        .fontWeight(.semibold)
                    Text(expenseViewModel.convertExpensesToCurrency(expenses: expenseViewModel.expenses))
                        .font(.system(size: 35, weight: .bold))
                        .lineLimit(1)
                        .padding(.bottom,5)
                }
                .offset(y:-10)
                HStack(spacing: 15){
                    Image(systemName: "arrow.down")
                        .font(.caption.bold())
                        .foregroundColor(Color("Green"))
                        .frame(width:30,height: 30)
                        .background(.white.opacity(0.7),in:Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Income")
                            .font(.caption)
                            .opacity(0.7)
                        Text(expenseViewModel.convertExpensesToCurrency(expenses: expenseViewModel.expenses, type: .income))
                            .font(.callout)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .fixedSize()
                    }
                    .frame(maxWidth:.infinity,alignment: .leading)
                    Image(systemName: "arrow.up")
                        .font(.caption.bold())
                        .foregroundColor(Color("Red"))
                        .frame(width:30,height: 30)
                        .background(.white.opacity(0.7),in:Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Expenses")
                            .font(.caption)
                            .opacity(0.7)
                        Text(expenseViewModel.convertExpensesToCurrency(expenses: expenseViewModel.expenses, type: .expense))
                            .font(.callout)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .fixedSize()
                    }
                }
                .padding(.horizontal)
                .padding(.trailing)
                .offset(y:15)
            }
            .foregroundColor(.white)
            .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .center)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
        }
        .frame(height:220)
        .padding(.top)
    }
}
