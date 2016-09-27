//
//  ViewController.swift
//  itree
//
//  Created by Student on 9/26/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNomePopular: UITextField!
    @IBOutlet weak var tfEspecie: UITextField!
    @IBOutlet weak var tfFamilia: UITextField!
    @IBOutlet weak var tfFormaDeVida: UITextField!
    
    static var formaDeVidaNome: String?
    static var familiaNome: String?
    static var especieNome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier! == "segueSelectFamilia" {
            if let nextSegue = segue.destinationViewController as? SelectFamiliaTableViewController {
                if let formaVida = tfFormaDeVida.text {
                    nextSegue.formaDeVida = FormaVida(nome: formaVida , descricao: "")
                }
            }
            
        } else if segue.identifier! == "segueSelectEspecie"{
            if let nextSegue = segue.destinationViewController as? SelectEspecieTableViewController {
                if let familia = tfFamilia.text {
                    nextSegue.familia = Familia(nome: familia, formaVida:  FormaVida(nome: familia , descricao: ""))
                }
            }
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        if let familia = ViewController.familiaNome {
            tfFamilia.text = familia
        }
        if let formaVida = ViewController.formaDeVidaNome {
            tfFormaDeVida.text = formaVida
        }
        if let especie = ViewController.especieNome {
            tfEspecie.text = especie
        }
    }
}

