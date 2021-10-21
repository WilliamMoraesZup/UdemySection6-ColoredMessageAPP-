//
//  BackgroundViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit

class BackgroundViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
    
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message
    
    }
}


extension BackgroundViewController : ColorPickerDelegate {
      func applyColor(color: UIColor) {
        lbMessage.backgroundColor = color
        message.backgroundColor = color
    }
}
