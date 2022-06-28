//
//  WeightViewController.swift
//  QuantityMeasurementApp
//
//  Created by Shabuddin on 18/04/22.
//

import UIKit

class WeightViewController: UIViewController, UITextFieldDelegate {

//    @IBOutlet weak var gramTextField: UITextField!
//    @IBOutlet weak var kiloGramTextField: UITextField!
//    @IBOutlet weak var poundTextField: UITextField!
//    @IBOutlet weak var OunceTextField: UITextField!
    
    @IBOutlet var gramTextField: UITextField!
    @IBOutlet var kilogramTextField: UITextField!
    @IBOutlet var poundTextField: UITextField!
    @IBOutlet var ounceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gramTextField.delegate = self
        self.kilogramTextField.delegate = self
        self.poundTextField.delegate = self
        self.ounceTextField.delegate = self
}

  
    @IBAction func gramInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let KilogramsValue = degree! / 1000
            kilogramTextField.text = String("Kilograms: \(KilogramsValue)")
            let poundsValue = degree! * 0.0022046
            poundTextField.text = String("Pounds: \(poundsValue) ")
            let ouncesValue = degree!  / 28.3495
            ounceTextField.text = String("Ounces: \(ouncesValue) ")
        }
    }
    
    @IBAction func kilogramInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let gramsValue = degree! * 1000
            gramTextField.text = String("Grams: \(gramsValue) ")
            let ouncesValue = degree! * 35.274
            ounceTextField.text = String("Ounces: \(ouncesValue) ")
            let poundsValue = degree!  * 2.20462
            poundTextField.text = String("Pounds: \(poundsValue) ")
        }
    }
    @IBAction func poundInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let gramsValue = degree! / 0.0022046
            gramTextField.text = String("Grams: \(gramsValue) ")
            let KilogramsValue = degree! / 2.2046
            kilogramTextField.text = String("Kilograms: \(KilogramsValue) ")
            let ouncesValue = degree!  * 16
            ounceTextField.text = String("Ounces: \(ouncesValue) ")
       }
    }
    
    @IBAction func ounceInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let gramsValue = degree! * 28.3495
            gramTextField.text = String("Grams: \(gramsValue) ")
            let KilogramsValue = degree! * 0.028349500000294
            kilogramTextField.text = String("Kilograms: \(KilogramsValue) ")
            let poundsValue = degree! * 0.0625
            poundTextField.text = String("pounds: \(poundsValue) ")
        }
    }
}
