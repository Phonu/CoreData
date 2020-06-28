//
//  Department+CoreDataProperties.swift
//  CoreDatademo1
//
//  Created by mac admin on 12/06/20.
//  Copyright © 2020 mac admin. All rights reserved.
//
//

import Foundation
import CoreData


extension Department {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Department> {
        return NSFetchRequest<Department>(entityName: "Department")
    }

    @NSManaged public var deptName: String?
    @NSManaged public var deptToEmp: NSSet?

}

// MARK: Generated accessors for deptToEmp
extension Department {

    @objc(addDeptToEmpObject:)
    @NSManaged public func addToDeptToEmp(_ value: Employee)

    @objc(removeDeptToEmpObject:)
    @NSManaged public func removeFromDeptToEmp(_ value: Employee)

    @objc(addDeptToEmp:)
    @NSManaged public func addToDeptToEmp(_ values: NSSet)

    @objc(removeDeptToEmp:)
    @NSManaged public func removeFromDeptToEmp(_ values: NSSet)

}
