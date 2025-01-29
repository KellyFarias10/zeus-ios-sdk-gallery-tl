//
//  BaseResponse.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//

import Foundation

struct BaseResponse:Codable{
    
    let total:Int
    var totalPages:Int
    let results:[Photo]
    
    enum CodingKeys:String,CodingKey{
        case total
        case totalPages = "total_pages"
        case results
    }
}
