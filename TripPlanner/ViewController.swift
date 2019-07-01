//
//  ViewController.swift
//  TripPlanner
//
//  Created by MattHew Phraxayavong on 6/27/19.
//  Copyright © 2019 MattHew Phraxayavong. All rights reserved.
//

import UIKit
class ViewController: UITableViewController {
    
    let cellId = "cellId"
    var trips : [Trip] = [Trip]()
    override func viewDidLoad() {
        super.viewDidLoad()
        createTripArray()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let currentLastItem = trips[indexPath.row]
        cell.textLabel?.text = currentLastItem.tripName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    func createTripArray() {
        trips.append(Trip(tripName: "Mexico", tripImage: #imageLiteral(resourceName: "Icon-29") , tripDesc: "Amazing and beatiful city"))
        trips.append(Trip(tripName: "Japan", tripImage: #imageLiteral(resourceName: "Icon-40") , tripDesc: "The food was delicious"))
        trips.append(Trip(tripName: "Italy", tripImage:   #imageLiteral(resourceName: "Icon-40"), tripDesc: "I people were wonderful"))
    }
}
