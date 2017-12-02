//
//  MyTableViewController.swift
//  RiskCompanionApp
//
//  Created by CIS Student on 12/1/17.
//  Copyright © 2017 Joshua Steward. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    private var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        data.append("1.1 - Welcome to Risk!")
        data.append("1.2 - Goal of the game")
        data.append("1.3 - Setting up the game")
        data.append("1.4 - Winning the game")
        data.append("2.1 - Your turn")
        data.append("2.2 - The reinforcement phase")
        data.append("2.3 - Deploying your troops")
        data.append("2.4 - Attack!")
        data.append("2.5 - Rules of engagement")
        data.append("2.6 - Taking territories")
        data.append("2.7 - Strategic Move Phase")
        data.append("2.8 - Finishing your turn")
        data.append("3.1 - Gameplay strategy")
        data.append("3.2 - Winning the game")
        data.append("3.3 - Have Fun!")
        tableView.dataSource = self
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyTableViewCell
    
    let text = data[indexPath.row] //2.
    
    cell.lblMain.text = text //3.
    
    return cell //4.
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
