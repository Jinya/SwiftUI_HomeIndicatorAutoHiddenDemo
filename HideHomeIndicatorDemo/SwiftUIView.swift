//
//  SwiftUIView.swift
//  HideHomeIndicatorDemo
//
//  Created by Jinya on 2021/10/15.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        GeometryReader { proxy in
            Text("SwfitUI view without the annoying home indicator!")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundColor(.init(uiColor: .systemBlue))
                .border(Color.init(uiColor: .systemGray), width: 2)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .border(Color.init(uiColor: .systemPink), width: 2)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
