//
//  GalleryInterptorItem.swift
//  ZeusGalleryTl
//
//  Created by DSI Soporte Tecnico on 28/01/25.
//

import ZeusCoreInterceptor

class GalleryInterptorItem:ZCInterceptorItem{
    static var moduleName: String = ZCIInternalZeusKeys.livePhotos.key
    
    static func createModule(withInfo parameters: [String : Any]?) -> UIViewController {
        return GalleryRouter.createModule()
    }
}

public class GalleryFlow{
    public static func registerAction(){
        ZCInterceptor.shared.registerFlow(withNavigatorItem: GalleryInterptorItem.self)
    }
}
