//
//  ViewController.swift
//  TableView
//


import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TextView: UITextView!
    
    var FirstString = String()
    
    override func viewDidLoad() {
        
        
        TextView.text = FirstString
    }
}