//
//  ContentView.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 31/08/22.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject private var stockListVM = StockListViewModel()
  
  @State var show = false
  
  init() {
    UINavigationBar.appearance().backgroundColor = UIColor.black
    UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    UITableView.appearance().backgroundColor = UIColor.black
    UITableViewCell.appearance().backgroundColor = UIColor.black
    
    stockListVM.load()
  }
  
  var body: some View {
    
    let filteredStocks = self.stockListVM.searchTerm.isEmpty ? self.stockListVM.stocks : self.stockListVM.stocks.filter { $0.symbol.starts(with: self.stockListVM.searchTerm )}
    
    return NavigationView {
      
      ZStack(alignment: .leading) {
        
        Color.black
        
        Text("January 5 2020")
          .font(.custom("Arial", size: 32))
          .fontWeight(.bold)
          .foregroundColor(Color.gray)
          .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
          .offset(y: -300)
        
        SearchView(searchTerm: self.$stockListVM.searchTerm)
          .offset(y: -250)
        
        StockListView(stocks: filteredStocks)
          .offset(y: 200)
        
        
        NewsArticleView(newsArticles: self.stockListVM.news
//                        onDragBegin: { value in
//
//        }, onDragEnd: { value in
//          self.stockListVM.dragOffset = value.translation
//        }
        )
        .offset(x: 0, y: show ? 100 : self.stockListVM.dragOffset.height)
         .animation(.easeInOut(duration: 1.0), value: show)
         .onTapGesture {
           show.toggle()
         }
        
//          .offset(y: self.stockListVM.dragOffset.height / 2)
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
