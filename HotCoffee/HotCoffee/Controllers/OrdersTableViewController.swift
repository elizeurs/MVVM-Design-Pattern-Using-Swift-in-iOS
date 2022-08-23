//
//  OrdersTableViewController.swift
//  HotCoffee
//
//  Created by Elizeu RS on 20/08/22.
//

import Foundation
import UIKit

class OrdersTableViewController: UITableViewController {
  
  var orderListViewModel = OrderListViewModel()
  
  override func viewDidLoad() {
     super.viewDidLoad()
      populateOrders()
  }
  
  private func populateOrders() {
    
    Webservice().load(resource: Order.all) { [weak self] result in
      
      switch result {
      case .success(let orders):
//        print(orders)
        self?.orderListViewModel.ordersViewModel = orders.map(OrderViewModel.init)
        self?.tableView.reloadData()
      case .failure(let error):
        print(error)
      }
    }
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.orderListViewModel.ordersViewModel.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let vm = self.orderListViewModel.orderViewModel(at: indexPath.row)
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath)
    
    cell.textLabel?.text = vm.type
    cell.detailTextLabel?.text = vm.size
    
    return cell
  }
}
