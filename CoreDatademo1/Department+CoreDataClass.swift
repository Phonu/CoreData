//
//  Department+CoreDataClass.swift
//  CoreDatademo1
//
//  Created by mac admin on 10/06/20.
//  Copyright © 2020 mac admin. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Department)
public class Department: NSManagedObject {
    
    public override func awakeFromNib() {
        self.deptName = "abcd"
    }
}

