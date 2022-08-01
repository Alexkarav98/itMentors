//
//  SearchResultsViewController.swift
//  itMentors
//
//  Created by Иван Дрожжин on 31.07.2022.
//

import UIKit

class SearchResultsViewController: UITableViewController {
    
    var mentorsList: [Mentor]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mentorsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mentorCell", for: indexPath)

        let mentor = mentorsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        cell.frame.size.height = 100
        
        content.image = UIImage(named: mentor.image)
        content.imageProperties.cornerRadius = cell.frame.height / 2
        content.text = mentor.fullname

        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let mentorDetailsVC = segue.destination as? MentorDetailsTabBarController else { return }
            mentorDetailsVC.mentor = mentorsList[indexPath.row]
        }
    }
}
