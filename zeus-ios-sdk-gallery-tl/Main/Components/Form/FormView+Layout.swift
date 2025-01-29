//
//  FormView+Layout.swift
//  zeus-ios-sdk-webviews-manager
//
//  Created by DSI Soporte Tecnico on 21/01/25.
//

import UIKit

extension FormView{
    func addViews(){
        self.addSubview(stackView)
    }

    func setupContraints(){
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            
              
            
        ])
        
    }
}
