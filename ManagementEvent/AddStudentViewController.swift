//
//  AddStudentViewController.swift
//  ManagementEvent
//
//  Created by Cntt29 on 5/17/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import UIKit

class AddStudentViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var universityTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var yearOldTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        if nameTextField.text!.isEmpty || universityTextField.text!.isEmpty ||  descriptionTextField.text!.isEmpty ||  yearOldTextField.text!.isEmpty {
            //thông báo
            let alert = UIAlertController(title: "Thông Báo", message: "Thiếu thông tin", preferredStyle: UIAlertControllerStyle.alert);
            //Cho lựa chọn
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            //Hiển thị thông báo
            self.present(alert, animated: true, completion: nil);
            
        }
        else {
            Constants.isLoadDataAgain = true
            let student: Student = Student(named: nameTextField.text!, universities: universityTextField.text!, descriptions: descriptionTextField.text!, yearolded:(yearOldTextField.text!))
            Constants.student = student
            self.navigationController?.popViewController(animated: true)
        }
    }

}
