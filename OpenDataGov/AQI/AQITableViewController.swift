//
//  AUITableViewController.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/9/13.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//

import UIKit
import Alamofire

class AQITableViewController: UITableViewController {

    var aqiResults = [AQI]()


//    let decoder = JSONDecoder()
//    if let data = data, let uviResult = try? decoder.decode([UVI].self, from: data) {
//
//        self.uviResults = uviResult
//        DispatchQueue.main.async {
//            self.tableView.reloadData()
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("test")

        Alamofire.request(OpenDataUrl.aui).responseJSON { (response) in
            
            let decoder = JSONDecoder()
            if let data = response.data, let aqiResults = try? decoder.decode([AQI].self, from: data) {
                self.aqiResults = aqiResults
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return aqiResults.count
    }



    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.AQITableCell, for: indexPath) as? AQITableViewCell else {
            return AQITableViewCell()
        }

        let aqiData = aqiResults[indexPath.row]
        
        cell.County.text = "所在地: " + aqiData.County
        cell.StatusLabel.text = "狀態: " + aqiData.Status
        cell.AQILabel.text = "監測值: " + aqiData.AQI
        cell.PublishTimeLabel.text = "發佈時間: " + aqiData.PublishTime
        
        
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
