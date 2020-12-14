//
//  Visitor.swift
//  Education
//
//  Created by Sergii Stadnyk on 11/18/20.
//

/*
    EN: Visitor separates an algorithm from an object structure by moving the hierarchy of methods into one object.
 
    RU: Позволяет добавлять в программу новые операции не изменяя классы обьектов, над которыми эти операции могут выполнятся.
  
*/

import Foundation

protocol PlanetVisitor {
    func visit(planet: Venus)
    func visit(planet: Mars)
    func visit(planet: Saturn)
}

protocol Planet {
    func accept(visitor: PlanetVisitor)
}

class Venus: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

class Mars: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}

class Saturn: Planet {
    func accept(visitor: PlanetVisitor) {
        visitor.visit(planet: self)
    }
}



class NameVisitor: PlanetVisitor {
    var name: String = .init()

    func visit(planet: Venus)  {
        name = String(describing: Venus.self)
    }
    
    func visit(planet: Mars) {
        name = String(describing: Mars.self)
    }
    
    func visit(planet: Saturn)  {
        name = String(describing: Saturn.self)
    }
}

/*
 let planets: [Planet] = [Venus(), Mars(), Saturn()]

 let visitor = NameVisitor()
 
 for planet in planets {
     planet.accept(visitor: visitor)
     
     print(visitor.name)
 }
 */
