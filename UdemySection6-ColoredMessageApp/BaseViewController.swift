//
//  BaseViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit

class BaseViewController: UIViewController {
     
 
    @IBOutlet weak var lbMessage: UILabel!
    
    var message : Message!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FinalViewController
        vc.message = message
        
    }
    
    @IBAction func changeColor(_ sender : UIButton){
        
        if let reference = self as? ColorPickerDelegate {
    let colorPicker = storyboard?.instantiateViewController(identifier: "SlideViewController") as! ColorPickerController
    
    colorPicker.modalPresentationStyle = .overCurrentContext
        
     colorPicker.reference = reference
    present(colorPicker, animated: true, completion: nil)
     
    }
    }
     
}
