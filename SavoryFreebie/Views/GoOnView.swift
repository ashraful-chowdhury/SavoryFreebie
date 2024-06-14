//
//  GoOnView.swift
//  SavoryFreebie
//
//  Created by Mohammad Ashraful Haque Chowdhury on 14/6/24.
//

import SwiftUI

struct GoOnView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("SavoryLogo")
            Spacer()
            HStack {
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 48, height: 48)
                VStack {
                    Text("Jane Austin")
                    Text("Copywriter")
                }
            }
            Spacer()
            Text("Continue with")
            
            AppButton(icon: Image(systemName: "star"), title: "Instagram", action: {
                print("Button with icon tapped")
            }, backgroundColor: .black)
            .padding(.horizontal)
            
            AppButton(icon: Image(systemName: "star"), title: "Facebook", action: {
                print("Button without icon tapped")
            }, backgroundColor: .blue)
            .padding(.horizontal)
            
            AppButton(icon: Image(systemName: "star"), title: "Twitter", action: {
                print("Button with icon tapped")
            }, backgroundColor: .purple)
            .padding(.horizontal)
            
            AppButton(icon: Image(systemName: "star"), title: "Email Address", action: {
                print("Button without icon tapped")
            }, backgroundColor: .red)
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    GoOnView()
}
