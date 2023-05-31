//
//  LineView.swift
//  Moonshot
//
//  Created by Aigerim Abitayeva on 01.06.2023.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
