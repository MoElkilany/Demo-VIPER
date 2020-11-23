//
//  Presenter.swift
//  Demo VIPER
//
//  Created by mohamed sayed on 11/23/20.
//

import Foundation
class Presenter :PresenterProtocol,InteractorOutputProtocol {
    
    weak var view: ViewProtocol?
    private let interactor:InteractorInputProtocol
    private let router:RouterProtocol
    private var quranData = [QuranData]()
    
    var tableRows: Int {
        return quranData.count
    }
    init(view:ViewProtocol,interactor:InteractorInputProtocol,router:RouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    
    
    func startAPI() {
        view?.showProgress()
        interactor.getDataFromServer()
    }
    
    func getDataSucessfully(quranData: [QuranData]) {
        view?.hiddeProgress()
        self.quranData.append(contentsOf: quranData)
    }
    
    func faild(error: String) {
        view?.hiddeProgress()
        print("the error is \(error)")
    }
    
    func setCellData(cell: SetCellDataProtocol, index: Int) {
        cell.setUpDataCell(quranModel: quranData[index])
    }
}
