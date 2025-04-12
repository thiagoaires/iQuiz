//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Thiago Aires da Silva on 12/04/25.
//

import UIKit

class DesempenhoViewController: UIViewController {

    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout(){
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count)"
        percentualLabel.text = "Percentual final: \((pontuacao * 100) / questoes.count )%"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
