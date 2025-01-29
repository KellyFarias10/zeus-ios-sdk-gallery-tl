//
//  FormView.swift
//  zeus-ios-sdk-webviews-manager
//
//  Created by DSI Soporte Tecnico on 21/01/25.
//

import UIKit
import ZeusCoreDesignSystem

class FormView: UIView {
    var nameTextField: ZDSTextField = {
        var textField = ZDSTextField()
        textField.title = "Nombre"
        //textField.maxWidth = 20
        textField.allowedCharacters = CharacterSet.alphanumerics.union(.whitespaces)
        return textField
    }()
    
    var stateButton: ZDSButton = {
        var button = ZDSButton()
        button.primaryColor = .zeusPrimaryColor ?? .purple
        button.title = "Guardar info"
        return button
    }()
    
    lazy var stackView:UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameTextField.asUIKitView(),stateButton
            .asUIKitView()])
        stack.axis = .vertical
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    init(){
        super.init(frame: .zero)
        addViews()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
