//
//  BannerIBViewController.swift
//  adlantis_sample_swift
//
//  Created on 6/27/14.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit


@objc(BannerIBViewController) class BannerIBViewController: UIViewController, AdlantisViewDelegate {

  @IBOutlet var adView: AdpressoView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    edgesForExtendedLayout = UIRectEdge()
    
    // AdlantisView configuration, including setting publisherID, is done in the nib
    adView.delegate = self;
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // MARK: AdlantisViewDelegate methods
  func bannerAdRequestComplete(_ adView: AdpressoView!) {
    print("\(#function) \(adView)")
  }
  
  func bannerAdRequestFailed(_ adView: AdpressoView!) {
    print("\(#function) \(adView)")
  }
  
  func bannerAdPreviewWillBeShown(_ adView: AdpressoView!) {
    print("\(#function) \(adView)")
  }
  
  func bannerAdPreviewWillBeHidden(_ adView: AdpressoView!) {
    print("\(#function) \(adView)")
  }
  
  func bannerAdTouched(_ adView: AdpressoView!) {
    print("\(#function) \(adView)")
  }
}
