import UIKit

class CompareSpecificationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    @IBOutlet weak var specsTextView1: UITextView!
    @IBOutlet weak var specsTextView2: UITextView!

    var phoneData1: [String] = ["iPhone X", "Samsung S10", "Google Pixel 5"]
        var phoneData2: [String] = ["iPhone 11", "Samsung S11", "Google Pixel 6"]

        var specifications: [String: String] = [
            "iPhone X": "Display: Screen Size: 5.8 inches Display Type: Super Retina OLED Resolution: 1125 x 2436 pixels Pixel Density: 458 ppi Performance: Processor: Apple A11 Bionic RAM: 3 GB Storage Options: 64GB, 256GBCamera:Rear Camera: Dual 12 MP (Wide and Telephoto)Front Camera: 7 MP TrueDepthVideo Recording: 4K at 60 fps",
            "Samsung S10": "Display: 6.1-inch Dynamic AMOLED, 1440 x 3040 pixels, 550 ppiPerformance: Exynos 9820/Snapdragon 855, 8GB RAM Camera: Triple 12 MP (wide), 12 MP (telephoto), 16 MP (ultrawide)",
            "Google Pixel 5": "Display: 6.0-inch OLED, 1080 x 2340 pixels, 432 ppiPerformance: Qualcomm Snapdragon 765G, 8GB RAM Camera: Dual 12.2 MP (wide), 16 MP (ultrawide)",
            "iPhone 11": "Display: Screen Size: 5.8 inches Display Type: Super Retina OLED Resolution: 1125 x 2436 pixels Pixel Density: 458 ppi Performance: Processor: Apple A11 Bionic RAM: 3 GB Storage Options: 64GB, 256GBCamera:Rear Camera: Dual 12 MP (Wide and Telephoto)Front Camera: 7 MP TrueDepthVideo Recording: 4K at 60 fps",
            "Samsung S11": "Display: 6.1-inch Dynamic AMOLED, 1440 x 3040 pixels, 550 ppiPerformance: Exynos 9820/Snapdragon 855, 8GB RAM Camera: Triple 12 MP (wide), 12 MP (telephoto), 16 MP (ultrawide)",
            "Google Pixel 6": "Display: 6.0-inch OLED, 1080 x 2340 pixels, 432 ppiPerformance: Qualcomm Snapdragon 765G, 8GB RAM Camera: Dual 12.2 MP (wide), 16 MP (ultrawide)"
        ]

        override func viewDidLoad() {
            super.viewDidLoad()

            tableView1.delegate = self
            tableView1.dataSource = self
            tableView2.delegate = self
            tableView2.dataSource = self
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if tableView == tableView1 {
                return phoneData1.count
            } else if tableView == tableView2 {
                return phoneData2.count
            }
            return 0
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            if tableView == tableView1 {
                cell.textLabel?.text = phoneData1[indexPath.row]
            } else if tableView == tableView2 {
                cell.textLabel?.text = phoneData2[indexPath.row]
            }
            return cell
        }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if tableView == tableView1 {
                let selectedPhone = phoneData1[indexPath.row]
                if let specifications = getSpecifications(for: selectedPhone) {
                    specsTextView1.text = (specsTextView1.text ?? "") + "\n\n" + specifications
                }
            } else if tableView == tableView2 {
                let selectedPhone = phoneData2[indexPath.row]
                if let specifications = getSpecifications(for: selectedPhone) {
                    specsTextView2.text = (specsTextView2.text ?? "") + "\n\n" + specifications
                }
            }
        }

        func getSpecifications(for phone: String) -> String? {
            return specifications[phone]
        }
}
