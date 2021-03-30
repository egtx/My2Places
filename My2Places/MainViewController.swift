//
//  MainViewController.swift
//  My2Places
//
//  Created by Борис  on 29.03.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let clubs = ["Tottenham", "Man United", "Man City", "Chelsea", "Arsenal",
    "Liverpool", "Everton", "West Ham", "Leicester", "Wolverhampton"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = clubs[indexPath.row]

        cell.textLabel?.text = clubs[indexPath.row]
        cell.imageView?.image = UIImage(named: clubs[indexPath.row])

        return cell
    }
   

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
