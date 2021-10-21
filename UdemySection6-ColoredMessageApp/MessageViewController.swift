//
//  ViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit

class MessageViewController: BaseViewController {
 
  
    @IBOutlet weak var tfMessage: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tfMessage.delegate = self
        message = Message()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! BackgroundViewController
        vc.message = message
        
    }
}


extension MessageViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lbMessage.text = tfMessage.text
        message.text = lbMessage.text
        message.textColor = lbMessage.textColor
        textField.resignFirstResponder()
        return true
    }}

extension MessageViewController : ColorPickerDelegate {
        func applyColor(color : UIColor){
          lbMessage.textColor = color
          message.textColor = color
      } 
    
}
