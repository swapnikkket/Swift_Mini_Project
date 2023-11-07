//
//  ViewController.swift
//  swapniket1234
//
//  Created by SUMIT RAJ on 04/11/23.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        password.isSecureTextEntry = true

        // Do any additional setup after loading the view.
    }

    @IBAction func bt1(_ sender: Any) {
        if(username.text == "12006739" && password.text == "12006739" ){
            performSegue(withIdentifier: "home", sender: nil)
            
        }
        else {
            let alert1 = UIAlertController(title: "Warning", message: "Data is complete", preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "ok", style: .default, handler:nil))
            self.present(alert1,animated: true,completion: nil)

                        
        }
    }
}

