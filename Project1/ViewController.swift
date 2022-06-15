//
//  ViewController.swift
//  Project1
//
//  Created by Raina Rodrigues de Lima on 14/06/22.
//

import UIKit

class ViewController: UITableViewController { //Criar uma nova tela do padrao lista- UITable da Apple
    
    var pictures = [String]()//Matriz que esxitirá em quanto a tela for criada
        
    override func viewDidLoad() { //É um metodo que adiciona um padrão dentro dele e chama quando uma nova tela é carregada
        super.viewDidLoad() //Executar o cód
        
        
        let fm = FileManager.default //permite trabbalhar com sistema de arquivos
        let path = Bundle.main.resourcePath! //caminho do recurso de pacote
        let items = try! fm.contentsOfDirectory(atPath: path) //diretorio de um caminho
        
        for item in items{ //encontra cada item para pacote
            if item.description.hasPrefix("nssl"){ //primeiro aquivo encontrado
                // this is a picture to load!
                pictures.append(item)

            }
        }
        print(pictures)
    }


}

