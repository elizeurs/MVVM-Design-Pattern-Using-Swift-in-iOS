//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 31/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var searchTerm: String = ""
  
  init() {
    UINavigationBar.appearance().backgroundColor = UIColor.black
    UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    UITableView.appearance().backgroundColor = UIColor.black
    UITableViewCell.appearance().backgroundColor = UIColor.black
  }
  
    var body: some View {
      NavigationView {
        
        ZStack(alignment: .leading) {
          
          Color.black
          
          Text("January 5 2020")
            .font(.custom("Arial", size: 32))
            .fontWeight(.bold)
            .foregroundColor(Color.gray)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            .offset(y: -300)
          
          SearchView(searchTerm: $searchTerm)
            .offset(y: -250)
        }
        
        .navigationBarTitle("Stocks")
      }.edgesIgnoringSafeArea(Edge.Set(.bottom))
//      .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(Color.red)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
