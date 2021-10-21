//
//  FinalViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit

class FinalViewController: BaseViewController {
    
    
   
    @IBOutlet weak var viBorder: UIView!
    
    var withBorder : Bool!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden( true, animated: true)
      
        lbMessage.text = message.text
        lbMessage.backgroundColor = message.backgroundColor
        lbMessage.textColor = message.textColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = withBorder ? .white : .clear
        
       
    }
  
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
