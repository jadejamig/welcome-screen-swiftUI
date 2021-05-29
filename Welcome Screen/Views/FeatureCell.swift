//
//  FeatureCell.swift
//  Welcome Screen
//
//  Created by Anselm Jade Jamig on 5/30/21.
//

import SwiftUI

struct FeatureCell: View {
    var image: String
    var title: String
    var subtitle: String
    var color: Color
    
    var body: some View {
        HStack(spacing: 24) {
            Image(systemName: self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .foregroundColor(self.color)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(self.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text(self.subtitle)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
            
            Spacer()
            
        }
    }
}

struct FeatureCell_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCell(image: "text.badge.checkmark", title: "Title", subtitle: "subtitle", color: .blue)
    }
}
