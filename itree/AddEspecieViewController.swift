//
//  AddEspecieViewController.swift
//  itree
//
//  Created by Student on 9/28/16.
//  Copyright © 2016 biotruck. All rights reserved.
//

import UIKit

class AddEspecieViewController: UIViewController {

    @IBOutlet weak var tfFormaVida: UITextField!
    @IBOutlet weak var tfFamilia: UITextField!
    @IBOutlet weak var tfNomeEspecie: UITextField!
    @IBOutlet weak var tfNomeAutor: UITextField!
    @IBOutlet weak var tfNomePopular: UITextField!
    @IBOutlet weak var tfNomePopular2: UITextField!
    
    static var familia: Familia?
    static var formaDeVida: FormaVida?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    @IBAction func btnDone(sender: UIBarButtonItem) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    
    
    
    
    
    
    
}
