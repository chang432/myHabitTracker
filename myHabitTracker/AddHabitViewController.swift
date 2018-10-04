//
//  AddHabitViewController.swift
//  myHabitTracker
//
//  Created by Andre Chang on 7/26/18.
//  Copyright © 2018 Andre Chang. All rights reserved.
//

import UIKit

class AddHabitViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var newHabitTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newHabitTxtField.delegate = self
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func handleTap() {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func startBtnPress(_ sender: Any) {
        performSegue(withIdentifier: "backToTableView", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //let destNav:
        //let dest: TableViewController = segue.destination as! TableViewController
        //dest.habits.append(self.newHabitTxtField.text!)
    }

}
