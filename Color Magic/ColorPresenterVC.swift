//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Daniel Spalek on 04/08/2022.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
    
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        //conforming to the ColorTransferDelegate protocol
        // this function is going to be called from ColorPickerVC
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // preparing for a segue (in our case) means when I press the + button, I need to tell it what it should do in order to present the next view controller. a segue is the "link" between views in the main.storyboard
        if segue.identifier == "presentColorPickerVC"{
            // create the delegate
            guard let colorPickerVC = segue.destination as? ColorPickerVC else{
                return
            }
            // guard let is basically a safe way to create a constant that is not an optional and if it is we are going to return so we don't crash.
            colorPickerVC.delegate = self // SOMETHING
            // we need to pin the delegate to a certain view controller
        }
    }


}

