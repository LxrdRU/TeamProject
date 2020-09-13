//
//  QuizViewController.swift
//  TeamProject
//
//  Created by Andrey Markov on 2020-09-13.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    var quiz:Quiz!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = quiz.quizName
        nameLabel.text = quiz.quizName
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
