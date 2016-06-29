//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testTextField: UITextField!
    
    
    //最初からあるメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //デリゲート先を自分に設定する
        testTextField.delegate = self
    }

    
    //Returnキー押下時の呼び出しメソッド
    func textFieldShouldReturn(textField:UITextField) -> Bool {

        //キーボードをしまう
        self.view.endEditing(true)
        
        //テキストフィールドの文字列をラベルに設定する。
        testLabel.text = testTextField.text
        
        return false
    }
}

