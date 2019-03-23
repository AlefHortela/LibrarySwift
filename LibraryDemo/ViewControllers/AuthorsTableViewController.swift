//
//  AuthorsTableViewController.swift
//  LibraryDemo
//
//  Created by FIBBAURU on 23/03/19.
//  Copyright © 2019 FIB. All rights reserved.
//

import UIKit

class AuthorsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.register(
            UINib(
                nibName: String(describing: AuthorTableViewCell.self),
                bundle: nil
            )
            , forCellReuseIdentifier: "authorCell")
        tableView.rowHeight = AuthorTableViewCell.rowHight
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/
    
    let authors: [(name: String, age: Int)] =
        [
            ("Alef", 25),
            ("Dnnccrrr", 31),
            (name: "Rafael 1", age: 25),
            (name: "Rafael 2", age: 28)
        ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return authors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        var cell = tableView.dequeueReusableCell(withIdentifier: "authorCell")
//
//        // Configure the cell...
//        if cell == nil {
//                cell = UITableViewCell(
//                    style: .subtitle,
//                    reuseIdentifier: "authorCell"
//            )
//            cell?.accessoryType = .detailDisclosureButton
//            cell?.imageView?.image = UIImage(named: "iconAuthors")
//        }
//
//        let author = authors[indexPath.row]
//        cell?.textLabel?.text = author.name
//        // concatenar com o item no arquivo Localizable
//        cell?.detailTextLabel?.text = NSLocalizedString("Idade: ", comment: "") + author.age.description
//
//        return cell!
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "authorCell",
            for: indexPath) as! AuthorTableViewCell
        cell.author = authors[indexPath.row]
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
