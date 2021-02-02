//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Christopher Bartling on 2/1/21.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[3])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
