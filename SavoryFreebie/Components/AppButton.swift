//
//  AppButton.swift
//  SavoryFreebie
//
//  Created by Mohammad Ashraful Haque Chowdhury on 14/6/24.
//

import SwiftUI

struct AppButton: View {
    let icon: Image?
    let title: String
    let action: () -> Void
    let backgroundColor: Color

    var body: some View {
        Button(action: action) {
            HStack {
                if let icon = icon {
                    icon
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .padding(.leading, 16)
                } else {
                    Rectangle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.clear)
                        .padding(.leading, 16)
                }

                Spacer()

                Text(title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)

                Spacer()
                
                Rectangle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.clear)
                    .padding(.leading, 16)
            }
            .frame(height: 48)
            .background(backgroundColor)
            .cornerRadius(0)
        }
    }
}

#Preview {
    VStack {
        AppButton(icon: Image(systemName: "star"), title: "Button with Icon", action: {
            print("Button with icon tapped")
        }, backgroundColor: Color.blue)
        .padding()

        AppButton(icon: nil, title: "Button without Icon", action: {
            print("Button without icon tapped")
        }, backgroundColor: Color.green)
        .padding()
    }
}
