//
//  DetailsView+Layout.swift
//  zeus-ios-sdk-gallery-tl
//
//  Created DSI Soporte Tecnico on 28/01/25.
//  Template generated by UPAX Zeus
//

import UIKit

extension DetailsView {
    func addViews() {
        self.addSubview(cardView)
        cardView.addSubview(scroll)
        scroll.addSubview(containerView)
        containerView.addSubview(image)
        containerView.addSubview(stackV)
        cardView.addSubview(buttonView)
    }
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 20),
            cardView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,constant: -20),
            cardView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,constant: 20),
            cardView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            buttonView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor,constant: -20),
            buttonView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            buttonView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            
            scroll.topAnchor.constraint(equalTo: self.cardView.topAnchor),
            scroll.bottomAnchor.constraint(equalTo: self.buttonView.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: self.cardView.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: self.cardView.trailingAnchor),
            scroll.widthAnchor.constraint(equalTo: self.cardView.widthAnchor),
            
            containerView.topAnchor.constraint(equalTo: scroll.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            containerView.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 1),
            image.topAnchor.constraint(equalTo: containerView.topAnchor,constant: 20),
            image.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            stackV.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 50),
            stackV.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant: -20),
            stackV.leadingAnchor.constraint(equalTo: containerView.leadingAnchor,constant: 20),
            stackV.trailingAnchor.constraint(equalTo: containerView.trailingAnchor,constant: -20),
            
        ])
    }
}
