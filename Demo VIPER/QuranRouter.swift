//
//  QuranRouter.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import UIKit

class QuranRouter :RouterProtocol {
    
    weak var viewController:UIViewController?
    static func createModule()->UIViewController{
        let vc = QuranVC()
        let interactor = Interactor()
        let router = QuranRouter()
        
   let presenter = Presenter(view: vc, interactor: interactor, router: router)
     
        vc.presenter = presenter
        interactor.presenter = presenter
        router.viewController = vc
         return vc
    }
    
}
