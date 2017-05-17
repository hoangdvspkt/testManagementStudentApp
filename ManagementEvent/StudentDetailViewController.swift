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
    @IBOutlet var nameLabelDetail: UILabel!
    @IBOutlet var universityLabelDetail: UILabel!
    @IBOutlet var descriptionLabelDetail: UILabel!
    @IBOutlet var yearOldLabelDetail: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        dateLabel.text = dateStudent
        nameLabelDetail.text = student?.name
        universityLabelDetail.text = student?.university
        descriptionLabelDetail.text = student?.description
        yearOldLabelDetail.text = student?.yearold
        
        
    }
    
}
