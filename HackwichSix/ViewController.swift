//
//  ViewController.swift
//  HackwichSix
//
//  Created by Atash Imanverdi on 10/17/22.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myfriends = ["Kapolei Kalapawai"]
    
    
    @IBOutlet var tableView: UITableView!
    
    var myfriendsHomeArray = ["Los Angeles", "Honolulu", "Portland"]
    
    var restaurantImageData = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
    
        restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let s1 = segue.destination as! detailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = restaurantImageData[imageIndex!]
    
    
    }


}

