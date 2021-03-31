//
//  MainViewController.swift
//  My2Places
//
//  Created by Борис  on 29.03.2021.
//

import UIKit

class MainViewController: UITableViewController {

  
    var clubs = Club.getClubs()
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = clubs[indexPath.row].name
        cell.locationLabel.text = clubs[indexPath.row].location
        cell.yearLabel.text = clubs[indexPath.row].year
        cell.imageOfLogo.image = UIImage(named: clubs[indexPath.row].image)
        cell.imageOfLogo.layer.cornerRadius = cell.imageOfLogo.frame.size.height / 2
        cell.imageOfLogo.clipsToBounds = true

        return cell
    }
   

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue){}
    
}
