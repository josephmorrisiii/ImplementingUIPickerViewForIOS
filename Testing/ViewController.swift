//
//  ViewController.swift
//  Testing
//
//  Created by Joseph Morris on 3/19/19.
//  Copyright © 2019 Joseph Morris. All rights reserved.
//


//Before you can implement the pickerView you must link it to your code from main.storyboard
//It needs to be recognized on the main thread.
//Also you need to set the picker UIPickerView which I set to "picker" in the viewDidLoda() method to self, and add functions to satisfy protocols.
import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
   

    @IBOutlet weak var picker: UIPickerView!
    
    let pickerData = [["Joseph", "Morris", "III"], ["Hello","Beautiful","World"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.picker.dataSource = self
        self.picker.delegate = self
    }
    
    //The first 2 functions you must include to satisfy the protocol, and implement UIPickerView
    
    //Number of Columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    //Number of Rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //Title for Rows and Columns
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row][component]
    }
}

