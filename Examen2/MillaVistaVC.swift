//
//  MillaVistaVC.swift
//  Examen2
//
//  Created by Jeferson Bujaico on 5/7/19.
//  Copyright © 2019 JeffRay. All rights reserved.
//

import UIKit

class MillaVistaVC: UIViewController
, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var lblvistavalor: UILabel!
    @IBOutlet weak var MillaVistaTV: UITableView!
    
    var antVC = MillasVC()
    var conv:ConMYK? = nil
    var conver:[ConMYK] = []
    
    var valor:Double = 0.0
    var valorin:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        MillaVistaTV.dataSource = self
        MillaVistaTV.delegate = self
        
//        valor = ((conv?.valorYM)!)
        
        
        
//        lblvistavalor.text = String(valor)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conver.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let cMYK = conver[indexPath.row]
//        let st = String(cMYK.valorYM)
        cell.textLabel?.text = String(cMYK.valorYM)
        return cell
    }

}
