//
//  ColoredBtnView.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import SwiftUI

struct ColoredBtnView: View {
    
    var title: String
    var onClick: ()->()
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(LocalizedStringKey(title))
                .font(.name)
                .lineLimit(2)
                .foregroundColor(.white)
                .padding(16)
        }.frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(10)
    }
}

struct ColoredBtnView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredBtnView(title: "title", onClick: { })
    }
}
