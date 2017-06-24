//
//  PANetworkActivityIndicator.swift
//  Pods
//
//  Created by Prasanna Aithal on 24/06/17.
//
//

import Foundation
import UIKit

var networkActivityCount: Int = 0

extension UIApplication {
   
    func synchronized(_ lock: Any, closure: () -> ()) {
        
        objc_sync_enter(lock)
        closure()
        objc_sync_exit(lock)
    }
    
    func refreshNetworkActivityIndicator() -> Void {
        
        if !Thread.isMainThread {
            let mainQueue: DispatchQueue = DispatchQueue.main
            mainQueue.async {
                [unowned self] in
                self.refreshNetworkActivityIndicator()
            }
        }
        
        let visible: Bool = networkActivityCount > 0
        UIApplication.shared.isNetworkActivityIndicatorVisible = visible
    }
    
    public func pushNetworkIndicator() -> Void {
        synchronized(self, closure: {
            networkActivityCount += 1
        })
        self.refreshNetworkActivityIndicator()
    }
    
    public func popNetworkIndicator() -> Void {
        
        synchronized(self, closure: {
            
            if networkActivityCount > 0
            {
                networkActivityCount -= 1
            }
            else
            {
                networkActivityCount = 0
            }
            
        })
        self.refreshNetworkActivityIndicator()
    }
}
