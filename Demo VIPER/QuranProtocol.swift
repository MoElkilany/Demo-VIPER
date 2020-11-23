//
//  QuranProtocol.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation

protocol ViewProtocol:class {
    
    var presenter: PresenterProtocol? {get set}
    func showProgress()
    func hiddeProgress()
    func dataGetSucessfully()
}

protocol PresenterProtocol:class {
    var view: ViewProtocol? {get set}
    func startAPI()
    var tableRows :Int {get}
    func setCellData(cell:SetCellDataProtocol, index:Int)
}

protocol RouterProtocol:class {
    
}


protocol InteractorInputProtocol:class{
     
    var presenter: InteractorOutputProtocol? {get set}
    func getDataFromServer()
}

protocol InteractorOutputProtocol:class{
    func getDataSucessfully(quranData:[QuranData])
    func faild(error:String)

}
 
protocol SetCellDataProtocol {
    func setUpDataCell(quranModel:QuranData)
}

