//
//  KilometrosVC.swift
//  Examen2
//
//  Created by Jeferson Bujaico on 5/7/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class KilometrosVC: UIViewController {
    
    @IBOutlet weak var txtMillasK: UITextField!
    @IBOutlet weak var txtYardasK: UITextField!
    @IBOutlet weak var lblValor: UILabel!
    @IBOutlet weak var lblDetalle: UILabel!

    //  MARK: - Variables Constante Declaradas
    let valorMK:Double = 1.60934 // millas a kilometros 1 = 1.60934 Kilometros
    let valorYK:Double = 0.0009144 // yardas a kilometros 1 = 0.0009144 kilometros
    let lblMK:String = "Convertido Millas a Kilometros:"
    let lblYK:String = "Convertido Yardas a Kilometros:"
    //  MARK: - Variables declaradas
    var MillasK:String = ""
    var YardaK:String = ""
    var nMillasK:Double = 0.0
    var nYardasK:Double = 0.0
    
    var ValorFY:String = ""
    var ConvertMK:Double = 0.0
    var ConvertYK:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnMillasK(_ sender: Any) {
        MillasK = txtMillasK.text!
        
        nMillasK = Double(MillasK)!
        //        nKilometrosK = Double(KilometrosK)!
        
        //  Realizando la Operacion
        ConvertMK = nMillasK * valorMK
        
        //  Agregando Valores al CoreData
        //        conv.tipo = lblYM
        //        conv.valorYM = ConvertYM
        
        ValorFY = String(ConvertMK)
        
        lblDetalle.text = lblMK
        lblValor.text = ValorFY
    }
    
    @IBAction func btnYardasK(_ sender: Any) {
        //Convertir el texto en double
        YardaK = txtYardasK.text!
        nYardasK = Double(YardaK)!
        
        //  Realizando la Operacion
        ConvertYK = nYardasK * valorYK
        
        ValorFY = String(ConvertYK)
        
        lblDetalle.text = lblYK
        lblValor.text = ValorFY
    }
}
