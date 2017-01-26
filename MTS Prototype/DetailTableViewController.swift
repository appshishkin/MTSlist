//
//  DetailTableViewController.swift
//  MTS Prototype
//
//  Created by Александр Шишкин on 23/01/2017.
//  Copyright © 2017 Александр Шишкин. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    var prototype: Prototype?
    
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
        return 9
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! DetailTableViewCell
         cell.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        tableView.separatorColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Прототип:"
            cell.valueLabel.text = prototype!.prototypeName
        case 1:
            cell.keyLabel.text = "Антенная система:"
            cell.valueLabel.text = prototype!.antennaSystem
        case 2:
            cell.keyLabel.text = "Конфигурация диапазона:"
            cell.valueLabel.text = prototype!.bandConfiguration
        case 3:
            cell.keyLabel.text = "Поляризация:"
            cell.valueLabel.text = prototype!.polarization
        case 4:
            cell.keyLabel.text = "Количество RET:"
            cell.valueLabel.text = prototype!.valueOfRET
        case 5:
            cell.keyLabel.text = "Градус:"
            cell.valueLabel.text = prototype!.hBWdeg
        case 6:
            cell.keyLabel.text = "Усиление:"
            cell.valueLabel.text = prototype!.gaindBi
        case 7:
            cell.keyLabel.text = "Конфигурация электрического RET устройства:"
            cell.valueLabel.text = prototype!.electricalTiltConfiguration
        case 8:
            cell.keyLabel.text = "Высота антенны, m:"
            cell.valueLabel.text = prototype!.antennaLengthM
        default:
            break
        }
        
        
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
