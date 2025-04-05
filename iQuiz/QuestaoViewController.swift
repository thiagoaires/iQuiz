//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Thiago Aires da Silva on 31/03/25.
//

import UIKit

class QuestaoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true;
        
        for botao in botoesRespostas{
            botao.layer.cornerRadius = 12.0
        }
    }
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
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
