//
//  FinishView.swift
//  GymFun
//
//  Created by ahmad naufal alfakhar on 30/04/24.
//

import SwiftUI

struct FinishView: View {
    @ObservedObject var viewModel: ViewModel
    
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack{
                Text("🥳")
                    .font(.system(size: 150))
                NavigationLink(destination: ContentView()
                    .navigationBarBackButtonHidden()
                ) {
                    Label("Back", systemImage: "return")
                        .bold()
                        .foregroundColor(.orange)
                        .labelStyle(.iconOnly)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color(.white))
                        )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange.edgesIgnoringSafeArea(.all))
        }    }
}

#Preview {
    FinishView(viewModel: ViewModel.preview())
}
