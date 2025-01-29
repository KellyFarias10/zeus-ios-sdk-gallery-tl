//
//  GridGalleryCollectionViewCell.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 27/01/25.
//

import UIKit


class GridGalleryCollectionViewCell: UICollectionViewCell {
    let lblDescription:UILabel={
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textAlignment = .center
        lbl.textColor = .black
        return lbl
    }()
    
   let imgPhoto = CardPhoto()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews(){
        self.contentView.addSubview(imgPhoto)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            imgPhoto.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imgPhoto.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imgPhoto.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            imgPhoto.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        
        ])
    }
    
    func setup(data:Photo){
        lblDescription.text = data.description ?? "N/A"
        imgPhoto.setImage(url: data.urls.full)
        imgPhoto.set(likes: data.likes)
    }
}
