//
//  MillasVC.swift
//  Examen2
//
//  Created by Jeferson Bujaico on 5/7/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class MillasVC: UIViewController {

    //  MARK: - Valores de Vista
    @IBOutlet weak var txtYardasM: UITextField!
    @IBOutlet weak var txtKilometrosM: UITextField!
    @IBOutlet weak var lbldetalle: UILabel!
    @IBOutlet weak var lblvalor: UILabel!
    
    //  MARK: - Variables Constante Declaradas
    let valorYM:Double = 0.000568182
    let valorKM:Double = 0.621371
    let lblYM:String = "Convertido de Yarda a Millas:"
    let lblKM:String = "Convertido de Kilometros a Millas:"
    
    //  MARK: - Variables declaradas
    var YardasY:String = ""
    var KilometrosK:String = ""
    var nYardasY:Double = 0.0
    var nKilometrosK:Double = 0.0
    
    var ValorFY:String = ""
    var ConvertYM:Double = 0.0
    var ConvertKM:Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //  MARK: - Convertir de Yardas a Millas
    @IBAction func btnYardasM(_ sender: Any) {
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//        let conv = ConMYK(context: context)
        
        //Convertir el texto en double
        YardasY = txtYardasM.text!
        nYardasY = Double(YardasY)!
        
        //  Realizando la Operacion
        ConvertYM = nYardasY * valorYM
        
        //  Convirtiendo a String el VAlor Final
        ValorFY = String(ConvertYM)
        
        //  Le decimos que lo almacene en este valor
        lbldetalle.text = lblYM
        lblvalor.text = ValorFY
        
        
//        (UIApplication.shared.delegate as! AppDelegate).saveContext()
//        navigationController!.popViewController(animated: true)
    }
    
    //  MARK: - Convertir de Kilometros a Millas
    @IBAction func btnKilometrosM(_ sender: Any) {
//        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//        let conv = ConMYK(context: context)
        
        //Convertir el texto en double
        KilometrosK = txtKilometrosM.text!
        nKilometrosK = Double(KilometrosK)!
        
        //  Realizando la Operacion
        ConvertKM = nKilometrosK * valorKM
        
        //  Convertimos el valor final a string
        ValorFY = String(ConvertKM)
        
        //  Le decimos que lo almacene en este label
        lbldetalle.text = lblKM
        lblvalor.text = ValorFY
        
        //  Agregando Valores al CoreData
//        conv.tipo = lblKM
//        conv.valorKM = ConvertKM
//
//
//        (UIApplication.shared.delegate as! AppDelegate).saveContext()
//
//
//        navigationController!.popViewController(animated: true)
    }
    
}
