//
//  MainView+Layout.swift
//  zeus-ios-sdk-webviews-manager
//
//  Created by DSI Soporte Tecnico on 15/01/25.
//

import UIKit

extension MainView{
    func addViews(){
        self.addSubview(containerView)
        containerView.addSubview(containerStackV)
    }

    func setupContraints(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            
              
            containerStackV.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 20),
            containerStackV.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant: -20),
            containerStackV.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: 20),
            containerStackV.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -20),
            
        ])
        
    }
}
