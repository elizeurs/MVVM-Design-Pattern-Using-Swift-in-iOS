//
//  NewsArticleViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Elizeu RS on 02/09/22.
//

import Foundation

struct NewsArticleViewModel {
  
  let article: Article
  
  var imageURL: String {
    return self.article.imageURL
  }
  
  var title: String {
    return self.article.title
  }
  
  var publication: String {
    return self.article.publication.uppercased()
  }
}
