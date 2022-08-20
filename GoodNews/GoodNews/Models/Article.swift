//
//  Article.swift
//  GoodNews
//
//  Created by Elizeu RS on 19/08/22.
//

import Foundation

struct ArticleList: Decodable {
  let articles: [Article]
}

struct Article: Decodable {
  let title: String?
  let description: String?
}
