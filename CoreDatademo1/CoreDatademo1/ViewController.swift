//
//  ViewController.swift
//  CoreDatademo1
//
//  Created by mac admin on 10/06/20.
//  Copyright © 2020 mac admin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addDepartment(_ sender: Any) {
        addDepartment()
    }
    @IBAction func addEmployee(_ sender: Any) {
        addEmployee()
    }
    @IBAction func addProject(_ sender: Any) {
    }
    
    @IBAction func removeDepartment(_ sender: Any) {
        getDepartment()
        deleteDepartment()
    }
    
    func addDepartment() {
        let department = NSEntityDescription.insertNewObject(forEntityName: "Department", into: context!) as! Department
        department.deptName = "Apple"
//        department.deptToEmp = NSSet()
        do {
        let appDelegate = (UIApplication.shared.delegate as? AppDelegate)
            try appDelegate?.saveContext()
//            try context?.save()
        } catch let err {
        print("Error --> \(err.localizedDescription) ")
        }
        
    }
    
    func addEmployee() {
        let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context!) as! Employee
        employee.empName = "kunal"
        employee.empID = "631"
        employee.empToDept  = getDepartment()[0]
        
        do {
            try context?.save()
        } catch let err {
            print("Error --> \(err.localizedDescription) ")
        }
    }
    
    func getDepartment() -> [Department?]{
        var depts = [Department]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Department")
        //        let predicate = NSPredicate(format: "deptName == %@", "Apple")
        //        fetchRequest.predicate = predicate
        
        do {
            try depts = context?.fetch(fetchRequest) as! [Department]
        } catch  let err {
            print("Error --> \(err.localizedDescription) ")
        }
        //        print(depts)
        return depts
    }
    
    func deleteDepartment() {
        let depts = getDepartment()
        guard let dept = depts[0] else {
            return
        }
        context?.delete(dept)
        do {
            try context?.save()
        } catch let err {
            print("Error --> \(err.localizedDescription) ")
        }
        
    }
    
    func fetchEmployee() {
        var emps = [Employee]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Employee")
        
        do {
            try emps = context?.fetch(fetchRequest) as! [Employee]
        } catch  {
            print("unable to fetch data")
        }
        
    }
}

