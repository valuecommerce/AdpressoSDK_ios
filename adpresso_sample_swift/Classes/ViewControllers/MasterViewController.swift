//
//  MasterViewController.swift
//  adlantis_sample_swift
//
//  Created on 6/27/14.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit


class MasterViewController: UITableViewController {

  struct MenuItem {
    var name : String
    var className : String
    var nibName : String
  }
  
  let menuItems = [
    MenuItem(name: "Banner View (Interface Builder)", className: "BannerIBViewController",nibName: "BannerIBViewControllerSwift"),
    MenuItem(name: "Banner View (Code)",              className: "BannerCodeViewController",nibName: "BannerCodeViewControllerSwift"),
    MenuItem(name: "Banner in Table",                 className: "TableViewController",nibName: "TableViewControllerSwift"),
    MenuItem(name: "Interstitial Ad",                 className: "InterstitialViewController",nibName: "InterstitialViewControllerSwift")
                ]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    setUpHeaderLabel()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func setUpHeaderLabel()
  {
    let headerLabel = UILabel(frame:CGRect(x: 0, y: 0, width: view.frame.width, height: 22))
    headerLabel.text = AdpressoAdManager.shared().fullVersionString
    headerLabel.textAlignment = .center
    headerLabel.backgroundColor = UIColor.black
    headerLabel.textColor = UIColor.white
    headerLabel.font = UIFont.systemFont(ofSize: 12)
    (self.view as! UITableView).tableHeaderView = headerLabel
  }

  // MARK: - Table View

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuItems.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell

    let menuItem = menuItems[indexPath.row]
    cell.textLabel?.text = menuItem.name
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let menuItem = menuItems[indexPath.row]
    
    let viewControllerClass = NSClassFromString(menuItem.className) as! UIViewController.Type
    let viewController : UIViewController = viewControllerClass.init(nibName: menuItem.nibName, bundle: nil)
    self.navigationController?.pushViewController(viewController, animated: true)
  }

  // MARK: - Segues
  
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//      if segue.identifier == "showDetail" {
//        let indexPath = self.tableView.indexPathForSelectedRow()
//      }
//    }
  
}

