import Foundation
import UIKit

class TemperatureViewController: UIViewController,UITextFieldDelegate{
       
    @IBOutlet var celciusTextField: UITextField!
    @IBOutlet var farheniteTextField: UITextField!
    @IBOutlet var kelvinTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.celciusTextField.delegate = self
        self.farheniteTextField.delegate = self
        self.kelvinTextField.delegate = self
    }
    
    
    @IBAction func celciusInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let farheniteValue = (degree!*9)/5 + 32
            farheniteTextField.text = String("Farhenite: \(farheniteValue)")

            let kelvinValue = degree! + 273.15
            kelvinTextField.text = String("Kelvin: \(kelvinValue)")
        }
    }
    
    @IBAction func farheniteInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let celciusValue = (degree! - 32) * 5/9
            celciusTextField.text = String("Celcius: \(celciusValue)")

            let kelvinValue = (degree! - 32) * 5/9 + 273.15
            kelvinTextField.text = String("Kelvin: \(kelvinValue)")
        }
    }
    
    @IBAction func kelvinInput(_ sender: UITextField) {
        let degree:Float? = Float(sender.text!)
        if degree != nil{
            let celciusValue = (degree! - 237.15)
            celciusTextField.text = String("Celcius: \(celciusValue)")

            let farheniteValue = (degree!*9)/5 + 32
            farheniteTextField.text = String("Farhenite: \(farheniteValue)")
        }
    }
}
