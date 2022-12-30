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
    @IBOutlet weak var lb_title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_next(_ sender: UIButton) {
        switch lb_title.text! {
        case "Temperatura":
            lb_title.text = "Peso"
        default:
            lb_title.text = "Teste"
        }
    }
    
    @IBAction func btn_converter(_ sender: UIButton) {
    }
}

