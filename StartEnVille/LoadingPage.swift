//
//  LoadingPage.swift
//  StartEnVille
//
//  Created by charlene hoareau on 08/02/2024.
//

import SwiftUI

struct LoadingPage: View {
    @State var downloadAmount = 0.0
        let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

        var body: some View {
            VStack {
                Image("Startenvillelogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    

                ProgressView("Downloading…", value: downloadAmount, total: 50)
                    .onReceive(timer) { _ in
                        if downloadAmount < 50 {
                            downloadAmount += 2
                        }
                    }
            }
            .padding()
        }
    }


#Preview {
    LoadingPage()
}
