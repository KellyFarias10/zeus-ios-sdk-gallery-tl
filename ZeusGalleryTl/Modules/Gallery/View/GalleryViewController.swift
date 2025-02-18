//
//  GalleryViewController.swift
//  zeus-ios-sdk-gallery-tl
//
//  Created DSI Soporte Tecnico on 27/01/25.
//  Template generated by UPAX Zeus
//

import UIKit
import EmptyDataSet_Swift
import ZeusCoreDesignSystem
import ZeusSessionInfo

class GalleryViewController: ZDSUDNViewController {
    var presenter: GalleryPresenterProtocol?
    
    /// Views for this controller
    let mainView = GalleryView()
    
    internal let numberOfColumns: CGFloat = 2
    internal let cellSpacing: CGFloat = 10
    
    override func viewDidLoad() {
        titleString = "Bienvenido(a) \(SessionInfo.shared.user?.name ?? "")"
        let colorUDN = UIColor(hex: SessionInfo.shared.company?.primaryColor ?? "")
        headerColor = colorUDN
        navigationBarColor = colorUDN
        super.viewDidLoad()
        view = mainView
        
        setupGestures()
        presenter?.search(word: "")
    }
    
    
    private func setupGestures() {
        mainView.searchBar.delegate = self
        
        mainView.collection.delegate = self
        mainView.collection.dataSource = self
        
        mainView.collection.emptyDataSetSource = self
        mainView.collection.emptyDataSetDelegate = self
        
        mainView.collection.register(GridGalleryCollectionViewCell.self, forCellWithReuseIdentifier: "GridGalleryCollectionViewCell")
        
        mainView.paginator.afterButton.onClick = {
            self.presenter?.requestNext()
        }
        
        mainView.paginator.beforeButton.onClick = {
            self.presenter?.requestPrevious()
        }
       
        
    }
    
}

extension GalleryViewController: GalleryViewProtocol {
    func reloadPaginator() {
        guard let presenter = presenter else  {return}
        if presenter.currentPage == presenter.totalPages {
            mainView.paginator.afterButton.disabled = true
        }else{
            mainView.paginator.afterButton.disabled = false
        }
        mainView.paginator.pageLabel.text = "\(presenter.currentPage)"
        if presenter.currentPage <= 1 {
            mainView.paginator.beforeButton.disabled = true
        }else{
            mainView.paginator.beforeButton.disabled = false
        }
    }
    
    func reloadData() {
        mainView.collection.reloadData()
    }
    
}

extension GalleryViewController:UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        presenter?.search(word: searchBar.text ?? "")
        searchBar.resignFirstResponder()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        presenter?.search(word: "")
        searchBar.text = ""
        searchBar.resignFirstResponder()
    }
    
    
}
