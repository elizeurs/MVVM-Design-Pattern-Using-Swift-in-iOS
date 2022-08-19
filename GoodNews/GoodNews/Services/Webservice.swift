//
//  Webservice.swift
//  GoodNews
//
//  Created by Elizeu RS on 18/08/22.
//

import Foundation

class Webservice {
  
  func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      
      if let error = error {
        print(error.localizedDescription)
        completion(nil)
      } else if let data = data {
        
        let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
        
        if let articleList = articleList {
          completion(articleList.articles)
        }
        
        print(articleList?.articles)
      }
      // if you don't call resume(), it is never going to work
    }.resume()
  }
}
