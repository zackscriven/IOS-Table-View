//
//  ViewController.swift
//  TableView
//


import UIKit

class FirstTableViewController: UITableViewController{
    
    var FirstTableArray = [String]()
    
    var SecondArray = [SecondTable]()
    
    var ThirdArray = [ThirdView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FirstTableArray = ["SWAT", "PAT", "STAT","MCAT"]
        
        FirstTableArray.append("PWM")

        SecondArray = [SecondTable(SecondTitle: ["SWAT Dashboard","Wells","Tank Batteries","Salt Water Disposal"]),
        SecondTable(SecondTitle: ["PAT Dashboard","Wells","Tank Batteries","Salt Water Disposal"]),
        SecondTable(SecondTitle: ["STAT Dashboard","Wells","Tank Batteries","Salt Water Disposal"]),
        SecondTable(SecondTitle: ["MCAT Dashboard","Wells","Tank Batteries","Salt Water Disposal"]),
        SecondTable(SecondTitle: ["PWM Dashboard","Water Wells","Ponds","Frac Schedule","Electrical Services"])]
        
        ThirdArray = [ThirdView(ThirdViewArray: ["SWAT Dashboard","SWAT Wells","SWAT TBs","SWAT SWDs"]),
        ThirdView(ThirdViewArray: ["PAT Dashboard","PAT Wells","PAT TBs","PAT SWDs"]),
        ThirdView(ThirdViewArray: ["STAT Dashboard","STAT Wells","STAT TBs","STAT SWDs"]),
        ThirdView(ThirdViewArray: ["MCAT Dashboard","MCAT Wells","MCAT TBs","MCAT SWDs"]),
        ThirdView(ThirdViewArray: ["PWM Dashboard","PWM Wells","PWM Ponds","PWM Frac Schedule","Reclosures"])]
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstTableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        
        Cell.textLabel?.text = FirstTableArray[indexPath.row]
        
        return Cell
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        var DestViewController = segue.destinationViewController as SecondTableViewController

        var SecondTableArrayTwo : SecondTable
        
        SecondTableArrayTwo = SecondArray[indexPath.row]
        
        DestViewController.SecondArray = SecondTableArrayTwo.SecondTitle
        
        
        var ThirdAnswerArray : ThirdView
        
        ThirdAnswerArray = ThirdArray[indexPath.row]
        
        DestViewController.SecondAnswerArray = ThirdAnswerArray.ThirdViewArray
        
    }
    
    
    
    
    


}

