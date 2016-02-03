//
//  LeftMenuViewController.swift
//  JockesCollector
//
//  Created by Nikolay Shubenkov on 03/02/16.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

class LeftMenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        //взять ячейку снажатым индексом
        let selectedCell = tableView.cellForRowAtIndexPath(indexPath)
        //вычленим у нее текст
        let objectToSend = selectedCell?.textLabel?.text
        //пошлем уведомление с названием и текстом
        NSNotificationCenter.defaultCenter().postNotificationName("LeftMenuPressed", object: objectToSend)
    }
}


