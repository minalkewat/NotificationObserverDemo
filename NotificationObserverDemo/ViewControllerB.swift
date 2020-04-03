//
//  ViewControllerB.swift
//  NotificationObserverDemo
//
//  Created by apple on 03/04/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

   NotificationCenter.default.addObserver(self, selector: #selector(receivedNotification(notification:)), name: NSNotification.Name(rawValue: "notification1"), object: nil)
                     
                
                 }
                 
                 @objc func receivedNotification(notification:Notification){
                     print("received notification from view controller C in controller B")
                 }
    
    

    @IBAction func goToBackAction(_ sender: UIButton) {

        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notification"), object: nil, userInfo: nil)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func goToNextAction(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "vcC") as? ViewControllerC
        present(vc!, animated: true, completion: nil)
    }
}
