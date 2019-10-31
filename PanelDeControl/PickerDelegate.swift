//
//  PickerDelegate.swift
//  PanelDeControl
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import Foundation
import UIKit

class PickerDelegate : NSObject, UIPickerViewDelegate {
    
    var dataSourceDelegate : PickerDataSource
    
    override init() {
        dataSourceDelegate = PickerDataSource()
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSourceDelegate.lista[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(dataSourceDelegate.lista[row])
    }
    
}
