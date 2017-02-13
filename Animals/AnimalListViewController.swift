//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    let animals = ["🐶","🐱","🐹","🐭","🐰","🦊","🐻","🐼","🦁","🐨","🐯","🦁","🐮","🐷","🐸","🐵","🐙","🐔","🐴","🦄", "👽"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        let myAnimal = animals[indexPath.row]
        cell.textLabel?.text = myAnimal
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard segue.identifier == "AnimalDetailView" else {return}
        if let dest = segue.destination as? AnimalViewController,
            let indexPath = tableView.indexPathForSelectedRow{
            dest.myAnimal = animals [indexPath.row]
        }
    }
}
