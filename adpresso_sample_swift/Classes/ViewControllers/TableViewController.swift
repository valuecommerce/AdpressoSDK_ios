//
//  TableViewController.swift
//  adlantis_sample_swift
//
//  Created on 6/30/14.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit

@objc(TableViewController) class TableViewController: UITableViewController {
  
  let menuData = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView?) -> Int {
    // Return the number of sections.
    return 1
  }
  
  override func tableView(_ tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete method implementation.
    // Return the number of rows in the section.
    return menuData.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let reuseIdentifier = "reuseIdentifier"
    var reuseCell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
    
    if reuseCell == nil {
      reuseCell = UITableViewCell(style: .default, reuseIdentifier: reuseIdentifier)
    }
    
    let cell = reuseCell!
    
    // Configure the cell...
    cell.textLabel?.text = menuData[indexPath.row]
    
    return cell
  }
      
}
