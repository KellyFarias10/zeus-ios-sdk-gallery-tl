//
//  MainView.swift
//  zeus-ios-sdk-webviews-manager
//
//  Created by DSI Soporte Tecnico on 15/01/25.
//

import UIKit
import ZeusCoreDesignSystem

class MainView: UIView {
    
    lazy var containerStackV: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [form])
        stack.axis = .vertical
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let containerView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
   
    let form = FormView()
    
    init(){
        super.init(frame: .zero)
        addViews()
        setupContraints()
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
