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
        
        let numero = arc4random_uniform(101)
        legendaGerada.text = String(numero)
        
        if let numeroEscolhido = Int(numeroEscolhido.text!) {
            if numeroEscolhido == Int(numero) {
                resultado.text = "Acertou"
            } else {
                resultado.text = "Errou"
            }
        } else {
            resultado.text = "Por favor, escolha um número válido"
        }
        
    }

}
