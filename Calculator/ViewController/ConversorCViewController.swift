//
//  ConversorCViewController.swift
//  Calculator
//
//  Created by MIguel Saravia on 4/23/15.
//  Copyright (c) 2015 MIguel Saravia. All rights reserved.
//

import UIKit

class ConversorCViewController: UIViewController {

    
    @IBOutlet weak var Picker1ViewController: UIPickerView!
    @IBOutlet weak var Picker2ViewController: UIPickerView!
    @IBOutlet weak var txtFieldNumber: UITextField!
    @IBOutlet weak var labelresult: UILabel!
    @IBAction func btnConvertir(sender: AnyObject) {
        var selectedItem = TheItem()
        var txtfield1 = NSString(string: txtFieldNumber.text).doubleValue
        var op1 = self.Picker1ViewController.selectedRowInComponent(0)
        var op2 = self.Picker2ViewController.selectedRowInComponent(0)
        if(selectedItem == "Longitud"){
            switch op1{
            case 0:
                if(op1 == 0 && op2 == 0){
                    self.labelresult.text = "\(txtfield1)" + " millas"
                }else if(op1 == 0 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 1.60934)" + " km"
                }else if(op1 == 0 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 1609.344)" + " mtr"
                }
            case 1:
                if(op1 == 1 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 0.621371)" + " millas"
                }else if(op1 == 1 && op2 == 1){
                    self.labelresult.text = "\(txtfield1)" + " km"
                }else if(op1 == 1 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 1000)" + " mtr"
                }
            case 2:
                if(op1 == 2 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 0.00062137)" + " millas"
                }else if(op1 == 2 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 0.001)" + " km"
                }else if(op1 == 2 && op2 == 2){
                    self.labelresult.text = "\(txtfield1)" + " mtr"
                }
            default:
                break
            }
        }else if(selectedItem == "Volumen"){
            switch op1{
            case 0:
                if(op1 == 0 && op2 == 0){
                    self.labelresult.text = "\(txtfield1)" + " galones"
                }else if(op1 == 0 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 3.785)" + " litros"
                }else if(op1 == 0 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 3785.40)" + " cc"
                }
            case 1:
                if(op1 == 1 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 0.2641720512415584)" + " galones"
                }else if(op1 == 1 && op2 == 1){
                    self.labelresult.text = "\(txtfield1)" + " litros"
                }else if(op1 == 1 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 1000)" + " cc"
                }
            case 2:
                if(op1 == 2 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 0.00021996924829909)" + " galones"
                }else if(op1 == 2 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 0.001)" + " Litros"
                }else if(op1 == 2 && op2 == 2){
                    self.labelresult.text = "\(txtfield1)" + " cc"
                }
            default:
                break
            }
        }else if(selectedItem == "Moneda"){
            switch op1{
            case 0:
                if(op1 == 0 && op2 == 0){
                    self.labelresult.text = "\(txtfield1)" + " pesos"
                }else if(op1 == 0 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 0.32996)" + " reales"
                }else if(op1 == 0 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 0.102348)" + " €"
                }else if(op1 == 0 && op2 == 3){
                    self.labelresult.text = "\(txtfield1 * 0.112286)" + " $"
                }
            case 1:
                if(op1 == 1 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 3.03068)" + " pesos"
                }else if(op1 == 1 && op2 == 1){
                    self.labelresult.text = "\(txtfield1)" + " reales"
                }else if(op1 == 1 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 0.310183)" + " €"
                }else if(op1 == 1 && op2 == 3){
                    self.labelresult.text = "\(txtfield1 * 0.34030)" + " $"
                }
            case 2:
                if(op1 == 2 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 9.7706)" + " pesos"
                }else if(op1 == 2 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 3.2239)" + " reales"
                }else if(op1 == 2 && op2 == 2){
                    self.labelresult.text = "\(txtfield1)" + " €"
                }else if(op1 == 2 && op2 == 3){
                    self.labelresult.text = "\(txtfield1 * 1.10)" + " $"
                }
            case 3:
                if(op1 == 3 && op2 == 0){
                    self.labelresult.text = "\(txtfield1 * 8.9058)" + " pesos"
                }else if(op1 == 3 && op2 == 1){
                    self.labelresult.text = "\(txtfield1 * 2.93857)" + " real"
                }else if(op1 == 3 && op2 == 2){
                    self.labelresult.text = "\(txtfield1 * 0.91149)" + " €"
                }else if(op1 == 3 && op2 == 3){
                    self.labelresult.text = "\(txtfield1)" + " $"
                }
            default:
                break
            }
        }

        
    }
    var calcu : CalculatorC?
    func selectList() -> NSArray
    {
        let list1 = ["Pesos", "Reales", "Euros", "Dolar"]
        let list2 = ["Millas", "Kilometros", "Metros"]
        let list3 = ["Galones", "Litros", "CC"]
        var selectItem = calcu?.item
        var aux = []
        if (selectItem == "Longitud"){
            aux = list2
        }
        else if(selectItem == "Volumen"){
            aux = list3
        }
        else if(selectItem == "Moneda"){
            aux = list1
        }
        return aux
    }
    func TheItem () -> String
    {
        var name = calcu?.item
        var answer1 = "" as String
        if(name == "Longitud"){
            answer1 = name!
        }
        else if(name == "Volumen"){
            answer1 = name!
        }
        else if(name == "Moneda"){
            answer1 = name!
        }
        return answer1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.calcu?.item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension ConversorCViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var PV1 = selectList()
        var PV2 = selectList()
        if pickerView == Picker1ViewController{
            return PV1.count
        }else {
            return PV2.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        var PVC1 = selectList()
        var PVC2 = selectList()
        if pickerView == Picker1ViewController{
            return PVC1[row] as! String
        }else{
            return PVC2[row] as! String
        }
    }
}

