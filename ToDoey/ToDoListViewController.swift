//
//  ViewController.swift
//  ToDoey
//
//  Created by Shpend Bajoku on 4/13/22.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    var itemArray = ["shpend", "hello", "tung", "tugfd"]
    
   

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
    
    
    // mark new add items
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new todoye item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "add item", style: .default) { (action) in
            // what will happen once the user clicks the add button on our UIAlert
            self.itemArray.append(textField.text!)
            self.tableView.reloadData()
            
        }
        
        
        
        
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            print(alertTextField.text)
            
            textField = alertTextField
            print(alertTextField.text)
        
        }
        
        
        alert.addAction(action)
            

        present(alert, animated: true, completion: nil)
    

    }
        
    
    
    }
    


