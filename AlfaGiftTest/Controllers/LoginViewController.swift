//
//  ViewController.swift
//  AlfaGiftTest
//
//  Created by irfan wahendra on 24/01/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernamefield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let username = usernamefield.text, !username.isEmpty,
                  let password = passwordField.text, !password.isEmpty else {
                showAlert(message: "Username dan Password tidak boleh kosong")
                return
            }

            // Validasi username & password
            if username == "alfagift-admin" && password == "asdf" {
                // Login berhasil
                print("Login berhasil")
            } else {
                // Login gagal
                showAlert(message: "Username atau password salah")
            }
        }
    

}

