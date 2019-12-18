//
//  AddViewController.swift
//  lista de tarefas
//
//  Created by César  Ferreira on 18/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var taskText: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        if let task = taskText.text {
            
            let task = TaskUserDefaults()
            task.saveTask(task: task as! String)
            
            taskText.text = ""
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
