//
//  ViewController.swift
//  TeamProject
//
//  Created by Andrey Markov on 2020-09-13.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var quizes : [Quiz] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        quizes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "quizName", for: indexPath)
        
        let quiz = quizes[indexPath.row]
        cell.textLabel?.text = quiz.quizName
        cell.imageView?.image = UIImage(named: quiz.quizName)

        return cell
    }
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let email = data.emails[indexPath.row]
//        performSegue(withIdentifier: "showDetails", sender: email)
//    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            let quizVC = segue.destination as! QuizViewController
            quizVC.quiz = quizes[indexPath.row]
            
        }
        


}
}

