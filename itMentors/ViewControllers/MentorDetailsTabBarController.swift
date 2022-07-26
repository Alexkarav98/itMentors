//
//  MentorDetailsTabBarControllerViewController.swift
//  itMentors
//
//  Created by Renat Ibragimov on 01.08.2022.
//

import UIKit

class MentorDetailsTabBarController: UITabBarController {
    
    var mentor: Mentor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let mentorVC = viewControllers?.first as? MentorInfoViewController else { return }
        guard let navigationVC = viewControllers?.last as? UINavigationController else { return }
        guard let reviewsVC = navigationVC.topViewController as? ReviewTableViewController else { return }
        
        mentorVC.mentor = mentor
        reviewsVC.mentor = mentor
    }
}
