//
//  UIColor+Extension.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//


import UIKit

extension UIColor {
    // Método para crear un UIColor a partir de un código hex
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // Eliminar el prefijo "#" si existe
        if hexSanitized.hasPrefix("#") {
            hexSanitized.removeFirst()
        }
        
        // Asegurarse de que el string sea de longitud 6 (RGB) o 8 (RGBA)
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        var alpha: CGFloat = 1.0
        if hexSanitized.count == 8 {
            alpha = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
        }
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
