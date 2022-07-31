//
//  MentorInfoViewController.swift
//  itMentors
//
//  Created by Renat Ibragimov on 31.07.2022.
//

import UIKit

class MentorInfoViewController: UIViewController {
    
    //let mentor: Mentor!
    
    @IBOutlet var mentorPhotoImageView: UIImageView!

    @IBOutlet var mentorNameLabel: UILabel!
    @IBOutlet var devLanguageLabel: UILabel!
    @IBOutlet var experienceLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mentorDataSetup()
    }

    
    private func mentorDataSetup() {
        mentorPhotoImageView.layer.cornerRadius = mentorPhotoImageView.frame.height / 2
        //mentorNameLabel.text = "\(mentor.name)  \(mentor.surname)"
        mentorPhotoImageView.image = UIImage(named: "")
    }
}
