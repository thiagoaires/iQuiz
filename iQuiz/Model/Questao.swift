//
//  Questao.swift
//  iQuiz
//
//  Created by Thiago Aires da Silva on 06/04/25.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum","Avada Kedavra","Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Qual o nome do castelo onde se passa a maior parte da história de Harry Potter?", respostas: ["Beauxbatons", "Hogwarts", "Durmstrang"], respostaCorreta: 1),
    Questao(titulo: "Quem é o melhor amigo de Harry Potter?", respostas: ["Draco Malfoy", "Neville Longbottom", "Ron Weasley"], respostaCorreta: 2),
    Questao(titulo: "Qual é o nome da coruja de Harry?", respostas: ["Edwiges", "Crookshanks", "Fawkes"], respostaCorreta: 0),
    Questao(titulo: "Qual é a casa de Hogwarts que tem como símbolo um leão?", respostas: ["Sonserina", "Grifinória", "Corvinal"], respostaCorreta: 1)
]

