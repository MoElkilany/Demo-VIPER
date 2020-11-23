//
//  Interactor .swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation
    
class Interactor :InteractorInputProtocol{
    
    weak var presenter: InteractorOutputProtocol?
    private let network = QuranNetwork()
    
    func getDataFromServer() {
        network.getWords { (quranData, error) in
            
            if error != nil {
                self.presenter?.faild(error: error?.localizedDescription ?? "")
            }
            
            guard let data = quranData else{return}
            self.presenter?.getDataSucessfully(quranData: data)
        }
    }
}
