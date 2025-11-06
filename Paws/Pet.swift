//
//  Pet.swift
//  Paws
//
//  Created by Arman on 29/10/25.
//

import Foundation
import SwiftData

@Model
final class Pet {
    var name: String
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, photo: Data? = nil) {
        self.name = name
        self.photo = photo
    }
}

extension Pet {
    @MainActor
    static var preview: ModelContainer{
      let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try! ModelContainer(for: Pet.self, configurations: configuration)
        
        container.mainContext.insert(Pet(name: "A"))
        container.mainContext.insert(Pet(name: "B"))
        container.mainContext.insert(Pet(name: "C"))
        container.mainContext.insert(Pet(name: "D"))
        container.mainContext.insert(Pet(name: "E"))
        container.mainContext.insert(Pet(name: "F"))
        container.mainContext.insert(Pet(name: "G"))
        container.mainContext.insert(Pet(name: "E"))
        container.mainContext.insert(Pet(name: "F"))
        container.mainContext.insert(Pet(name: "G"))
        
        
        
        return container
    }
}
