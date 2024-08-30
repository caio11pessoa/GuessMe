//
//  ContentView.swift
//  GuessMe
//
//  Created by Caio de Almeida Pessoa on 30/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: GuessMeViewModel = GuessMeViewModel()
    @State var newPlayer: String = ""
    var body: some View {
        NavigationStack{
            VStack {
                Text("Adicionar jogadores")
                Spacer()
                List {
                    ForEach(viewModel.users, id: \.self){ user in
                        Text(user)
                    }
                    .onDelete(perform: { indexSet in
                        viewModel.users.remove(atOffsets: indexSet)
                    })
                    TextField("Novo jogador", text: $newPlayer)
                    Button("Adicionar") {
                        viewModel.users.append(newPlayer)
                        newPlayer = ""
                    }
                }
                .scrollContentBackground(.hidden)
                Spacer()
                NavigationLink {
                    PlayView(viewModel: viewModel)
                } label: {
                    VStack{
                        Text("Jogar")
                            .bold()
                    }
                    .frame(width: 100, height: 100)
                    .background(.blue.opacity(0.2))
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
