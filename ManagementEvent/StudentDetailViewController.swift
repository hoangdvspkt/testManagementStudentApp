//
//  EventDetailViewController.swift
//  ManagementEvent
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {
    
    //showEvent
    var dateStudent: String?
    var student: Student?
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailText: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        detailText.text = student?.name
        dateLabel.text = dateStudent
        
    }
    
}
