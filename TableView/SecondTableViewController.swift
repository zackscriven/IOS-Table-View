//
//  SecondTableView.swift
//  TableView
//


import Foundation
import UIKit


class SecondTableViewController: UITableViewController {
    
    var SecondArray = [String]()
    var SecondAnswerArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SecondArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("SecondCell", forIndexPath: indexPath) as UITableViewCell
        
        
        Cell.textLabel?.text = SecondArray[indexPath.row]
        
        
        return Cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        var DestViewController = segue.destinationViewController as ViewController
        
        DestViewController.FirstString = SecondAnswerArray[indexPath.row]
        
        
        
    }
}