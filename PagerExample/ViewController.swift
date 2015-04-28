//
//  ViewController.swift
//  PagerExample
//
//  Created by Lucas Coelho on 4/28/15.
//  Copyright (c) 2015 Lucas Coelho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var label : UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func viewWillAppear(animated: Bool) {
    label.text = "View's height: \(view.frame.height)"
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

// MARK: - DMPagerViewControllerProtocol
extension ViewController: DMPagerViewControllerProtocol {
  func pagerItem() -> DMPagerNavigationBarItem  {
    let navBarItem = DMPagerNavigationBarItem.newItemWithText(NSAttributedString(string:"test"), andIcon:nil)
    navBarItem.renderingMode = .OnlyText;
    
    return navBarItem
  }
}