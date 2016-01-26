//
//  ViewController.swift
//  The Night Porter
//
//  Created by Jeremy Frick on 1/21/16.
//  Copyright © 2016 Red Anchor Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    let dailyTasks = ["Check all windows", "Check all doors","Check mailbox at the end of the lane"]
    let weeklyTasks = ["Check for racoons", "Run facuts for 30 seconds", "Check all empty untis"]
    let twoWeekTasks = ["Clear all bears in the area", "Run through the halls", "Check the pool for bodies"]
    
    @IBAction func changeBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.grayColor()
        let allSubviews = view.subviews
        
        for eachView in allSubviews {
        	if eachView is UILabel {
        		let myLabel = eachView as! UILabel
        		myLabel.textColor = UIColor.lightGrayColor()
        		}
        	}
        // why do this
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return twoWeekTasks.count
        default: return 0
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        var currentTask: String
        
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = twoWeekTasks[indexPath.row]
        default:
            currentTask = ""
        }
        cell.textLabel!.text = currentTask
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Two Week Tasks"
        default:
            return "UH OH"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

