//
//  Destination.swift
//  SendData
//
//  Created by ido on 2020/12/16.
//

import UIKit

class Destination: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    var colour: UIColor = .systemBlue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = colour
    }
    
    func updata(color: Int) {
        if color == 1 {
            colour = .red
        }else {
            colour = .black
        }
    }

    
}
