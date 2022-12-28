//
//  ViewController.swift
//  Conversores
//
//  Created by Vinicius Loss on 27/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_nr_valor: UITextField!
    
    @IBOutlet weak var btn_farenheint: UIButton!
    @IBOutlet weak var btn_celsius: UIButton!
    
    @IBOutlet weak var lb_resultado: UILabel!
    @IBOutlet weak var lb_unidade_medida: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_next(_ sender: UIButton) {
    }
    
    @IBAction func btn_converter(_ sender: UIButton) {
    }
}

