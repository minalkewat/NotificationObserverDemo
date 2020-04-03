//
//  ViewControllerC.swift
//  NotificationObserverDemo
//
//  Created by apple on 04/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    deinit {
             NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "notification1"), object: nil)
          print("notification observer remove in C")
    }
          

    @IBAction func goToBackAction(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notification1"), object: nil, userInfo: nil)
        dismiss(animated: true, completion: nil)
    }
}
