//
//  TableViewController.swift
//  Anzliik
//
//  Created by Гость on 14.04.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayCountries = ["Russia", "France", "Japan", "China"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // Количество секций

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

   // Количество секций
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayCountries.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)

        cell.textLabel?.text = arrayCountries[indexPath.row]

        return cell
    }
    
    @IBAction func addNewCityAction(_ sender: Any){
    }
        let alert = UIAlertController(title: "Add new country", message: "Enter name new country", preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        alert.addTextField { (TextField) in
            TextField.placeholder = "Exemple: Russia"
            
            let addAction = UIApplication(title: "Add", style: .default)
            {
                (actionAdd) in
                let countre = alret.textFields![0].text!
                self.arrayCountries.append(country)
                self.tableView.reloadData()}
            
    let cancelAction = UIApplication(title: "Cancel", style: .cancel, handler: nill)
    alert.addAction(addAction)
    alert.addAction(cancelAction)
    self.present(alert, animated: true, completion
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
