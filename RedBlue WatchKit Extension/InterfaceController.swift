//
//  InterfaceController.swift
//  RedBlue WatchKit Extension
//
//  Created by Craig Martin on 4/4/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var descriptionLabel: WKInterfaceLabel!
    @IBOutlet weak var myGroup: WKInterfaceGroup!
    @IBOutlet weak var colorSwitch: WKInterfaceSwitch!
    @IBOutlet weak var resetButton: WKInterfaceButton!
    @IBOutlet weak var sliderSwitch: WKInterfaceSlider!
    
    
    var colorIndex:String = "Blue"
    let initialSliderValue:Float = 10.0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func colorSwitchPressed(value: Bool) {
        if colorIndex == "Blue" {
            myGroup.setBackgroundColor(UIColor.redColor())
            descriptionLabel.setText("Hot")
            colorIndex = "Red"
            descriptionLabel.setTextColor(UIColor.whiteColor())
        } else {
            myGroup.setBackgroundColor(UIColor.cyanColor())
            descriptionLabel.setText("Cold")
            descriptionLabel.setTextColor(UIColor.blackColor())
            colorIndex = "Blue"
        }
        
    }
    
    @IBAction func sliderButtonPressed(value: Float) {
        myGroup.setAlpha(CGFloat(value)/10)
    }
    
    @IBAction func resetButtonPressed() {
        myGroup.setBackgroundColor(UIColor.cyanColor())
        descriptionLabel.setText("Cold")
        self.colorIndex = "Blue"
        descriptionLabel.setTextColor(UIColor.blackColor())
        sliderSwitch.setValue(initialSliderValue)
        myGroup.setAlpha(CGFloat(initialSliderValue)/10)
    }
    
}
