//
//  LMButton.swift
//  LMViews
//
//  Created by Máthé Levente on 2017. 11. 16..
//  Copyright © 2017. Máthé Levente. All rights reserved.
//

import Foundation

@IBDesignable
open class LMButton: UIButton {
    
    @IBInspectable open  var shadow: Bool = false {
        didSet {
            if shadow {
                setShadow()
            } else {
                removeShadow()
            }
        }
    }
    
    @IBInspectable open var shadowColor: UIColor = UIColor.black {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable open var shadowOpacity: Float = 1.0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable open var shadowOffset: CGSize = CGSize.zero {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    @IBInspectable open var shadowRadius: CGFloat = 1.0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    private func setShadow() {
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
    }
    
    private func removeShadow() {
        layer.shadowColor = nil
        layer.shadowOpacity = 0.0
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 0.0
    }
}
