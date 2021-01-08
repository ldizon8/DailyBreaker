//
//  TrainingViewController.swift
//  Breakdance App
//
//  Created by Lawrence Dizon on 1/8/21.
//  Copyright © 2021 Lawrence Dizon. All rights reserved.
//

import Foundation
import UIKit

class TrainingViewController: UITableViewController {
    
    private var skillArray: [String] = ["Stamina", "Battle", "Footwork"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        self.navigationItem.title = "Training"
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return skillArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = skillArray[indexPath.row]
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let viewController = storyboard?.instantiateViewController(identifier: "TimerView") as? TimerViewController {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    
    
   
    
}