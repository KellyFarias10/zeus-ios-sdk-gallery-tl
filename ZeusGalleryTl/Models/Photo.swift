//
//  Photo.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//

import Foundation
struct Photo:Codable{
    let id:String
    let createdAt:String
    let likes:Int
    let description:String?
    let urls :Url
    let links:Links
    let user:User
  
    
    enum CodingKeys:String,CodingKey {
        case id,likes,urls,links,user
        case createdAt="created_at"
        case description = "alt_description"
    }
    struct Url:Codable{
        let regular:String
        let full:String
    }

    struct Links:Codable{
        let api:String
        let html:String
        let download:String
        enum CodingKeys:String,CodingKey{
            case api = "self"
            case html,download
        }
    }
}
