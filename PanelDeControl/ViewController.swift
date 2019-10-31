//
//  ViewController.swift
//  PanelDeControl
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listaAcciones: UITextView!
    @IBOutlet weak var numeroHV: UILabel!
    @IBOutlet weak var sliderHV: UISlider!
    @IBOutlet weak var switchEmergencia: UISwitch!
    @IBOutlet weak var textoControlEmergencia: UILabel!
    @IBOutlet weak var btnEmergencia: UIButton!
    @IBOutlet weak var pickerViaje: UIPickerView!
    
    let pickerDelegate = PickerDelegate()
    let pickerDataSource = PickerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderHV.minimumValue = 0
        sliderHV.maximumValue = 100
        switchEmergencia.isOn = true
        textoControlEmergencia.text = "Control de emergencia activado"
        btnEmergencia.isEnabled = true
        
        pickerViaje.delegate = pickerDelegate
        pickerViaje.dataSource = pickerDataSource
        
        // Do any additional setup after loading the view.
    }

    @IBAction func cambiaHipervelocidad(_ sender: UISlider) {
        print(sender.value)
        numeroHV.text = String(Int(sender.value))
    }
    @IBAction func controlarEmergencia(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "¡Emergencia!",
                                            message: "¿Que quieres hacer?",
                                            preferredStyle: .actionSheet)
        let salvavidas = UIAlertAction(title: "Nave salvavidas", style: .default){
            action in
            print("Lanzando nave salvavidas")
        }
        let hiperespacio = UIAlertAction(title: "Saltar al Hiperespacio", style: .default){
            action in
            print("Saltando al hiperespacio")
        }
        let autodestrucción = UIAlertAction(title: "Autodestrucción", style: .destructive){
            action in
            print("Iniciado protocolo de autodestruccion")
        }
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel)
        actionSheet.addAction(salvavidas)
        actionSheet.addAction(hiperespacio)
        actionSheet.addAction(autodestrucción)
        actionSheet.addAction(cancelar)
        self.present(actionSheet, animated: true)
    }
    
    @IBAction func controlEmergencia(_ sender: UISwitch) {
        if sender.isOn {
            textoControlEmergencia.text = "Control de emergencia activado"
            btnEmergencia.isEnabled = true
        }else {
            textoControlEmergencia.text = "Control de emergencia desactivado"
            btnEmergencia.isEnabled = false
        }
    }
    @IBAction func controlTeclado(_ sender: UITextField) {
        
        if sender.text! != "" {
            listaAcciones.text.append(sender.text!+"\n")
        }
        sender.resignFirstResponder()
    }
}

