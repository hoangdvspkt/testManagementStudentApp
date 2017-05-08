//
//  EventTableViewController.swift
//  ManagementEvent
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {
    
    lazy var studentLines: [StudentLine] = {
        
        //createEventArray
        return StudentLine.studentLines()
        
    }()
    
    
    // addHeader
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let studentLine = studentLines[section]
        return studentLine.name
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //createEditButton
        navigationItem.rightBarButtonItem = editButtonItem
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return studentLines.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let studentLine = studentLines[section]
        //returnEventCountInEverySection
        return studentLine.students.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! StudentTableViewCell
        let studentLine = studentLines[indexPath.section]
        let student = studentLine.students[indexPath.row]
        
        cell.configureCellWith(student: student)
        
        return cell
        
    }
    
    
    //editEvent
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            
            let studentLine = studentLines[indexPath.section]
            studentLine.students.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            
        }
        
    }
    
    
    //sortEvent
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let studentLine = studentLines[sourceIndexPath.section]
        let student = studentLine.students[sourceIndexPath.row]
        studentLine.students.remove(at: sourceIndexPath.row)
        
        let studentLineDes = studentLines[destinationIndexPath.section]
        studentLineDes.students.insert(student, at: destinationIndexPath.row)
        
    }
    
    
    //showDetail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            
            switch identifier {
                
            case "Show Detail":
                let studentDetailVC = segue.destination as! StudentDetailViewController
                if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
                    
                    studentDetailVC.student = studentAtIndexPath(indexPath: indexPath as NSIndexPath)
                    studentDetailVC.dateStudent = dateAtIndexPath(indexPath: indexPath as NSIndexPath)
                    
                }
                
            default: break
                
            }
            
        }
        
    }
    
    
    //makeEvent
    func studentAtIndexPath(indexPath: NSIndexPath) -> Student{
        
        let studentLine = studentLines[indexPath.section]
        return studentLine.students[indexPath.row]
        
    }
    
    
    //showDate
    func dateAtIndexPath(indexPath: NSIndexPath) -> String{
        
        let studentLine = studentLines[indexPath.section]
        return studentLine.name
        
    }
    
}
