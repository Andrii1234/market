//
//  AccountViewController.swift
//  market
//
//  Created by Andrii Kolosov on 6/10/19.
//  Copyright © 2019 Andrii Kolosov. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, UITextFieldDelegate {

    let nameLabel = UILabel()
    let surnameLabel = UILabel()
    let mailLabel = UILabel()
    let passwoldLabel = UILabel()
    
    let nameTextFild = UITextField()
    let surnameTextFild = UITextField()
    let mailTextFild = UITextField()
    let passwoldTextFild = UITextField()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TabBarItem()
        
        //Label
        NameLabel()
        SurnameLabel()
        MailLabel()
        PasswoldLabel()
        
        //TextFild
        NameTextFild()
        SurnameTextFild()
        MailTextFild()
        PasswoldTextFild()
        
        nameTextFild.delegate = self
        surnameTextFild.delegate = self
        mailTextFild.delegate = self
        passwoldTextFild.delegate = self
        
        
    }
    
    
    //MARK: - TabBarItem and navigationItem
    fileprivate func TabBarItem() {
        self.navigationItem.title = "account"
        
        let tabBarItem = UITabBarItem()
        tabBarItem.image = #imageLiteral(resourceName: "user-3")
        tabBarItem.title = "account"
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = UIColor.white
    }


    //MARK: - Label
    fileprivate func NameLabel() {
        let labelFrame = CGRect(x: 50, y: 100, width: 100, height: 31)
        
        nameLabel.frame = labelFrame
        nameLabel.text = "name:"
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(nameLabel)
    }

    fileprivate func SurnameLabel() {
        let labelFrame = CGRect(x: 50, y: 175, width: 100, height: 31)
        
        surnameLabel.frame = labelFrame
        surnameLabel.text = "surname:"
        surnameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(surnameLabel)
    }
    
    
    fileprivate func MailLabel() {
        let labelFrame = CGRect(x: 50, y: 250, width: 100, height: 31)
        
        mailLabel.frame = labelFrame
        mailLabel.text = "mail:"
        mailLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(mailLabel)
    }
    
    fileprivate func PasswoldLabel() {
        let labelFrame = CGRect(x: 50, y: 325, width: 100, height: 31)
        
        passwoldLabel.frame = labelFrame
        passwoldLabel.text = "passwold:"
        passwoldLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(passwoldLabel)
    }
    
    
    //MARK: - TextFild
    fileprivate func NameTextFild() {
        let textFildFrame = CGRect(x: 150, y: 100, width: 200, height: 31)
        
        nameTextFild.frame = textFildFrame
        nameTextFild.textAlignment = .center
        nameTextFild.borderStyle = .roundedRect
        nameTextFild.placeholder = "name"
        
        view.addSubview(nameTextFild)
    }
    
    
    fileprivate func SurnameTextFild() {
        let textFildFrame = CGRect(x: 150, y: 175, width: 200, height: 31)
        
        surnameTextFild.frame = textFildFrame
        surnameTextFild.textAlignment = .center
        surnameTextFild.borderStyle = .roundedRect
        surnameTextFild.placeholder = "surname"
        view.addSubview(surnameTextFild)
    }
    
    
    fileprivate func MailTextFild() {
        let textFildFrame = CGRect(x: 150, y: 250, width: 200, height: 31)
        
        mailTextFild.frame = textFildFrame
        mailTextFild.textAlignment = .center
        mailTextFild.borderStyle = .roundedRect
        mailTextFild.placeholder = "mail"
        view.addSubview(mailTextFild)
    }
    
    fileprivate func PasswoldTextFild() {
        let textFildFrame = CGRect(x: 150, y: 325, width: 200, height: 31)
        
        passwoldTextFild.frame = textFildFrame
        passwoldTextFild.textAlignment = .center
        passwoldTextFild.borderStyle = .roundedRect
        passwoldTextFild.placeholder = "passwold"
        view.addSubview(passwoldTextFild)

    }
    
    
    //MARK: - UITextFieldDelegate
    
    //?
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn = ввод в строку = \(string)")
        return true
    }
    
    /*
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
    print("textFieldShouldClear = поменяли значение, чтото отчистили")
    return true
    }
    */
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn = убирает клавиатурту")
            self.nameTextFild.resignFirstResponder()
            self.surnameTextFild.resignFirstResponder()
            self.mailTextFild.resignFirstResponder()
            self.passwoldTextFild.resignFirstResponder()
        return true
    }

    
    
}
