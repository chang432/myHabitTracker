//
//  TableViewController.swift
//  myHabitTracker
//
//  Created by Andre Chang on 7/24/18.
//  Copyright © 2018 Andre Chang. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var addHabitBtn: UIBarButtonItem!
    var habits: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        habits.append("excersizing :DDD");
        habits.append("eating fruits everyday");
        habits.append("flossing")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return habits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = habits[indexPath.row]
        
        return cell
    }

    @IBAction func addHabitPress(_ sender: Any) {
        performSegue(withIdentifier: "addHabit", sender: nil)
    }

}
