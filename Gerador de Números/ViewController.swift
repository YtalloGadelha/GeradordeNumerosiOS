//
//  ViewController.swift
//  Gerador de Números
//
//  Created by Ytallo on 03/07/19.
//  Copyright © 2019 CursoiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaGerada: UILabel!
    @IBOutlet weak var numeroEscolhido: UITextField!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        numeroEscolhido.layer.cornerRadius = 10
        numeroEscolhido.layer.masksToBounds = true
        legendaGerada.layer.cornerRadius = 10
        legendaGerada.layer.masksToBounds = true
        resultado.layer.cornerRadius = 10
        resultado.layer.masksToBounds = true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func gerarNumero(_ sender: Any) {
        
        let numero = arc4random_uniform(11)
        
        if let numeroEscolhido = Int(numeroEscolhido.text!), numeroEscolhido >= 0, numeroEscolhido < 11{
            if numeroEscolhido == Int(numero) {
                legendaGerada.text = "Número gerado: \(numero)"
                legendaGerada.textColor = .green
                resultado.text = "Acertou"
                resultado.textColor = .green
            } else {
                legendaGerada.text = "Número gerado: \(numero)"
                resultado.text = "Errou"
            }
        } else {
            numeroEscolhido.text = ""
            legendaGerada.text = ""
            resultado.text = "Por favor, escolha um número válido"
        }
        
    }

}
