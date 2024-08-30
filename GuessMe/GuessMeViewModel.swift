//
//  GuessMeViewModel.swift
//  GuessMe
//
//  Created by Caio de Almeida Pessoa on 30/08/24.
//

import Foundation

class GuessMeViewModel: ObservableObject {
    var users: [String] = ["Caio", "Ian", "David", "Julia", "Dani", "Pedro"]
    var indexImpostor: Int = 0
    var currentPlayer: Int = 0
    
    func setImpostor() {
        indexImpostor = Int.random(in: 1...users.count) - 1
    }
    func setTema() {
        indexTema = Int.random(in: 1...temas.count) - 1
    }
    
    func showTema() -> String {
        if(currentPlayer == indexImpostor){
            return "Impostor"
        }
        return temas[indexTema]
    }
    
    var indexTema: Int = 0
    var temas: [String] = [
        "Albert Einstein",
        "Cleópatra",
        "William Shakespeare",
        "Frida Kahlo",
        "Marilyn Monroe",
        "Napoleão Bonaparte",
        "Mahatma Gandhi",
        "Elvis Presley",
        "Londres",
        "Paris",
        "Nova Iorque",
        "Tóquio",
        "Sydney",
        "Rio de Janeiro",
        "Estátua da Liberdade",
        "Torre Eiffel",
        "Pirâmides do Egito",
        "Coliseu Romano",
        "Muralha da China",
        "Mona Lisa",
        "David de Michelangelo",
        "Violin Stradivarius",
        "Corvette 1963",
        "iPhone",
        "Fender Stratocaster"
    ]

}
