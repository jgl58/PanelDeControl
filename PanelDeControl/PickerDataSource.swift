//
//  PickerDataSource.swift
//  PanelDeControl
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation
import UIKit

class PickerDataSource : NSObject, UIPickerViewDataSource {
    
    var lista = ["Endor","Hoth","Tatooine","Primera Estrella de la muerte","Segunda Estrella de la muerte","Restos de Alderaan"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return lista.count
    }

}
