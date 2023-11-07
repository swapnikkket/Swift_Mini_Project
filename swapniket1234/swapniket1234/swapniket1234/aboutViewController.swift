//
//  aboutViewController.swift
//  swapniket1234
//
//  Created by SUMIT RAJ on 04/11/23.
//

import UIKit

class aboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var web1: UIWebView!
    

    @IBAction func bt2(_ sender: Any) {
        var urlString1 = URL(string: "https://youtu.be/xlymVXIle1k")
        var urlReq1 = URLRequest(url: urlString1!)
        web1.loadRequest(urlReq1)
        
        
    }
}
