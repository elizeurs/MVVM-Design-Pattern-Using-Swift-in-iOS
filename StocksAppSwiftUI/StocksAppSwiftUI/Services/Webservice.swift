//
//  Webservice.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 31/08/22.
//

import Foundation

class Webservice {
  
  func getTopNews(completion: @escaping (([Article]?) -> Void)) {
    
    guard let url = URL(string: "https://island-bramble.glitch.me/top-news") else {
      fatalError("Url is not correct")
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      guard let data = data else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      
      let articles = try? JSONDecoder().decode([Article].self, from: data)
      DispatchQueue.main.async {
        completion(articles)
      }
      
    }.resume()
    
  }
  
  func getStocks(completion: @escaping (([Stock]?) -> Void)) {
    
    guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
      fatalError("Url is not correct")
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      guard let data = data, error == nil else {
        DispatchQueue.main.async {
          completion(nil)
        }
        return
      }
      
      let stocks = try? JSONDecoder().decode([Stock].self, from: data)
      DispatchQueue.main.async {
        completion(stocks)
      }
      
//      stocks == nil ? completion(nil) : completion(stocks)
      
    }.resume()
    
  }
}
