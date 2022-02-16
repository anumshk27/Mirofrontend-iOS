//
//  SideMenuVC.swift
//  Side Menu
//
//  Created by Kyle Lee on 8/6/17.
//  Copyright © 2017 Kyle Lee. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row {
        //case 0: NotificationCenter.default.post(name: NSNotification.Name("productModuleUI"), object: nil)
        case 0: NotificationCenter.default.post(name: NSNotification.Name("shoppingModuleUI"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("offerModuleUI"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("accountModuleUI"), object: nil)

        default: break
        }
    }

}
