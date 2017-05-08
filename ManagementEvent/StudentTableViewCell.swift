//
//  EventTableViewCell.swift
//  ManagementEvent
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDetailLabel: UILabel!
    
    func configureCellWith(student: Student) {
        
        eventTitleLabel.text = student.name
        eventDetailLabel.text = student.yearold
        
    }
    
}
