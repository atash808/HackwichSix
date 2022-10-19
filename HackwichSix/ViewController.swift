//
//  ViewController.swift
//  HackwichSix
//
//  Created by Atash Imanverdi on 10/17/22.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myfriends = ["Clare", "Vanessa", "Paige"]
    
    var myfriendsHomeArray = ["Los Angeles", "Honolulu", "Portland"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int
    {
        return myfriends.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myfriends[indexPath.row]
        
        cell?.textLabel?.text = text
        
        cell?.detailTextLabel?.text = myfriendsHomeArray[indexPath.row]
        
        return cell!
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

