//
//  ViewController.swift
//  itree
//
//  Created by Student on 9/26/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNomePopular: UITextField!
    @IBOutlet weak var tfEspecie: UITextField!
    @IBOutlet weak var tfFamilia: UITextField!
    @IBOutlet weak var tfFormaDeVida: UITextField!
    
    static var formaDeVida: FormaVida?
    static var familia: Familia?
    static var especie: Especie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround() 
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier! == "segueSelectFamilia" {
            if let nextSegue = segue.destinationViewController as? SelectFamiliaTableViewController {
                if let formaVida = ViewController.formaDeVida {
                        nextSegue.formaDeVida = formaVida
                }
            }
            
        } else if segue.identifier! == "segueSelectEspecie"{
            if let nextSegue = segue.destinationViewController as? SelectEspecieTableViewController {
                if let familia = ViewController.familia{
                    nextSegue.familia = familia
                }
            }
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        if let familia = ViewController.familia {
            tfFamilia.text = familia.nome
        }
        if let formaVida = ViewController.formaDeVida {
            tfFormaDeVida.text = formaVida.nome
        }
        if let especie = ViewController.especie {
            tfEspecie.text = especie.nome
        }
    }
}

