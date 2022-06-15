//
//  BackgroundImageView.swift
//  MyTaskManager
//
//  Created by Manny Alvarez on 11/06/2022.
//

import SwiftUI

struct BackgroundImageView: View {
    // MARK: - Properties


    // MARK: - Body
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

// MARK: - Preview
struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
