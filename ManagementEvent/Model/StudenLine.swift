//
//  EventLine.swift
//  ManagementEvents
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import Foundation

class StudentLine {
    
    var name: String
    var students: [Student]
    var university: String
    
    init(named: String, includeStudents: [Student], universities: String) {
        
        name = named
        students = includeStudents
        university = universities
        
    }
    
    
    class func studentLines() -> [StudentLine] {
        
        return [self.HCMUTE(), self.HCMUEL(), self.HCMUT(), self.HCMUS(), self.HCMUIT()]
        
    }
    
    
    private class func HCMUTE() -> StudentLine {
        
        var students = [Student]()
        
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Sư Phạm Kỹ Thuật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Sư Phạm Kỹ Thuật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Sư Phạm Kỹ Thuật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Sư Phạm Kỹ Thuật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Sư Phạm Kỹ Thuật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        
        return StudentLine(named: "HCMUTE", includeStudents: students, universities: "HCMUTE")
    }
    
    
    private class func HCMUEL() -> StudentLine {
        
        var students = [Student]()
        
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Kinh Tế - Luật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Kinh Tế - Luật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Kinh Tế - Luật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Kinh Tế - Luật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Kinh Tế - Luật TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        
        return StudentLine(named: "HCMUEL", includeStudents: students, universities: "HCMUEL")
    }
    
    
    private class func HCMUT() -> StudentLine {
        
        var students = [Student]()
        
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Bách Khoa TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Bách Khoa TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Bách Khoa TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Bách Khoa TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Bách Khoa TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        
        return StudentLine(named: "HCMUT", includeStudents: students, universities: "HCMUT")
    }
    
    
    private class func HCMUS() -> StudentLine {
        
        var students = [Student]()
        
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Khoa Học Tự Nhiên TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Khoa Học Tự Nhiên TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Khoa Học Tự Nhiên TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Khoa Học Tự Nhiên TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Khoa Học Tự Nhiên TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        
        return StudentLine(named: "HCMUS", includeStudents: students, universities: "HCMUS")
    }
    
    
    private class func HCMUIT() -> StudentLine {
        
        var students = [Student]()
        
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Công Nghệ Thông Tin TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Công Nghệ Thông Tin TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Công Nghệ Thông Tin TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Công Nghệ Thông Tin TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        students.append(Student(named: "Đinh Vũ Hoàng", universities: "Đại Học Công Nghệ Thông Tin TP.HCM", descriptions: "Khoa CNTT", yearolded: "22"))
        
        return StudentLine(named: "HCMUIT", includeStudents: students, universities: "HCMUIT")
    }
}
