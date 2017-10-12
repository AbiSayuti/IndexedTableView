//
//  IndexedTableView.swift
//  IndexedTabeView
//
//  Created by Abi Sayuti on 10/12/17.
//  Copyright © 2017 AbiSayuti. All rights reserved.
//

import UIKit

class IndexedTableView: UITableViewController {
    
    //deklarasi tableData sbg array
    
    var tableData = [String]()
    //deklarasi indexOfNumbers sbg array dgn tipe string
    var indexOfNumber = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //deklarasi allNumbers
        var  allNumber = " 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500"
        //menambahkan allNumbers ke table data
        tableData = allNumber.components(separatedBy: " ")
        
        //deklarasi array number
        var indexNumber = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15"
        
        //menambahkan indexNumber kedalam array indexOfNumbers
        
        indexOfNumber = indexNumber.components(separatedBy: " ")
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
        return indexOfNumber.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath)

        // Configure the cell...
        //menampilkan text
        cell.textLabel?.text = tableData[indexPath.row]

        return cell
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        return indexOfNumber
        
    }
    
    
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        //deklarasi var temp sbg penyimpanan data dari indexOfNumber
        
        let temp = indexOfNumber as NSArray
        return temp.index(of: title)
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
