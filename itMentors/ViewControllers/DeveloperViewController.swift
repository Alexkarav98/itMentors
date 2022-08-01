//
//  DeveloperViewController.swift
//  itMentors
//
//  Created by Maxim Datsuk on 02.08.2022.
//

import UIKit

class DeveloperViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var cityTextField: UILabel!
    @IBOutlet var telegramButton: UIButton!
    
    var developer: Developer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = developer.fullname
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        photoImageView.image = UIImage(named: developer.fullname)
        cityTextField.text = "г. \(developer.city)"
    }
    
    @IBAction func telegramButtonTapped(_ sender: Any) {
        if let telegramUrl = URL(string: "http://t.me/\(developer.telegram)") {
            UIApplication.shared.open(telegramUrl, options: [:], completionHandler: nil)
        }
    }
}