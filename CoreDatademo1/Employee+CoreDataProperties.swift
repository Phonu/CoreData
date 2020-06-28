//
//  Employee+CoreDataProperties.swift
//  CoreDatademo1
//
//  Created by mac admin on 12/06/20.
//  Copyright © 2020 mac admin. All rights reserved.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var empID: String?
    @NSManaged public var empName: String?
    @NSManaged public var empToDept: Department?
    @NSManaged public var empToProj: NSSet?

}

// MARK: Generated accessors for empToProj
extension Employee {

    @objc(addEmpToProjObject:)
    @NSManaged public func addToEmpToProj(_ value: Project)

    @objc(removeEmpToProjObject:)
    @NSManaged public func removeFromEmpToProj(_ value: Project)

    @objc(addEmpToProj:)
    @NSManaged public func addToEmpToProj(_ values: NSSet)

    @objc(removeEmpToProj:)
    @NSManaged public func removeFromEmpToProj(_ values: NSSet)

}
