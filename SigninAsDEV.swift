
//
//  Created by Apiphoom Chuenchompoo on 2020/5/23.
//  Copyright © 2020 ApiDevelopment. All rights reserved.
//
import UIKit


class SignInAsDEV: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBAction func Cancel(_ sender: Any) {
        
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func SignIN(_ sender: Any) {
        
        let Email = EmailTextField.text!
        let Password = PasswordTextField.text!
        
        if Email == "apiphoom23@gmail.com"{
            if Password == "ipadpro2327"{
                print("Success to login as Developer")
                performSegue(withIdentifier: "SignInDEV", sender: nil)
                
            }else{
                
                let alert = UIAlertController(title: "There was a problem", message: "Please make sure that your email and password is correct", preferredStyle: .alert)
                               let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                               alert.addAction(okButton)
                               self.present(alert, animated: true, completion: nil)
                 print("Failed to login as Developer")
                
            }
 
            
        }else{
            let alert = UIAlertController(title: "There was a problem", message: "Please make sure that your email and password is correct", preferredStyle: .alert)
                           let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
                           alert.addAction(okButton)
                           self.present(alert, animated: true, completion: nil)
              print("Failed to login as Developer")
            
        }
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmailTextField.delegate = self
        PasswordTextField.delegate = self
        EmailTextField.tag = 0
        PasswordTextField.tag = 0
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField{
               nextField.becomeFirstResponder()
           }else {
               textField.resignFirstResponder()
           }
           return false
       }
    
    
    
}
