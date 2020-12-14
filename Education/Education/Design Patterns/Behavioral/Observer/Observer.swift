//
//  Observer.swift
//  Education
//
//  Created by Sergii Stadnyk on 11/18/20.
//

/*
    EN: Observer is a publish/subscribe pattern which allows a number of observer objects to see an event.
 
    RU: Определяет зависимость типа «один ко многим» между объектами таким образом, что при изменении состояния одного объекта все зависящие от него оповещаются об этом событии.
*/

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
