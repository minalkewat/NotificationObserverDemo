//
//  ViewControllerA.swift
//  NotificationObserverDemo
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(receivedNotification(notification:)), name: NSNotification.Name(rawValue: "notification"), object: nil)
        
   
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "notification"), object: nil)
         print("notification observer remove in A")
    }
    
    @objc func receivedNotification(notification:Notification){
        print("received notification from view controller B in Controller A")
    }
    
   @IBAction func goToNextAction(_ sender: UIButton) {
    let storybord = UIStoryboard(name: "Main", bundle: nil)
    let vc = storybord.instantiateViewController(identifier: "vcB") as? ViewControllerB
    present(vc!, animated: true, completion: nil)
    }

}
