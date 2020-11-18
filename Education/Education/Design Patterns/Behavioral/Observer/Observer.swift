//
//  Observer.swift
//  Education
//
//  Created by Sergii Stadnyk on 11/18/20.
//

import Foundation

protocol Observer: class {
    func didReceiveNotification(_ manager: NotificationsManager)
}

class NotificationsManager {
    
    private var observers = [Observer]()
    
    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: Observer) {
        let indexOfElement = observers.firstIndex(where: { $0 === observer})
        
        if let index = indexOfElement {
            observers.remove(at: index)
        }
    }
    
    func pushEvent() {
        observers.forEach { (observer) in
            observer.didReceiveNotification(self)
        }
    }
}
