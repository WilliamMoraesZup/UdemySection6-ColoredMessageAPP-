//
//  SlideViewController.swift
//  UdemySection6-ColoredMessageApp
//
//  Created by William Moraes da Silva on 20/10/21.
//

import UIKit


class ColorPickerController: UIViewController {
    
    @IBOutlet weak var uvColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    
    weak var reference : ColorPickerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        uvColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0  )
        
    }
    
    @IBAction func finishColor(_ sender: Any) {
        reference?.applyColor(color: uvColor.backgroundColor!)
        dismiss(animated: true, completion: nil)
        
    }
    
}
protocol ColorPickerDelegate : class {
    func applyColor(color : UIColor)
}
