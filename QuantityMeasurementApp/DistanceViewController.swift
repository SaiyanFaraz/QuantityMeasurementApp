//
//  DistanceViewController.swift
//  QuantityMeasurementApp
//
//  Created by Shabuddin on 19/04/22.
//

import UIKit

class DistanceViewController: UIViewController, UITextFieldDelegate {

    
//    @IBOutlet weak var meterTextFIeld: UITextField!
//    @IBOutlet weak var footTextField: UITextField!
//    @IBOutlet weak var yardTextField: UITextField!
//    @IBOutlet weak var kilometerTextField: UITextField!
//    @IBOutlet weak var mileTextField: UITextField!
    
    
    @IBOutlet var meterTextField: UITextField!
    @IBOutlet var footTextField: UITextField!
    @IBOutlet var yardTextField: UITextField!
    @IBOutlet var kiloMeterTextField: UITextField!
    @IBOutlet var mileTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.meterTextField.delegate = self
        self.footTextField.delegate = self
        self.yardTextField.delegate = self
        self.kiloMeterTextField.delegate = self
        self.mileTextField.delegate = self
    }
    
    @IBAction func meterInput(_ sender: UITextField) {
        let distance:Float? = Float(sender.text!)
        if distance != nil{
            let footValue = distance! * 3.28
            footTextField.text = String("feets: \(footValue)")
            let yardValue = distance! * 1.09361
            yardTextField.text = String("yard: \(yardValue) ")
            let kilometersValue = distance!  / 1000
            kiloMeterTextField.text = String("kilometers: \(kilometersValue) ")
            let milesValue = distance! * 0.00062137
            mileTextField.text = String("miles: \(milesValue)")
        }
    }
    
    @IBAction func footInput(_ sender: UITextField) {
        let distance:Float? = Float(sender.text!)
        if distance != nil{
            let meterValue = distance! / 3.28
            meterTextField.text = String("feets: \(meterValue)")
            let yardValue = distance! * 0.33
            yardTextField.text = String("yard: \(yardValue) ")
            let kilometersValue = distance! * 0.000305
            kiloMeterTextField.text = String("kilometers: \(kilometersValue) ")
            let milesValue = distance! / 5280
            mileTextField.text = String("miles: \(milesValue) ")
        }
    }
    
    @IBAction func yardInput(_ sender: UITextField) {
        let distance:Float? = Float(sender.text!)
        if distance != nil{
            let meterValue = distance! * 0.914
            meterTextField.text = String("feets: \(meterValue)")
            let footValue = distance! * 3
            yardTextField.text = String("yard: \(footValue) ")
            let kilometersValue = distance! * 0.0009144
            kiloMeterTextField.text = String("kilometers: \(kilometersValue) ")
            let milesValue = distance! / 1760
            mileTextField.text = String("miles: \(milesValue) ")
        }
    }
    
    @IBAction func kiloMeterInput(_ sender: UITextField) {
        let distance:Float? = Float(sender.text!)
        if distance != nil{
            let meterValue = distance! * 1000
            meterTextField.text = String("feets: \(meterValue)")
            let footValue = distance! * 3280.84
            footTextField.text = String("yard: \(footValue) ")
            let yardValue = distance! * 1093.61
            yardTextField.text = String("kilometers: \(yardValue) ")
            let milesValue = distance! * 0.62
            mileTextField.text = String("miles: \(milesValue) ")
        }
    }
    
    @IBAction func mileInput(_ sender: UITextField) {
        let distance:Float? = Float(sender.text!)
        if distance != nil{
            let meterValue = distance! * 1609.34
            meterTextField.text = String("feets: \(meterValue)")
            let footValue = distance! * 5280.00
            footTextField.text = String("yard: \(footValue) ")
            let yardValue = distance! * 1760.00
            yardTextField.text = String("kilometers: \(yardValue) ")
            let kilometersValue = distance! * 1.609
            kiloMeterTextField.text = String("kilometers: \(kilometersValue) ")
        }
    }
    
}
