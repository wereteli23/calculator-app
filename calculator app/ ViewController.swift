//
//  ViewController.swift
//  calculator app
//
//  Created by lukga dekanadze on 04.05.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outletLabebl: UILabel!
    var numbers: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func clearAllNumber() {
        numbers = ""
        outletLabebl.text = ""
    }
    func addNumbersInTheLabel(value: String){
        numbers = numbers + value
        outletLabebl.text = numbers
    }
    
    @IBAction func clearButton(_ sender: Any) {
        clearAllNumber()
    }
    
    
    
    
    @IBAction func negativeButton(_ sender: Any) {
        addNumbersInTheLabel(value: "-")

        
    }
    
    @IBAction func percentButton(_ sender: Any) {
        addNumbersInTheLabel(value: "%")

        
    }
    
    @IBAction func divisionButton(_ sender: Any) {
        addNumbersInTheLabel(value: "/")

    }
    
    @IBAction func multiplicationButton(_ sender: Any) {
        addNumbersInTheLabel(value: "*")

    }
    
    @IBAction func plusButton(_ sender: Any) {
        addNumbersInTheLabel(value: "+")

    }
    
    @IBAction func deductionButton(_ sender: Any) {
        addNumbersInTheLabel(value: "-")

    }
    
    @IBAction func equalsButton(_ sender: Any) {
        let exprestion = NSExpression(format: numbers)
        guard let result = exprestion.expressionValue(with: nil, context: nil ) as? Double else { return  }
        let resultString = formatResult(result: result)
        outletLabebl.text = resultString
    }
 
    func formatResult(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.10f", result)

        }
        
    }
    
    @IBAction func oneButton(_ sender: Any) {
        addNumbersInTheLabel(value: "1")

    }
    
    @IBAction func twoButton(_ sender: Any) {
        addNumbersInTheLabel(value: "2")

    }
    
    @IBAction func threeButton(_ sender: Any) {
        addNumbersInTheLabel(value: "3")

    }
    
    @IBAction func fourButton(_ sender: Any) {
        addNumbersInTheLabel(value: "4")

    }
    
    @IBAction func fiveButton(_ sender: Any) {
        addNumbersInTheLabel(value: "5")

    }
    
    @IBAction func sixButton(_ sender: Any) {
        addNumbersInTheLabel(value: "6")

    }
    
    @IBAction func sevenButton(_ sender: Any) {
        addNumbersInTheLabel(value: "7")

    }
    
    @IBAction func eightButton(_ sender: Any) {
        addNumbersInTheLabel(value: "8")

    }
    
    @IBAction func nineButton(_ sender: Any) {
        addNumbersInTheLabel(value: "9")

    }
    
    @IBAction func zeroButton(_ sender: Any) {
        addNumbersInTheLabel(value: "0")

    }
    
    @IBAction func artitmButton(_ sender: Any) {
        
    }
    
    @IBAction func oneStepDeleit(_ sender: Any) {
    }
}

