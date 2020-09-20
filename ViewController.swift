//
//  ViewController.swift
//  UIAllertControllerTEST
//
//  Created by Игорь Козлов on 20.09.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mylable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ShowButton(_ sender: Any) {
        let myAlert = UIAlertController(title: "Enter name", message: nil, preferredStyle: .alert)
        myAlert.addTextField { (textField) in
            textField.placeholder = "Name"
            //textField.isSecureTextEntry = true //for enter hideen text
        }
        let action1 = UIAlertAction(title: "Ok", style: .cancel) { (alertAction) in
            self.mylable.text = myAlert.textFields?.first?.text
            
        }
        let action2 = UIAlertAction(title: "Cancle", style: .destructive, handler: nil)
        
        myAlert.addAction(action2)
        myAlert.addAction(action1)
        
        self.present(myAlert, animated: true, completion: nil)
    }
    
    
    @IBAction func actionSheetButton(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "To do first task", style: .default) { (_) in
            print("1 task is completed")
        }
        
        let action2 = UIAlertAction(title: "To do second task", style: .default) { (_) in
            print("2 task is comleted")
        }
        
        alert.addAction(action1)
        alert.addAction(action2 )
        
        let action3 = UIAlertAction(title: "Cancel", style: .cancel) { (_) in
            print("Cancele action sheet")
        }
        
        alert.addAction(action3)
        self.present(alert, animated: true, completion: nil)
    }
    
}

