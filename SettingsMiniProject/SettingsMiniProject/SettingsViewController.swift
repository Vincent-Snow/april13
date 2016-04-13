//
//  SettingsViewController.swift
//  SettingsMiniProject
//
//  Created by mac-admin on 4/13/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, SettingTableViewCellDelegate {
 
    var delegate: SettingTableViewCellDelegate?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.sharedController.mySetting.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell") as? SettingsTableViewCell
        let setting = SettingsController.sharedController.mySetting[indexPath.row]
        cell?.updateWithSetting(setting)
        
        return cell ?? UITableViewCell()
    }
    
    func settingValueChanged(cell: SettingsTableViewCell, selected: Bool) {
        guard let setting = cell.setting else {return}
        SettingsController.sharedController.updateSettingsSelection(setting, seletced: selected)
        tableView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}

protocol  {
    
}
