//
//  ScreenViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit

class ScreenColorViewController: BaseViewController {

    @IBOutlet weak var swBorder: UISwitch!
    @IBOutlet weak var viBorder: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FinalViewController
        
        vc.withBorder = swBorder.isOn
    
        vc.message = message
         
        
    }
    
    @IBAction func includeBorder(_ sender: UISwitch) {
        viBorder.backgroundColor = swBorder.isOn ? .white : .clear
          
    }
    
}

extension ScreenColorViewController : ColorPickerDelegate{
    func applyColor(color: UIColor) {
        view.backgroundColor = color
        message.screenColor = color
    }
}
