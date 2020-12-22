//
//  ContentViewController.swift
//  MenuPopoverTest
//
//  Created by Kevin Gutowski on 12/22/20.
//

import Cocoa

class ContentViewController: NSViewController {
    @IBOutlet weak var searchField: NSSearchField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        if let cell = self.searchField.cell as? NSSearchFieldCell {
            cell.searchButtonCell = nil
        }
    }
    
}
