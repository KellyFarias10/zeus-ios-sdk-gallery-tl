//
//  DetailsInteractor.swift
//  zeus-ios-sdk-gallery-tl
//
//  Created DSI Soporte Tecnico on 28/01/25.
//  Copyright © 2025 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by UPAX Zeus
//

import UIKit

class DetailsInteractor: DetailsInteractorInputProtocol {
    weak var presenter: DetailsInteractorOutputProtocol?
    
    func downloadAndSaveImage(from urlString: String) {
        guard let url = URL(string: urlString) else {
            print("URL inválida")
            return
        }

        // Descargar la imagen
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                self.presenter?.error(message: "Error al descargar la imagen: \(error.localizedDescription)")
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                self.presenter?.error(message: "No se pudo convertir los datos en imagen")
                return
            }
            
            // Guardar en la galería
            DispatchQueue.main.async {
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                self.presenter?.success(message: "Imagen guardada en la galería correctamente")
            }
        }.resume()
    }
    


}
