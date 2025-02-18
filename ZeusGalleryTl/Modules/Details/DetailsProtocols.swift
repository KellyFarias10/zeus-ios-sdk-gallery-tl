//
//  DetailsProtocols.swift
//  zeus-ios-sdk-gallery-tl
//
//  Created DSI Soporte Tecnico on 28/01/25.
//  Copyright © 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by UPAX Zeus
//

import Foundation

//MARK: Presenter -> Router
protocol DetailsWireframeProtocol: AnyObject {
    func openGallery()
}

//MARK: View -> Presenter
protocol DetailsPresenterProtocol: AnyObject {
    var interactor: DetailsInteractorInputProtocol? { get set }
    var photo:Photo? {get set}
    func downloadAndSaveImage(from urlString: String)
    func openGallery()
}

//MARK: Interactor -> Presenter
protocol DetailsInteractorOutputProtocol: AnyObject {
    
    func success(message:String)
    func error(message:String)
    
}

//MARK: Presenter -> Interactor
protocol DetailsInteractorInputProtocol: AnyObject {
    var presenter: DetailsInteractorOutputProtocol?  { get set }
    func downloadAndSaveImage(from urlString: String)
}

//MARK: Presenter -> View
protocol DetailsViewProtocol: AnyObject {
    var presenter: DetailsPresenterProtocol?  { get set }
    
    func stopLoader()
    
    func show(message:String)
}
