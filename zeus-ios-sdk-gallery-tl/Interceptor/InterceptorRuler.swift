//
//  InterceptorRuler.swift
//  zeus-ios-sdk-webviews-manager
//
//  Created by DSI Soporte Tecnico on 15/01/25.
//

import Foundation
import ZeusCoreInterceptor

class InterceptorRuler: ZCInterceptorRulesDelegate{
    static let shared = InterceptorRuler()
    
    var stackFunctions: [String]? {
        get {
            [""]
        }
        set(newValue) {
            
        }
    }
    
    var hasEnableStackFlow: Bool {
        return true
    }
    
    func deleteActionWithName(actionName: String?) {
    }
    
    func evaluateGoToAction(nameAction: String) -> (canGo: Bool, error: ZCInterceptorErrors) {

        return (canGo: true, error: .noError)
    }
    
    private func checkCurrentStack(nameAction: String) -> (canGo: Bool, error: ZCInterceptorErrors) {
        
        return (canGo: false, error: .noError)
    }
    
    func isActionAvailable(nameAction: String) -> Bool {
        return true
    }
}

