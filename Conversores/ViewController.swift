//
//  ViewController.swift
//  Conversores
//
//  Created by Vinicius Loss on 27/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_nr_valor: UITextField!
    
    @IBOutlet weak var btn_acao_01: UIButton!
    @IBOutlet weak var btn_acao_02: UIButton!
    
    @IBOutlet weak var lb_resultado: UILabel!
    @IBOutlet weak var lb_sub_resultado: UILabel!
    @IBOutlet weak var lb_title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_next(_ sender: UIButton) {
        switch lb_title.text! {
            case "Temperatura":
                lb_title.text = "Peso"
                btn_acao_01.setTitle("Kilograma",for: .normal)
                btn_acao_02.setTitle("Libra",for: .normal)
            case "Peso":
                lb_title.text = "Moeda"
                btn_acao_01.setTitle("Real",for: .normal)
                btn_acao_02.setTitle("Dólar",for: .normal)
            case "Moeda":
                lb_title.text = "Distância"
                btn_acao_01.setTitle("Metros",for: .normal)
                btn_acao_02.setTitle("Km",for: .normal)
            default:
                lb_title.text = "Temperatura"
                btn_acao_01.setTitle("Celsius",for: .normal)
                btn_acao_02.setTitle("Farenheint",for: .normal)
        }
        
        btn_converter(nil)
    }
    
    @IBAction func btn_converter(_ sender: UIButton?) {
        if let sender = sender{
            if sender == btn_acao_01{
                btn_acao_02.alpha = 0.5
            } else {
                btn_acao_01.alpha = 0.5
            }
            
            sender.alpha = 1.0
        }
        
        switch lb_title.text! {
            case "Temperatura":
                calcTemperature()
            case "Peso":
                calcWeight()
            case "Moeda":
                calcCurrency()
            default:
                calcDistance()
        }
    }
    
    func calcTemperature(){
        guard let temperature = Double(tf_nr_valor!) else {return}
        
        if btn_acao_01.alpha == 1.0{
            lb_sub_resultado.text = "Farenheint"
            lb_resultado.text = String()
            
        } else {
            lb_sub_resultado.text = "Celsius"
        }
    }
    
    func calcWeight(){
        
    }
    
    func calcCurrency(){
        
    }
    
    func calcDistance(){
        
    }
}

