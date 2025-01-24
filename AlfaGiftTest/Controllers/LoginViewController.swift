//
//  ViewController.swift
//  AlfaGiftTest
//
//  Created by irfan wahendra on 24/01/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    // MARK: - Properties
    private var isPasswordVisible: Bool = false
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - UI configure
    private func configureUI() {
        passwordTextField.isSecureTextEntry = true
        let showHideButton = UIButton(type: .custom)
        showHideButton.setImage(UIImage(systemName: "eye"), for: .normal)
        showHideButton.setImage(UIImage(systemName: "eye.slash"), for: .selected)
        showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        usernameTextField.layer.cornerRadius = 8
        passwordTextField.layer.cornerRadius = 8
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        usernameTextField.clipsToBounds = true
        passwordTextField.clipsToBounds = true
        passwordTextField.rightView = showHideButton
        passwordTextField.rightViewMode = .always
        loginButton.layer.cornerRadius = 8
        loginButton.clipsToBounds = true
    }
    
    @objc private func togglePasswordVisibility(_ sender: UIButton) {
        isPasswordVisible.toggle() // Ubah status visibility
        passwordTextField.isSecureTextEntry = !isPasswordVisible // Ubah properti
        sender.isSelected = isPasswordVisible // Ubah tampilan tombol (eye)
    }
    
    //MARK: - Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let username = usernameTextField.text, !username.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(message: "username & password can't be ! Please enter")
            return
        }
        
        // Validasi Input
        if username == "alfagift-admin" && password == "asdf" {
            let studentListVC = storyboard?.instantiateViewController(withIdentifier: "ListStudentViewController") as! ListStudentViewController
            navigationController?.pushViewController(studentListVC, animated: true)
        } else {
            showAlert(message: "Invalid Username or Password.")
        }
    }
    
    //MARK: - Helper
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

