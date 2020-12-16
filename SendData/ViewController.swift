//
//  ViewController.swift
//  SendData
//
//  Created by ido on 2020/12/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.setTitle("색선택", for: .normal)
       
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue", let vc = segue.destination as? Destination{
            let data = textField.text?.count
            if data == 1 {
                vc.updata(color: 1)
            } else {
                vc.updata(color: 2)
            }
        }
    }
    
    @IBAction func sendData(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}

