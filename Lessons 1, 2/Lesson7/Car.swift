//
//  Car.swift
//  ClassesAndStruct
//
//  Created by berdy on 07.12.23.
//

import Foundation

class Car {
    private var engine: String
    
    init(engine: String) {
        self.engine = engine
    }
    
    func start() {
        print("Starting the car with \(engine) engine")
        // Логика запуска двигателя
    }
}
