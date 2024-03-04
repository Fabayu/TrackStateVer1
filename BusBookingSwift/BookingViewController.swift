//
//  BookingViewController.swift
//  BusBookingSwift
//
//  Created by Anil Bunkar on 10/01/19.
//  Copyright © 2019 Adobe Systems. All rights reserved.
//

import UIKit
import AEPCore

class BookingViewController: UIViewController {

    @IBOutlet weak var nonStopButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        let pageInfo = ["currentpage":"trackState-poc-BusBookHomePage", "logintype":"trackState-poc-simulator"]
        
        MobileCore.track(state: "trackState-poc-BusBookHomePage", data: pageInfo)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nonStopButtonToggled(_ sender: Any) {
        if self.nonStopButton.isSelected {
            self.nonStopButton.isSelected = false
        } else {
            self.nonStopButton.isSelected = true
            let clickInfo = ["currentpage":"trackAction-poc-BusBookHomePage", "logintype":"trackAction-poc-simulator-toggle"]
            
            MobileCore.track(action: "trackAction-poc-BusBookHomePage", data: clickInfo)
            
                
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

