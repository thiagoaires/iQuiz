//
//  ViewController.swift
//  iQuiz
//
//  Created by Thiago Aires da Silva on 29/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    
    @IBAction func BotaoPressionado(_ sender: Any) {
        print("o botao foi pressionado")
    }
    
    func configuraLayout(){
        botaoIniciarQuiz.layer.cornerRadius = 12.0
        botaoIniciarQuiz.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        navigationItem.hidesBackButton = true
    }
}

