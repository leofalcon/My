//
//  DiaryTableViewController.swift
//  TableViewTest
//
//  Created by LEOFALCON on 2017. 1. 19..
//  Copyright © 2017년 LEOFALCON. All rights reserved.
//

import UIKit

typealias EachDay = (day : String, rate : String)

class DiaryTableViewController: UITableViewController {

    f
    
    
    let dayArray :[EachDay]  = [EachDay("1","10%"),EachDay("2","90%"),EachDay("3","80%"),EachDay("4","80%"),EachDay("5","80%"),EachDay("6","80%"),EachDay("7","80%"),EachDay("8","80%"),EachDay("9","80%"),EachDay("10","80%"),EachDay("11","80%"),EachDay("12","80%"),EachDay("13","80%"),EachDay("14","80%"),EachDay("15","80%"),EachDay("16","80%"),EachDay("17","80%"),EachDay("18","80%"),EachDay("19","80%"),EachDay("20","80%"),EachDay("21","80%"),EachDay("22","80%"),EachDay("23","80%"),EachDay("24","80%"),EachDay("25","80%"),EachDay("26","80%"),EachDay("27","80%"),EachDay("28","80%"),EachDay("29","80%"),EachDay("30","80%"),EachDay("31","80%")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return dayArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DayCell", for: indexPath)
        
        let dayName = dayArray[indexPath.row]
        cell.textLabel?.text = "day " + dayName.day
        cell.detailTextLabel?.text = dayName.rate
        

        // Configure the cell...

        return cell
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


