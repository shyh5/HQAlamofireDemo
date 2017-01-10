//
//  SHMainTableViewController.swift
//  podsTextSwift
//
//  Created by SHyH5 on 2017/1/10.
//  Copyright © 2017年 SHyH5. All rights reserved.
//

import UIKit

class SHMainTableViewController: UITableViewController {
    
    var classArray : [String] = {
        
        let array  : [String] = ["Alamofire 4.0 使用"];
        
        return array
    
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "DEMO_Swfit"
        
        //remove boom line
        self.tableView.tableFooterView = UIView()
        
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
        return self.classArray.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifer = "maincell"
        var cell  = tableView.dequeueReusableCell(withIdentifier: identifer)
        
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: identifer)
        }
        

        cell?.textLabel?.text = "\(self.classArray[indexPath.row])"
        
        return cell!
    }
   

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc = UIViewController()
        
        
        switch indexPath.row {
        case 0:
            vc = SHAlamofireViewController()
        default: break
            
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }



}
