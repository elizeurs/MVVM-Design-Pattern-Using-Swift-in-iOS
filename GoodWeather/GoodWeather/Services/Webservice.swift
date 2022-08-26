//
//  Webservice.swift
//  GoodWeather
//
//  Created by Elizeu RS on 26/08/22.
//

import Foundation

struct Resource<T> {
  let url: URL
  let parse: (Data) -> T?
}

final class Webservice {
  
  func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()) {
    
    URLSession.shared.dataTask(with: resource.url) { data, response, error in
      
      if let data = data {
        DispatchQueue.main.async {
          completion(resource.parse(data))
        }
      } else {
        completion(nil)
      }
    }.resume()
  }
}
