//
//  HomeViewController.swift
//  swapniket1234
//
//  Created by SUMIT RAJ on 05/11/23.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!

    var imageIndex = 0
    let imageNames = ["Google", "iPhone", "Nothing", "Redmi", "Samsung"]
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(rotateImage), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
    }
    
    @objc func rotateImage() {
        if imageIndex < imageNames.count {
            img.image = UIImage(named: imageNames[imageIndex])
            imageIndex += 1
        } else {
            imageIndex = 0
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
