//
//  TableViewController.swift
//  MTS Prototype
//
//  Created by Александр Шишкин on 11/01/2017.
//  Copyright © 2017 Александр Шишкин. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var prototype: [Prototype] =
        [Prototype(prototypeName: "MTS01", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "V", valueOfRET: "1", hBWdeg: "65", gaindBi: "16,5 (@900 MHz)", electricalTiltConfiguration: "0-12", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS02", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "16,5 (@900 MHz)", electricalTiltConfiguration: "0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS03", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "V", valueOfRET: "1", hBWdeg: "65", gaindBi: "17,5 (@900 MHz)", electricalTiltConfiguration: "0-10", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS04", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "17,5 (@900 MHz)", electricalTiltConfiguration: "0-10", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS105", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "19,5", electricalTiltConfiguration: "0-8", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS106", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "20", electricalTiltConfiguration: "0-8", antennaLengthM: "1,6"),
        Prototype(prototypeName: "MTS107", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "21", electricalTiltConfiguration: "0-6", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS120", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "16", electricalTiltConfiguration: "0-12", antennaLengthM: "0,7"),
        Prototype(prototypeName: "MTS15", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "X", valueOfRET: "1", hBWdeg: "30", gaindBi: "17,1 (@900)", electricalTiltConfiguration: "0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS16", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "1", hBWdeg: "30", gaindBi: "16,3 (@2100)", electricalTiltConfiguration: "0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS171", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "1", hBWdeg: "30", gaindBi: "20(@2100)", electricalTiltConfiguration: "0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS207", antennaSystem: "Double", bandConfiguration: "1800-2100/1800-2100", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "19/19", electricalTiltConfiguration: "0-8/0-8", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS208", antennaSystem: "Double", bandConfiguration: "1800-2100/1800-2100", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "20/20", electricalTiltConfiguration: "0-8/0-8", antennaLengthM: "1,6"),
        Prototype(prototypeName: "MTS210", antennaSystem: "Double", bandConfiguration: "1800-2100/1800-2100", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "21/21", electricalTiltConfiguration: "0-6/0-6", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS221", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "14,5(@900)/17(@2100)", electricalTiltConfiguration: "2-14/0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS223", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "17(@900)/18,5(@2100)", electricalTiltConfiguration: "2-14\0-10", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS230", antennaSystem: "Double", bandConfiguration: "1800-2600/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "16(@2100)/16,5(@2600)", electricalTiltConfiguration: "0-12/0-12",antennaLengthM: "0,7"),
        Prototype(prototypeName: "MTS242", antennaSystem: "Double", bandConfiguration: "2600/2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "20/20", electricalTiltConfiguration: "0-8/0-8", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS243", antennaSystem: "Double", bandConfiguration: "2600/2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "21/21", electricalTiltConfiguration: "0-6/0-6", antennaLengthM: "1,6"),
        Prototype(prototypeName: "MTS252", antennaSystem: "Double", bandConfiguration: "1800-2100/2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "19/20", electricalTiltConfiguration: "0-8/0-8", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS253", antennaSystem: "Double", bandConfiguration: "1800-2100/2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "20/21", electricalTiltConfiguration: "0-8/0-6", antennaLengthM: "1,6"),
        Prototype(prototypeName: "MTS30", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "0", hBWdeg: "5,5", gaindBi: "26", electricalTiltConfiguration: "0", antennaLengthM: "2x2"),
        Prototype(prototypeName: "MTS31", antennaSystem: "Single", bandConfiguration: "1800-2100", polarization: "X", valueOfRET: "0", hBWdeg: "11,5", gaindBi: "22,5", electricalTiltConfiguration: "0", antennaLengthM: "1,4x1,4"),
        Prototype(prototypeName: "MTS37", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "0", hBWdeg: "65", gaindBi: "10/11", electricalTiltConfiguration: "0", antennaLengthM: "0,3"),
        Prototype(prototypeName: "MTS38", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "XX", valueOfRET: "0", hBWdeg: "65", gaindBi: "7,5/8,5", electricalTiltConfiguration: "0", antennaLengthM: "0,3"),
        Prototype(prototypeName: "MTS39", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "VX", valueOfRET: "0", hBWdeg: "65", gaindBi: "7,5/8,5", electricalTiltConfiguration: "0", antennaLengthM: "0,3"),
        Prototype(prototypeName: "MTS40", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "18,0 18,5 19,0", electricalTiltConfiguration: "0-15", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS41", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "19,0 19,2 19,5", electricalTiltConfiguration: "0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS411", antennaSystem: "Quad", bandConfiguration: "790-960/1800-2600/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "14.5(@900),16.5(@2100),17(@2600)", electricalTiltConfiguration: "2-12/0-10/0-10/0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS42", antennaSystem: "Double", bandConfiguration: "1800-2600/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "17.5(@2100),18(@2600)", electricalTiltConfiguration: "0-15/0-15", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS43", antennaSystem: "Double", bandConfiguration: "1800-2600/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "18,2(@2100)/19(@2600)", electricalTiltConfiguration: "0-10/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS44", antennaSystem: "Triple", bandConfiguration: "1800-2600/1800-2600/1800-2600", polarization: "XXX", valueOfRET: "3", hBWdeg: "65", gaindBi: "18,0 18,5 19,0 18,0 18,5 19,0 18,0 18,5 19,0", electricalTiltConfiguration: "0-15\0-10\0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS45", antennaSystem: "Triple", bandConfiguration: "1800-2600/1800-2600/1800-2600", polarization: "XXX", valueOfRET: "3", hBWdeg: "65", gaindBi: "19,0 19,2 19,5 19,0 19,2 19,5 19,0 19,2 19,5", electricalTiltConfiguration: "0-10\0-10\0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS46", antennaSystem: "Triple", bandConfiguration: "790-960/1800-2600/1800-2600", polarization: "XXX", valueOfRET: "3", hBWdeg: "65", gaindBi: "16,5 18,0 18,5 19,0 18,0 18,5 19,0", electricalTiltConfiguration: "2-12/0-10/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS47", antennaSystem: "Triple", bandConfiguration: "790-960/1800-2600/1800-2600", polarization: "XXX", valueOfRET: "3", hBWdeg: "65", gaindBi: "17,5 19,0 19,2 19,5 19,0 19,2 19,5", electricalTiltConfiguration: "2-10/0-10/0-10", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS48", antennaSystem: "Quad", bandConfiguration: "790-960/1800/2100/2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "16,5 18,0 18,5 19,0 18,0 18,5 19,0 18,0 18,5 19,0", electricalTiltConfiguration: "2-12/0-10/0-10/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS49", antennaSystem: "Quad", bandConfiguration: "790-960/1800-2600/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "17,5 19,0 19,2 19,5 19,0 19,2 19,5 19,0 19,2 19,5", electricalTiltConfiguration: "2-10/0-10/0-10/0-10", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS50", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "90", gaindBi: "11,0/11,0", electricalTiltConfiguration: "+- 5", antennaLengthM: "0,7"),
        Prototype(prototypeName: "MTS503", antennaSystem: "Penta", bandConfiguration: "790-960/1800-2600/1800-2600/1800-2600/1800-2600", polarization: "XXXXX", valueOfRET: "5", hBWdeg: "65", gaindBi: "16,5(@900)/17,5(@2100)/17,8(@2600)", electricalTiltConfiguration: "2-12/0-10/0-10/0-10/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS51", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "VX", valueOfRET: "2", hBWdeg: "90", gaindBi: "11,0/11,0", electricalTiltConfiguration: "+- 5", antennaLengthM: "0,7"),
        Prototype(prototypeName: "MTS52", antennaSystem: "Triple", bandConfiguration: "790-960/1800-2600/1800-2600", polarization: "XXX", valueOfRET: "3", hBWdeg: "65", gaindBi: "15,0/17,0-17,5/17,0-17,5", electricalTiltConfiguration: "2-15/0-10/0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS54", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "13,5", electricalTiltConfiguration: "5-15", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS55", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "VV", valueOfRET: "2", hBWdeg: "65", gaindBi: "13,5", electricalTiltConfiguration: "5-15", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS56", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "14,5", electricalTiltConfiguration: "2-14", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS57", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "VV", valueOfRET: "2", hBWdeg: "65", gaindBi: "14,5", electricalTiltConfiguration: "2-14", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS58", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "15,5", electricalTiltConfiguration: "2-12", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS59", antennaSystem: "Double", bandConfiguration: "790-960/790-960", polarization: "VV", valueOfRET: "2", hBWdeg: "65", gaindBi: "15,5", electricalTiltConfiguration: "2-12", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS60", antennaSystem: "Quad", bandConfiguration: "1800-2600/1800-2600/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "17(@2100)/17,5(@2600)", electricalTiltConfiguration: "2-15/2-15/2-15/2-15", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS64", antennaSystem: "Penta", bandConfiguration: "790-96/790-960/1800-2600/1800-2600/1800-2600", polarization: "VVXXX", valueOfRET: "5", hBWdeg: "65", gaindBi: "15,6/15,6/16,4 16,9/16,4 16,9/16,9 17,2", electricalTiltConfiguration: "2-12/2-12/2-15/2-15/2-15", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS65", antennaSystem: "Penta", bandConfiguration: "790-960/1800-2600/1800-2600/1800-2600/1800-2600", polarization: "XXXXX", valueOfRET: "5", hBWdeg: "65", gaindBi: "15,6/16,4 16,9/16,4 16,9/16,9 17,2/16,9 17,2", electricalTiltConfiguration: "2-12/2-15/2-15/2-15/2-15", antennaLengthM: "2,5"),
        Prototype(prototypeName: "MTS66", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "X", valueOfRET: "1", hBWdeg: "65", gaindBi: "13,5 (@900 MHz)", electricalTiltConfiguration: "0-14", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS67", antennaSystem: "Single", bandConfiguration: "790-960", polarization: "V", valueOfRET: "1", hBWdeg: "65", gaindBi: "13,5 (@900 MHz)", electricalTiltConfiguration: "0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS68", antennaSystem: "Quad", bandConfiguration: "790-960/790-960/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "16,5/16,5/18,0 18,5 19,0/18,0 18,5 19,0", electricalTiltConfiguration: "2-12/2-12/0-10/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS69", antennaSystem: "Quad", bandConfiguration: "790-960/790-960/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "14,0/15,0/17,0/18,0", electricalTiltConfiguration: "2-14/2-14/0-10/0-10", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS78", antennaSystem: "Quad", bandConfiguration: "790-960/1800-2600/1800-2600/1800-2600", polarization: "XXXX", valueOfRET: "4", hBWdeg: "65", gaindBi: "16,5 16,5/18,0 18,5 19,0/18,0 18,5 19,0", electricalTiltConfiguration: "0-10/0-6/0-6/0-6", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS80", antennaSystem: "Double", bandConfiguration: "790-960/1800-2600", polarization: "XX", valueOfRET: "2", hBWdeg: "65", gaindBi: "17(@900)/18,5(@2600)", electricalTiltConfiguration: "2-14/0-10", antennaLengthM: "2"),
        Prototype(prototypeName: "MTS87", antennaSystem: "Tri-Sector Single System", bandConfiguration: "1800-2600*3", polarization: "X*3", valueOfRET: "3", hBWdeg: "65*3", gaindBi: "18", electricalTiltConfiguration: "0-10*3", antennaLengthM: "1,3"),
        Prototype(prototypeName: "MTS904", antennaSystem: "Single", bandConfiguration: "2600", polarization: "X", valueOfRET: "0", hBWdeg: "12", gaindBi: "23", electricalTiltConfiguration: "0", antennaLengthM: "0,9x0,9"),
        Prototype(prototypeName: "MTS911", antennaSystem: "Single", bandConfiguration: "1800-2600", polarization: "X", valueOfRET: "0", hBWdeg: "65", gaindBi: "13,5(@2100)", electricalTiltConfiguration: "0", antennaLengthM: "0,5"),
        Prototype(prototypeName: "MTS920", antennaSystem: "Double", bandConfiguration: "1800-2600/1800-2600", polarization: "XX", valueOfRET: "0", hBWdeg: "65", gaindBi: "9(@2100)", electricalTiltConfiguration: "0", antennaLengthM: "0,3"),
        Prototype(prototypeName: "MTS921", antennaSystem: "Double", bandConfiguration: "1800-2600/1800-2600", polarization: "XX", valueOfRET: "0", hBWdeg: "65", gaindBi: "13,5(@2100)", electricalTiltConfiguration: "0", antennaLengthM: "0,5")]
        
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
        return prototype.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell

        cell.prototypeNameLabel.text = prototype[indexPath.row].prototypeName
        cell.bandConfigurationLabel.text = prototype[indexPath.row].bandConfiguration
        cell.antennaLenghtLabel.text = prototype[indexPath.row].antennaLengthM
        cell.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        tableView.separatorColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if tableView.indexPathForSelectedRow != nil {
            
                if let indexPath = tableView.indexPathForSelectedRow {
                    let dvc = segue.destination as! DetailTableViewController
                    dvc.prototype = self.prototype[indexPath.row]
                
                }
            }
        }
        
        
    }
        
    }
    


