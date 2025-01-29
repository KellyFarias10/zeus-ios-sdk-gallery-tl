//
//  GalleryViewController+UICollection.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//

import Foundation
import UIKit
import EmptyDataSet_Swift

extension GalleryViewController:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let totalSpacing = (numberOfColumns - 1) * cellSpacing // Total spacing between cells
            let cellWidth = (collectionView.frame.width - totalSpacing) / numberOfColumns
            return CGSize(width: cellWidth, height: cellWidth) // Square cells
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return cellSpacing
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return cellSpacing
        }
    
}
extension GalleryViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.results.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridGalleryCollectionViewCell", for: indexPath) as? GridGalleryCollectionViewCell else {
            return UICollectionViewCell()
        }
        guard let photo = presenter?.results[indexPath.row] else {return cell}
        cell.setup(data: photo)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.onClick(index: indexPath.row)
    }
    
}

extension GalleryViewController:EmptyDataSetSource,EmptyDataSetDelegate{
    func title(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString? {
            let str = "Sin Resultados"
            let attrs = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .headline)]
            return NSAttributedString(string: str, attributes: attrs)
        }

        func description(forEmptyDataSet scrollView: UIScrollView) -> NSAttributedString? {
            let str = "No hay información para mostrar"
            let attrs = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .body)]
            return NSAttributedString(string: str, attributes: attrs)
        }

}
