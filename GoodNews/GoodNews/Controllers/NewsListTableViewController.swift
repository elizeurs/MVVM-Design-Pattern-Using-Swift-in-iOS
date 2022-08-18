//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Elizeu RS on 18/08/22.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
  
  // if you don't call the super, then your parent, which is in this case, the uitableviewcontroller, never gets loaded correctly.
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  private func setup() {
    
    self.navigationController?.navigationBar.prefersLargeTitles = true
  }
}
