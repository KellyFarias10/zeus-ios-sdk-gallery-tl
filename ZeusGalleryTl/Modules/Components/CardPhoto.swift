//
//  CardPhoto.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//

import UIKit
import Kingfisher
import ZeusCoreDesignSystem

class CardPhoto: UIView {

    let imgPhoto:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.kf.indicatorType = .activity
        img.clipsToBounds = true
        img.layer.cornerRadius = 10
        return img
    }()
    
    let imgLike:UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        img.image = UIImage(systemName: "heart.fill")
        img.tintColor = .red
        return img
    }()
    
    let lblLike:UILabel={
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        lbl.font = UIFont(style: .bodyTextS(variant: .bold, isItalic: false))
        lbl.textColor = .white
        return lbl
    }()

    
    init(){
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        addViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews(){
        self.addSubview(imgPhoto)
        self.addSubview(imgLike)
        self.imgLike.addSubview(lblLike)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            imgPhoto.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imgPhoto.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imgPhoto.topAnchor.constraint(equalTo: self.topAnchor),
            imgPhoto.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            imgLike.widthAnchor.constraint(equalToConstant: 30),
            imgLike.heightAnchor.constraint(equalTo: imgLike.widthAnchor, multiplier: 1),
            
            imgLike.topAnchor.constraint(equalTo: imgPhoto.topAnchor,constant: 10),
            imgLike.trailingAnchor.constraint(equalTo: imgPhoto.trailingAnchor,constant: -10),
            
            lblLike.centerXAnchor.constraint(equalTo: imgLike.centerXAnchor),
            lblLike.centerYAnchor.constraint(equalTo: imgLike.centerYAnchor)
        
        ])
    }
    
    func setImage(url:String){
        imgPhoto.kf.setImage(with: URL(string: url))
    }
    func set(likes:Int){
        lblLike.text = "\(likes)"
    }
    
}
