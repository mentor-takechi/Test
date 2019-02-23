//
//  ToolbarTestViewController.swift
//  Test
//
//  Created by take on 2019/02/04.
//  Copyright © 2019 mentor-takechi. All rights reserved.
//

import UIKit

class ToolbarTestViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var picker2: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        picker1.delegate = self
        picker2.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView {
        case picker1:
            print("picker1")
        case picker2:
            print("picker2")
        default:
            print("other")
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
    @IBAction func push(_ sender: Any) {
        print("push")
    }
    @IBAction func pushCancel(_ sender: Any) {
        dismiss(animated: false)
    }
    
}
