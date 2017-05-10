//
//  InterstitialViewController.swift
//  adlantis_sample_swift
//
//  Created on 7/1/14.
//  Copyright (c) 2014 Atlantis Inc. All rights reserved.
//

import UIKit


@objc(InterstitialViewController) class InterstitialViewController: UIViewController, AdlantisInterstitialAdDelegate {

  // "" には、AdLantis管理画面で発行されたpublisher IDを記入してください。
  let interstitialAd = AdpressoInterstitialAd(publisherId:"Mjc3NzA%3D%0A")
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    interstitialAd?.delegate = self
    
    showInterstitialAd(nil)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    interstitialAd?.cancel()
  }
  
  @IBAction func showInterstitialAd(_ sender: AnyObject!) {
    interstitialAd?.show()
  }
  
  // MARK: AdlantisInterstitialAdDelegate methods
  func interstitialAdRequestComplete(_ interstitialAd: AdpressoInterstitialAd) {
    print("\(#function) \(interstitialAd)")
  }
  
  func interstitialAdRequestFailed(_ interstitialAd:AdpressoInterstitialAd) {
    print("\(#function) \(interstitialAd)")
  }
  
  func interstitialAdWillBePresented(_ interstitialAd: AdpressoInterstitialAd) {
    print("\(#function) \(interstitialAd)")
  }
  
  func interstitialAdWasDismissed(_ interstitialAd: AdpressoInterstitialAd) {
    print("\(#function) \(interstitialAd)")
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
