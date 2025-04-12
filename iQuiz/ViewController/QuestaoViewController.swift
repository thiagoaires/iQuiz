//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Thiago Aires da Silva on 31/03/25.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao: Int = 0
    var numeroQuestao: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true;
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configurarQuestao(){
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        for botao in botoesRespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
        let userAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        print(userAcertouResposta)
        if userAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else{
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else{
            navegaTelaDesempenho()
        }
        
    }
    
    func navegaTelaDesempenho(){
        print("GO")
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController
        else {
            return
        }
        
        desempenhoVC.pontuacao = pontuacao
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
