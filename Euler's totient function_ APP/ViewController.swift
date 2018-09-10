//
//  ViewController.swift
//  Euler's totient function_ APP
//
//  Created by Евгений Киримов on 10.09.2018.
//  Copyright © 2018 Evgeny Kirillov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var buttonOutlet: UIButton!
    @IBAction func pressedButton(_ sender: UIButton) {
        if !isEMptyField() {
            let nn = Int(inputField.text!)
            let result = eulersFunction(n:nn!)
            resultLabel.text = String(result)
        }
    }
    
    func isEMptyField()->Bool{
        let count = inputField.text?.count
        if count! > 0{
            return false
        }
        else {
            return true;
        }
    }
    
    func euclidean(a:Int,b:Int)->Int{
        var aa = a
        var bb = b
        while (aa != 0 && bb != 0) {
            if aa>bb {
                aa = aa % bb
            }
            else{
                bb = bb % aa
            }
        }
        return (aa+bb)
    }
    
    func eulersFunction(n:Int)->Int{
        var count = 0
        var i = n
        while i > 0 {
            if euclidean(a:i,b:n) == 1{
                count += 1
                
            }
            i -= 1
        }
        return count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

