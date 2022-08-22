//
//  AddOrderViewController.swift
//  HotCoffee
//
//  Created by Elizeu RS on 20/08/22.
//

import Foundation
import UIKit

class AddOrderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  private var vm = AddCoffeeOrderViewModel()
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // alrealdy done via storyboard
//    self.tableView.delegate = self
//    self.tableView.dataSource = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return self.vm.types.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeTypeTableViewCell", for: indexPath)
    
    cell.textLabel?.text = self.vm.types[indexPath.row]
    return cell
  }
}
