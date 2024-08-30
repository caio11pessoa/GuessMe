//
//  SwiftUIView.swift
//  GuessMe
//
//  Created by Caio de Almeida Pessoa on 30/08/24.
//

import SwiftUI

struct PlayView: View {
    @ObservedObject var viewModel: GuessMeViewModel
    @State var showGame: Bool = false
    var body: some View {
        VStack{
            Spacer()
            Text(viewModel.users[viewModel.currentPlayer])
            if(showGame){
                Text(viewModel.showTema())
            }
            Spacer()
            Button(showGame ? "Próximo": "Mostrar") {
                if(showGame){
                    if(viewModel.currentPlayer < viewModel.users.count - 1){
                        viewModel.currentPlayer += 1
                    }else {
                        viewModel.currentPlayer = 0
                    }
                }
                showGame.toggle()
            }
        }.onAppear(perform: {
            viewModel.setTema()
            viewModel.setImpostor()
        })
    }
}

#Preview {
    PlayView(viewModel: .init())
}
