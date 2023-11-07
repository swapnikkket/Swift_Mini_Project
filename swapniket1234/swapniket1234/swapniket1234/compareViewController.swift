import UIKit

class compareViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var brand1: [String] = ["iPhone", "RedMi", "Samsung", "Google", "Nothing"]
    var iPhone: [String] = ["iphone X", "iPhone 11", "iPhone 12", "iPhone 13"]
    var RedMi: [String] = ["RedMi 1", "Redmi 2", "Redmi 3", "Redmi 4"]
    var Samsung: [String] = ["Note 10", "S10", "Note 11", "S11"]
    var Google: [String] = ["Pixel 5", "Pixel 6", "Pixel 7", "Pixel 8"]
    var Nothing: [String] = ["Phone 1", "Phone 2", "Phone 3"]
    
    var imageMappings: [String: String] = [
        "iPhone": "iPhone",
        "RedMi": "Redmi",
        "Samsung": "Samsung",
        "Google": "Google",
        "Nothing": "Nothing"
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return brand1.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return iPhone.count
        case 1:
            return RedMi.count
        case 2:
            return Samsung.count
        case 3:
            return Google.count
        case 4:
            return Nothing.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return brand1[section]
    }
    
    var value: String?
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let text: String
        
        switch indexPath.section {
        case 0:
            text = iPhone[indexPath.row]
        case 1:
            text = RedMi[indexPath.row]
        case 2:
            text = Samsung[indexPath.row]
        case 3:
            text = Google[indexPath.row]
        case 4:
            text = Nothing[indexPath.row]
        default:
            text = ""
        }
        
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let brand: String
        let model: String
        
        switch indexPath.section {
        case 0:
            brand = "iPhone"
            model = iPhone[indexPath.row]
        case 1:
            brand = "RedMi"
            model = RedMi[indexPath.row]
        case 2:
            brand = "Samsung"
            model = Samsung[indexPath.row]
        case 3:
            brand = "Google"
            model = Google[indexPath.row]
        case 4:
            brand = "Nothing"
            model = Nothing[indexPath.row]
        default:
            brand = ""
            model = ""
        }
        
        if let imageList = imageMappings[brand] {
            if let modelIndex = brand1.firstIndex(of: brand), modelIndex < imageList.count {
                performSegue(withIdentifier: "showDetails", sender: (brand, imageList))
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails", let data = sender as? (String, String) {
            if let destination = segue.destination as? specificationViewController {
                destination.brandName = data.0
                destination.imageName = data.1
            }
        }
    }
}
