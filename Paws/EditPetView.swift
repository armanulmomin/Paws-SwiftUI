//
//  EditPetView.swift
//  Paws
//
//  Created by Arman on 31/10/25.
//

import SwiftUI
import SwiftData

struct EditPetView: View {
    var body: some View {
        Text("new text")
    }
}

#Preview {
    NavigationStack {
        do{
            let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
            
            
            
            let container = try ModelContainer(for: Pet.self, configurations: configuration)
            let sampleData = Pet(name: "Leo")
            
            return EditPetView()
                .modelContainer(container)
        } catch {
            fatalError("Could not load preview data. \(error.localizedDescription)")
        }
    }
}
