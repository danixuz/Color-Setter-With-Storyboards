//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Daniel Spalek on 04/08/2022.
//

import UIKit

protocol ColorTransferDelegate{
    func userDidChoose(color: UIColor, withName colorName: String)
}
