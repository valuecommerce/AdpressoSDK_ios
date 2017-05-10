//
//  RotatingNavigationController.swift
//  adlantis_sample_swift
//
//  Created on 05/09/2014.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit

class RotatingNavigationController: UINavigationController {

  override var shouldAutorotate : Bool {
    return true
  }
  
//  override internal func supoortedInterfaceOrientations() -> UIInterfaceOrientationMask
//  {
//    let orientation: UIInterfaceOrientationMask = [UIInterfaceOrientationMask.portrait,UIInterfaceOrientationMask.portraitUpsideDown,UIInterfaceOrientationMask.landscapeRight,UIInterfaceOrientationMask.landscapeLeft]
//    return UIInterfaceOrientationMask.all
//  }
  
}
