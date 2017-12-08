//
//  MyTableViewController.swift
//  RiskCompanionApp
//
//  Created by CIS Student on 12/1/17.
//  Copyright © 2017 Joshua Steward. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    private var headers: [String] = []
    private var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        data.append("Welcome to Risk! Risk is a classic board game of global domination. It is so well-known it has even been featured in an episode of Seinfeld.")
        data.append("The goal of the game is to conquer every territory on the map, hence the 'Global Domination' line.")
        data.append("There are many different versions of Risk, each with slightly different rules and pieces. All Risk games will include a board, and 5 or 6 armies of different colors. These armies are divided into different kinds of troop. The only difference between troop types is the amount of manpower they represent. In standard Risk, the Infantry represents 1 troop, the Cavalry represents 5, and the Artillery 10. \nThere will also be a deck of cards, with a card for each territory on the map.")
        data.append("To setup a new game of Risk, each player must select a color army to control. After every player has chosen an army to control, each player counts out 30 troops from their pool. They should count out only infantry, since they will be placing these troops onto the map one at a time. /nAfter all players have counted out their troops, each player should roll a dice to see who goes first. The highest roller goes first, and play goes in a clockwise direction. \nNext, players claim territories by drawing a card from the deck and placing one of their 30 troops onto the territory shown on the card. Drawing continues in a clockwise direction until all territories have been claimed. \nAfter all territories have been claimed, players continue to place their remaining troops onto territories of their choice, one at a time until all 30 troops have been placed.")
        data.append("After the board has been set up and all players have placed their troops, it is time to begin the game!")
        data.append("Each turn in Risk has three phases. The first phase is the reinforcement phase. Every players gains new troops at the start of their turn. Count the number of territories you currently control. Take that number and divide it by three, rounding down. For example, if you have 11 territories you gain three troops. If you have 12 you will get 4. You are guaranteed 3 troops every turn, even if you only control one territory! \nAfter you have counted these troops into your Reinforcement Pool, you should check to see if you completely control any continents. If you control every territory on a continent, you gain the bonus troops printed on the board for that continent. \nFinally, after counting your territory and continent bonus, you may trade in cards for bonus troops! Most Risk sets had cards with different icons on them; forming certain patterns with these grants you bonus troops!")
        data.append("After counting out all of the reinforcements you have earned, it is time to deploy them on the map. You may place any number of troops on any number of territories that you own, but you cannot move existing troops around on the board! After you have placed all of your troops, it is time to move to the next phase: Attack!")
        data.append("Now it is time for the main activity of the game: battle! In Risk, the goal of the game is to conquer the world by any means possible, so you will be doing a lot of attacking! To begin an attack, you simply choose a territory that you own and an adjacent territory to invade. The attacking territory must have at least two troops in it: One troop must remain behind and cannot participate in the attack in any way! The attacker also may not combine forces from multiple territories.")
        data.append("Once the attacker has selected the troops he wishes to send on the attack, he takes the three red dice. The defender takes the two white dice. \nThe attacker rolls one red dice for each attacking troop at his command, with the max being three. The defender rolls one white dice for each defender in his territory, with the max being two. Any troops over this limit can still take part in the battle, but only 5 troops are ever involved in combat at the same time. \nEach time the dice are rolled, it is a 'Combat Round'. The attacker and defender roll their respective dice at the same time, and they are compared highest to lowest. For example, the highest attacker dice is compared only to the highest defender dice. If the attacker dice is higher than the defender dice, then the defender loses one troop. If the defender dice ties or is higher than the attacker dice, the attacker loses one troop. Note that the lowest attacker die is never compared to another die, and thus does not win or lose a troop. It simply gives the attacker an extra chance to roll high. \nThis concludes one combat round, and the attacker may decide to retreat or contiue attacking. If he elects to continue attacking, he makes sure he has one dice per troop (up to three of course) and another combat round begins.")
        data.append("Combat continues until either the attacker decides to retreat, or the defending troops are all defeated. The defender may not retreat or move his troops out of the territory in any way! If the defender loses, then the attacker moves his attacking force into the newly-won territory. The attacker must send all of his surviving troops into the conquered territory, unless more than three troops survived. If more than three survived he may choose the number of troops to stay behind, but at least three must remain in the new territory.")
        data.append("The attacking player may attack as many or as few times as they like. When they decide their attacking phase is over, the player draws one card face-down from the deck if they conquered at least one territory, and they move into the next phase. In the Reinforcement Phase, the player may select one territory with multiple troops. They may move as many troops as they like (so long as one troop stays behind!) to any other connected territory. This is an optional phase, and the player does not have to make a move.")
        data.append("Once you have finished your strategic phase, your turn ends and play passes on to the next player.")
        data.append("There are many strategies in Risk. Some good ideas are to stockpile troops and wait for your neighbor to make a mistake. Never get complacent, because your neighbor is probably planning the same thing! Also, Australia is very important to have. Never start a land war in Asia!")
        data.append("The game is over when one player has conquered the globe, or all the other players get bored and quit.")
        data.append("Risk is a game, and everyone should remember that! Don't let your temper flare when you 'Ally' suddenly betrays you! It's all part of the game.")
        
        headers.append("1.1 - Welcome to Risk!")
        headers.append("1.2 - Goal of the Game")
        headers.append("1.3 - Game Contents")
        headers.append("1.4 - Set Up")
        headers.append("2.1 - Beginning the Game")
        headers.append("2.2 - The Reinforcement Phase")
        headers.append("2.3 - Deploying Your Troops")
        headers.append("2.4 - Attack!")
        headers.append("2.5 - Rules of Engagement")
        headers.append("2.6 - Taking Territories")
        headers.append("2.7 - Strategic Move Phase")
        headers.append("2.8 - Finishing Your Turn")
        headers.append("3.1 - Gameplay Strategy")
        headers.append("3.2 - Winning the Game")
        headers.append("3.3 - Have Fun!")
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
    
    let text = headers[indexPath.row] //2.
    
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDetailsSegue",
            let destination = segue.destination as? RuleDetailsViewController,
            let index = tableView.indexPathForSelectedRow?.row
        {
            destination.rulesText = data[index]
        }
        
    }
    

}
