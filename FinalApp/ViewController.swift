//
//  ViewController.swift
//  FinalApp
//
//  Created by Daksh on 02/02/23.
//

import UIKit

class ViewController:
    UIViewController, UITextFieldDelegate  {
    var isPassVisible = false
    @IBOutlet weak var stackTextField: UIStackView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dobTextField: UITextField!
    
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var dobView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    
    @IBOutlet weak var passwordVisible: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        dobTextField.delegate = self
        
        
        var tap = UITapGestureRecognizer(target: self, action: #selector(self.isPasswordVisible))
        passwordVisible.isUserInteractionEnabled = true
        passwordVisible.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        customUI2()
        
    }
    func customUI2() {
        stackTextField.backgroundColor = .clear
        
        nameView.backgroundColor = .clear
        emailView.backgroundColor = .clear
        passwordView.backgroundColor = .clear
        dobView.backgroundColor = .clear
        nameLabel.textColor = UIColor(named: "Blue")
        emailLabel.textColor = UIColor(named: "Blue")
        passwordLabel.textColor = UIColor(named: "Blue")
        dobLabel.textColor = UIColor(named: "Blue")
        nameLabel.backgroundColor = .white
        emailLabel.backgroundColor = .white
        passwordLabel.backgroundColor = .white
        dobLabel.backgroundColor = .white
        nameLabel.alpha = 0
        emailLabel.alpha = 0
        //passwordLabel.isHidden = true
        passwordLabel.alpha = 0
        dobLabel.alpha = 0
        setDefaultPlaceholder()
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.nameLabel.alpha = 0
        })
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.emailLabel.alpha = 0
        })
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.passwordLabel.alpha = 0
        })
        UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
            self.dobLabel.alpha = 0
        })
        setDefaultPlaceholder()
        nameTextField.layer.borderColor = UIColor(named: "Grey")?.cgColor
        emailTextField.layer.borderColor = UIColor(named: "Grey")?.cgColor
        passwordTextField.layer.borderColor = UIColor(named: "Grey")?.cgColor
        dobTextField.layer.borderColor = UIColor(named: "Grey")?.cgColor
        if textField == nameTextField{
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.nameLabel.alpha = 1
            })
            nameTextField.layer.borderColor = UIColor(named: "Blue")?.cgColor
            nameTextField.placeholder = ""
        }
        if textField == emailTextField{
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.emailLabel.alpha = 1
            })
            emailTextField.layer.borderColor = UIColor(named: "Blue")?.cgColor
            emailTextField.placeholder = ""
        }
        if textField == passwordTextField{
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.passwordLabel.alpha = 1
            })
            passwordTextField.layer.borderColor = UIColor(named: "Blue")?.cgColor
            passwordTextField.placeholder = ""
        }
        if textField == dobTextField{
            UIView.animate(withDuration: 0.2, delay: 0, options: .curveEaseIn, animations: {
                self.dobLabel.alpha = 1
            })
            dobTextField.layer.borderColor = UIColor(named: "Blue")?.cgColor
            dobTextField.placeholder = ""
        }
    }
    func setDefaultPlaceholder(){
        nameTextField.placeholder = "Name"
        emailTextField.placeholder = "Email"
        passwordTextField.placeholder = "Password"
        dobTextField.placeholder = "Date Of Birth"
    }
    @objc func isPasswordVisible(sender: UITapGestureRecognizer){
        if(isPassVisible){
            passwordTextField.isSecureTextEntry = isPassVisible
            isPassVisible = false
            passwordVisible.image = UIImage(systemName: "eye.slash")
        }
        else{
            passwordTextField.isSecureTextEntry = isPassVisible
            isPassVisible = true
            passwordVisible.image = UIImage(systemName: "eyes.inverse")
        }
    }

}

