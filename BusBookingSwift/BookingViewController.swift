//
//  BookingViewController.swift
//  BusBookingSwift
//
//  Created by Anil Bunkar on 10/01/19.
//  Copyright © 2019 Adobe Systems. All rights reserved.
//

import UIKit
import AEPCore
import AEPEdge

class BookingViewController: UIViewController {

    @IBOutlet weak var nonStopButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let pageInfo = ["currentpage":"Sendevent-poc-trackstatefunction-BusBookHomePage", "logintype":"Sendevent-poc-trackstatefunction-simulator"]
        
        MobileCore.track(state: "Sendevent-poc-trackstatefunction-BusBookHomePage", data: pageInfo)
        
        let xdmData : [String:Any] = [
            "_experience": [
                "analytics": [
                    "customDimensions": [
                        "eVars": [
                            "eVar78": "Sendevent-poc-sendEventfunction-BusBookHomePage",
                            "eVar80": "Sendevent-poc-sendEventfunction-simulator"
                        ],
                        "props": [
                            "prop35": "Sendevent-poc-sendEventfunction-BusBookHomePage"
                        ]
                    ],
                    "event1to100": [
                        "event1": [
                            "value": 1
                        ]
                    ]
                ]
            ],
            "eventType": "PageViews"
        ]
        
        
        
        let event = ExperienceEvent(xdm: xdmData)
        Edge.sendEvent(experienceEvent: event)

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nonStopButtonToggled(_ sender: Any) {
        if self.nonStopButton.isSelected {
            self.nonStopButton.isSelected = false
        } else {
            self.nonStopButton.isSelected = true
            let clickInfo = ["currentpage":"Sendevent-poc-trackactionfunction-BusBookHomePage", "logintype":"Sendevent-poc-trackactionfunction-simulator"]
            
            
            MobileCore.track(action: "Sendevent-poc-trackactionfunction-BusBookHomePage", data: clickInfo)
            
            let xdmData : [String:Any] = [
                "_experience": [
                    "analytics": [
                        "customDimensions": [
                            "eVars": [
                                "eVar59": "Sendevent-poc-sendEventfunction-simulator",
                                "eVar78": "Sendevent-poc-sendEventfunction-BusBookHomePage"
                                
                            ],
                            "props": [
                                "prop35": "Sendevent-poc-sendEventfunction-BusBookHomePage"
                            ]
                        ],
                        "event1to100": [
                            "event92": [
                                "value": 1
                            ]
                        ]
                    ]
                ],
                "eventType": "click"
            ]
            
            let event = ExperienceEvent(xdm: xdmData)
            Edge.sendEvent(experienceEvent: event)
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
