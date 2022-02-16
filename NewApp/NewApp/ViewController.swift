//
//  ViewController.swift
//  NewApp
//
//  Created by Saad Shams on 25/08/2020.
//  Copyright © 2020. All rights reserved.
//

import UIKit

import AccountModule
import ShoppingModule
import ProductModule
import OfferModule


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.title = "Products"
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(navigateToProductModuleUI),
                                               name: NSNotification.Name("productModuleUI"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(navigateToShoppingModuleUI),
                                               name: NSNotification.Name("shoppingModuleUI"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(navigateToOfferModuleUI),
                                               name: NSNotification.Name("offerModuleUI"),
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(navigateToAccountModuleUI),
                                               name: NSNotification.Name("accountModuleUI"),
                                               object: nil)

        let pc = ProductUIClient.sharedInstance.initProductController()
        self.addChild(pc)
        view.addSubview(pc.view)
        pc.didMove(toParent: self)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        if ((navigationController?.isNavigationBarHidden) != nil) {
            navigationController?.setNavigationBarHidden(false, animated: true)
        }
    }
    
    @objc func navigateToProductModuleUI() {
        let pc = ProductUIClient.sharedInstance.initProductController()
        navigationController?.pushViewController(pc, animated: true)
    }
    
    @objc func navigateToShoppingModuleUI() {
        let sc = ShoppingUIClient.sharedInstance.initShoppingController()
        navigationController?.pushViewController(sc, animated: true);
        
    }
    
    @objc func navigateToOfferModuleUI() {
        let pc = OffersUIClient.shared.initOffersController()
        navigationController?.pushViewController(pc, animated: true)
    }
    
    @objc func navigateToAccountModuleUI() {
        let ac = AccountUIClient.shared.initiateAccountUIStoryboard()
        navigationController?.pushViewController(ac, animated: true);
    }
    
    
    @IBAction func onMoreTapped() {
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
}

