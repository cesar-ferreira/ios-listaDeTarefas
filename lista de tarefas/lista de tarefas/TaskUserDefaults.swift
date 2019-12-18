//
//  TaskUserDefaults.swift
//  lista de tarefas
//
//  Created by César  Ferreira on 18/12/19.
//  Copyright © 2019 César  Ferreira. All rights reserved.
//

import UIKit

class TaskUserDefaults {
    
    let KEY: String = "KEY_TASK"
    var tasks: [String] = []
    
    func saveTask(task: String) {
        
        tasks = list()
        
        tasks.append( task )
        UserDefaults.standard.set(tasks , forKey: KEY)
        
    }
    
    func list() -> Array<String> {
        
        let result = UserDefaults.standard.object(forKey: KEY)
        
        if( result != nil ) {
            return result as! Array<String>
        }
        
        return []
        
    }
    
}
