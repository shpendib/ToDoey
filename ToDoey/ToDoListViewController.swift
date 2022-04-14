//
//  ViewController.swift
//  ToDoey
//
//  Created by Shpend Bajoku on 4/13/22.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["shpend", "hello", "tung", "tugfd"]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
        
    }
    
}

