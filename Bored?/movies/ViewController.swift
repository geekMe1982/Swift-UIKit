//
//  ViewController.swift
//  movies
//
//  Created by Adam Khalifa on 04.01.2022.
//

import UIKit
import Foundation

struct Activity: Decodable {
    var activity: String
    var type: String
    var participants: Int
    var price: Double
    var link: String
}

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "https://www.boredapi.com/api/activity"
        guard let url = URL(string: urlString) else {return}

        button.backgroundColor = .lightGray
        button.layer.cornerRadius = 5

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            guard error == nil else{return}
            do {
                let JSONData = try JSONDecoder().decode(Activity.self, from: data)
                DispatchQueue.main.async {
                    self.label.text = "+\(JSONData.activity)+"
                           }
            } catch let error {
                print(error)
            }
        }.resume()
    }

}
