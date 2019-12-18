//
//  ViewController.swift
//  lista de tarefas
//
//  Created by César  Ferreira on 18/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    private var tasks: [String] = []
    var taskManager: TaskUserDefaults?


    override func viewDidLoad() {
        super.viewDidLoad()

        taskManager = TaskUserDefaults()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateList()
    }
    
    private func updateList() {
        tasks = taskManager?.list() ?? []
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "item_task", for: indexPath)
        
        cell.textLabel?.text = tasks[ indexPath.row ]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if ( editingStyle == UITableViewCell.EditingStyle.delete ) {
            
            taskManager?.remove(index: indexPath.row)
            updateList()
            
        }
    }
}

