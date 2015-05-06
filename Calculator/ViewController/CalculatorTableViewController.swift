//
//  CalculatorTableViewController.swift
//  Calculator
//
//  Created by MIguel Saravia on 4/23/15.
//  Copyright (c) 2015 MIguel Saravia. All rights reserved.
//

import UIKit

class CalculatorTableViewController: UITableViewController {
    
    var calculadora = [CalculatorC]()
    var Auxcalcu : CalculatorC!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let longitud = CalculatorC(name: "Longitud")
        let volumen = CalculatorC(name: "Volumen")
        let moneda = CalculatorC(name: "Moneda")
        self.calculadora.append(longitud)
        self.calculadora.append(volumen)
        self.calculadora.append(moneda)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "CalculatorSegue"{
        let calculatorVC = segue.destinationViewController as! ConversorCViewController
        calculatorVC.calcu = self.Auxcalcu
        }
    }
    
}
extension CalculatorTableViewController: UITableViewDataSource{
    
   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.calculadora.count
    }
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath) as! ConversorCalcuTableViewCell
        let calcu = self.calculadora[indexPath.row]
        cell.NameLabelTableCell.text = calcu.item        
        return cell
    }
    
}
extension CalculatorTableViewController: UITableViewDelegate{
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.Auxcalcu = calculadora[indexPath.row]
        self.performSegueWithIdentifier("CalculatorSegue", sender: self)
        
    }
    
}