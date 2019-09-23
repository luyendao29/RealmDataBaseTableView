//
//  ViewController.swift
//  RealmDataBaseTableView
//
//  Created by Boss on 9/23/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var contryTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickSave(_ sender: Any) {
        let name = self.nameTextField.text
        let age = self.ageTextField.text
        let contry = self.contryTextField.text
        
        let newStudent = Student()
        newStudent.setValue(self.nameTextField.text, forKey: "studentname")
        newStudent.setValue(self.ageTextField.text, forKey: "studentage")
        newStudent.setValue(self.contryTextField.text, forKey: "studentcontry")
        
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(newStudent)
                print("Add new \(newStudent.studentName) to realm DataBase")
                
                self.nameTextField.text = ""
                self.ageTextField.text = ""
                self.contryTextField.text = ""
            }
            
        }catch{
            print(error)
        }
        
    }
    
    @IBAction func ClickShow(_ sender: Any) {
        
    }
}

