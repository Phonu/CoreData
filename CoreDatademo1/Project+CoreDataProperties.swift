//
//  Project+CoreDataProperties.swift
//  CoreDatademo1
//
//  Created by mac admin on 12/06/20.
//  Copyright © 2020 mac admin. All rights reserved.
//
//

import Foundation
import CoreData


extension Project {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Project> {
        return NSFetchRequest<Project>(entityName: "Project")
    }

    @NSManaged public var projectID: String?
    @NSManaged public var projectName: String?
    @NSManaged public var projToEmp: NSSet?

}

// MARK: Generated accessors for projToEmp
extension Project {

    @objc(addProjToEmpObject:)
    @NSManaged public func addToProjToEmp(_ value: Employee)

    @objc(removeProjToEmpObject:)
    @NSManaged public func removeFromProjToEmp(_ value: Employee)

    @objc(addProjToEmp:)
    @NSManaged public func addToProjToEmp(_ values: NSSet)

    @objc(removeProjToEmp:)
    @NSManaged public func removeFromProjToEmp(_ values: NSSet)

}
