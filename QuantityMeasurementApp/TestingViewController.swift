//
//  TestingViewController.swift
//  QuantityMeasurementApp
//
//  Created by Shabuddin on 18/04/22.
//

import Foundation
import UIKit

class TestingViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var testingfield: UITextField!
    
    @IBOutlet weak var testingTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.testingTextField.delegate = self

    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("textFieldDidEndEditing")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("textFieldDidChangeSelection")
    }
    
    
    @IBAction func textinput(_ sender: UITextField) {
        print("Text Input")
    }
    
}
