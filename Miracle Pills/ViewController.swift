//
//  ViewController.swift
//  Miracle Pills
//
//  Created by mor sigler on 10/06/2017.
//  Copyright © 2017 mor sigler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerbtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var enterYourCountry: UITextField!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var enterYourZipCode: UITextField!
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var enterYourCity: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterStreet: UITextField!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var enterYourFullName: UITextField!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var pillsPrice: UILabel!
    @IBOutlet weak var pillsTitle: UILabel!
    @IBOutlet weak var pillsImage: UIImageView!
    @IBOutlet weak var state: UILabel!
    let states = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut",
        "Delaware",
        "Florida",
        "Georgia",
        "Hawaii",
        "Idaho",
        "Illinois Indiana",
        "Iowa",
        "Kansas",
        "Kentucky",
        "Louisiana",
        "Maine",
        "Maryland",
        "Massachusetts",
        "Michigan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipCode.isHidden = true
        enterYourZipCode.isHidden = true
        buyNowBtn.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerbtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        country.isHidden = false
        enterYourCountry.isHidden = false
        zipCode.isHidden = false
        enterYourZipCode.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        successImage.isHidden = false
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipCode.isHidden = true
        enterYourZipCode.isHidden = true
        buyNowBtn.isHidden = true
        statePicker.isHidden = true
        statePickerbtn.isHidden = true
        pillsImage.isHidden = true
        pillsPrice.isHidden = true
        pillsTitle.isHidden = true
        divider.isHidden = true
        fullName.isHidden = true
        enterYourFullName.isHidden = true
        street.isHidden = true
        enterStreet.isHidden = true
        city.isHidden = true
        enterYourCity.isHidden = true
        state.isHidden = true
    }
}

