//
//  ConverterViewController.swift
//  CalculatorUI
//
//  Created by Wills Van Doorn on 5/5/18.
//  Copyright © 2018 Wills Van Doorn. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var topLabel: UITextField!
    @IBOutlet weak var bottomLabel: UITextField!
    @IBOutlet weak var topDegLabel: UILabel!
    @IBOutlet weak var botDegLabel: UILabel!
    
    var conversion = "ctof"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.isUserInteractionEnabled = false
        bottomLabel.isUserInteractionEnabled = false
        
        topDegLabel.text = "°C"
        botDegLabel.text = "°F"
        
        
    }

   
    @IBAction func sevenTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "7"
        convert(conversion: conversion)
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "8"
        convert(conversion: conversion)
    }

    @IBAction func nineTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "9"
        convert(conversion: conversion)
    }
   
    @IBAction func fourTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "4"
        convert(conversion: conversion)
    }
    
    @IBAction func fiveTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "5"
        convert(conversion: conversion)
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "6"
        convert(conversion: conversion)
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "1"
        convert(conversion: conversion)
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "2"
        convert(conversion: conversion)
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "3"
        convert(conversion: conversion)
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "0"
        convert(conversion: conversion)
    }
    
    @IBAction func decimalTapped(_ sender: Any) {
        bottomLabel.text = bottomLabel.text! + "."
        convert(conversion: conversion)
    }
    
    @IBAction func clearTapped(_ sender: Any) {
        
        topDegLabel.text = " °F"
        botDegLabel.text = " °C"
        topLabel.text = ""
        bottomLabel.text = ""
    }
    
    
    @IBAction func conTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Choose Converter", message: "Choose Converter", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "fahrenheit to celcius", style: .default, handler: self.ftocHandler))
        alertController.addAction(UIAlertAction(title: "celcius to fahrenheit", style: .default, handler: self.ctofHandler))
        alertController.addAction(UIAlertAction(title: "miles to kilometers", style: .default, handler: self.mtokHandler))
        alertController.addAction(UIAlertAction(title: "kilometers to miles", style: .default, handler: self.ktomHandler))
        alertController.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)

    
    }
    
    func ftocHandler(alert: UIAlertAction!) {
        topDegLabel.text = " °F"
        botDegLabel.text = " °C"
        conversion = "ftoc"
    }
    
    func ctofHandler(alert: UIAlertAction!) {
        topDegLabel.text = " °C"
        botDegLabel.text = " °F"
        conversion = "ctof"
    }
    
    func mtokHandler(alert: UIAlertAction!) {
        topDegLabel.text = " mi"
        botDegLabel.text = " km"
        conversion = "mtok"
    }
    
    func ktomHandler(alert: UIAlertAction!) {
        topDegLabel.text = " km"
        botDegLabel.text = " mi"
        conversion = "ktom"
    }
    
    func convert(conversion: String){
        var result: String
        
        switch conversion {
        case "ctof":
            let a:Double? = Double(bottomLabel.text!)
            result = String(a! * 9/5 + 32)
            topLabel.text = result
        case "ftoc":
            let a:Double? = Double(bottomLabel.text!)
            result = String(a! * 9/5 - 32)
            topLabel.text = result
        case "mtok":
            let a:Double? = Double(bottomLabel.text!)
            result = String(a! * 1.609344)
            topLabel.text = result
        case "ktom":
            let a:Double? = Double(bottomLabel.text!)
            result = String(a! / 1.609344)
            topLabel.text = result
        default:
            let a:Double? = Double(bottomLabel.text!)
            result = String(a! * 9/5 + 32)
            topLabel.text = result
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
