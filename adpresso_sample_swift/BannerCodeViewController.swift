//
//  BannerCodeViewController.swift
//  adlantis_sample_swift
//
//  Created on 6/30/14.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit

@objc(BannerCodeViewController) class BannerCodeViewController: UIViewController, AdlantisViewDelegate {
  
  var adView : AdpressoView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    edgesForExtendedLayout = UIRectEdge()

    // Do any additional setup after loading the view.
    let suggestedViewSize = AdpressoViewSize()
    adView = AdpressoView(frame: CGRect(x: 0, y: 0, width: suggestedViewSize.width, height: suggestedViewSize.height))
    adView.delegate = self;
    
    //
    //
    // 下記の行を管理画面へ表示されたSDK用の広告枠コードをコピーして下さい。
    //
    //
    adView.publisherID = "Mjc3NzI%3D%0A"
    
    view.addSubview(adView)
    
    setupLayoutConstraints()
  }
  
  func setupLayoutConstraints() {
    
    //TODO: ここのオートレイアウト解除を後で書く
//    adView.setTranslatesAutoresizingMaskIntoConstraints(false)
    
    var layoutConstraint = NSLayoutConstraint(item:adView,
      attribute:NSLayoutAttribute.centerX,
      relatedBy:NSLayoutRelation.equal,
      toItem:self.view,
      attribute:NSLayoutAttribute.centerX,
      multiplier:1,
      constant:0)
    layoutConstraint.isActive = true
    
    layoutConstraint = NSLayoutConstraint(item:adView,
      attribute:NSLayoutAttribute.top,
      relatedBy:NSLayoutRelation.equal,
      toItem:self.view,
      attribute:NSLayoutAttribute.top,
      multiplier:1,
      constant:0)
    layoutConstraint.isActive = true
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

  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
  // Get the new view controller using [segue destinationViewController].
  // Pass the selected object to the new view controller.
  }
  */
  
}
