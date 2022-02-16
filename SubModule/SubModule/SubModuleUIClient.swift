//
//  SubModuleUIClient.swift
//  SubModule
//
//  Created by Saad Shams on 25/08/2020.
//  Copyright © 2020. All rights reserved.
//

import UIKit

public final class SubModuleUIClient {
    
    public static let shared = SubModuleUIClient()
    private let storyBoard:UIStoryboard
    
    private init() {
        let storyboardBundle = Bundle(for: SubModuleUIClient.self)
        storyBoard = UIStoryboard(name: "SecondStory", bundle: storyboardBundle)
        print("Sub Module is working fine")
    }
    
    public func giveMeSomeVcOfAnotherStoryBoard() -> UIViewController {
        return storyBoard.instantiateViewController(identifier: "ViewControllerB")
    }
    
}
