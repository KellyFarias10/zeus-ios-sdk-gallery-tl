//
//  PaginatorView.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 27/01/25.
//

import UIKit
import ZeusCoreDesignSystem

class PaginatorView: UIView {
    
    lazy  var paginatorStack:UIStackView = {
        let stack = UIStackView(arrangedSubviews: [beforeButton.asUIKitView(),pageLabel,afterButton.asUIKitView()])
        stack.axis = .horizontal
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    var beforeButton:ZDSButton={
        var btn=ZDSButton()
        btn.primaryColor = .zeusPrimaryColor ?? .purple
        btn.setTitle("Anterior", for: .normal)
        btn.icon = .init(materialIcon: .keyboardArrowLeft)
        return btn
    }()
    
    var afterButton:ZDSButton = {
        var btn=ZDSButton()
        btn.primaryColor = .zeusPrimaryColor ?? .purple
        btn.setTitle("Siguiente", for: .normal)
        btn.icon = .init(materialIcon: .keyboardArrowRight)
        return btn
    }()
    
    var pageLabel:UILabel={
        let label=UILabel()
        label.font = UIFont(style: .bodyTextL())
        label.text = "-"
        return label
    }()
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    init() {
        super.init(frame: .zero)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews(){
        self.addSubview(paginatorStack)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            paginatorStack.topAnchor.constraint(equalTo: self.topAnchor),
            paginatorStack.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            paginatorStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            paginatorStack.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
        ])
    }
}
