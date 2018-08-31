//
//  UVITableViewController.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/8/29.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//

import UIKit

class UVITableViewController: UITableViewController {

    var uviResults = [UVI]()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

        let urlaaa = "https://collections.culture.tw/getMetadataList.aspx?format=OpenData&TYPEID=B0211"

        if let urlStr = OpenDataUrl.uvi.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlStr) {

            let task = URLSession.shared.dataTask(with: url) { (data, reponse, error) in
                print(data)
                let decoder = JSONDecoder()
                if let data = data, let uviResult = try? decoder.decode([UVI].self, from: data) {
                    print("test")
                    self.uviResults = uviResult
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            }
            task.resume()
        }

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return uviResults.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: Constants.UVITableCell, for: indexPath) as! UVITableViewCell

        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.UVITableCell, for: indexPath) as? UVITableViewCell else {
            return UVITableViewCell()
        }

        let uviData = uviResults[indexPath.row]
        cell.contyLable.text = "所在地: " + uviData.County
        cell.uviLabel.text = "監測值: " + uviData.UVI
        cell.publishAgencyLabel.text = "發佈地點: " + uviData.PublishAgency
        cell.publishTimeLabel.text = "發佈時間: " + uviData.PublishTime
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
