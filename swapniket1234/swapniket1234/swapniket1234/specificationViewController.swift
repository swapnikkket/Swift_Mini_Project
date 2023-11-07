//
//  specificationViewController.swift
//  swapniket1234
//
//

import UIKit

class specificationViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var imageName: String?
    var brandName: String?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            if let imageName = imageName, let brandName = brandName {
                imageView.image = UIImage(named: imageName)
                textLabel.text = brandName
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
