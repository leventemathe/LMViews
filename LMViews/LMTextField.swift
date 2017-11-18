//
//  LMTextField.swift
//  LMViews
//
//  Created by Máthé Levente on 2017. 11. 18..
//  Copyright © 2017. Máthé Levente. All rights reserved.
//

import UIKit

open class LMTextField: UITextField {
    
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
    
    
    
    @IBInspectable open var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    
    @IBInspectable
    open var border: Bool = false {
        didSet {
            if border {
                setBorder()
            } else {
                removeBorder()
            }
        }
    }
    
    @IBInspectable open var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable open var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    private func setBorder() {
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
    
    private func removeBorder() {
        layer.borderWidth = 0.0
        layer.borderColor = nil
    }
    
    @IBInspectable
    open var textPaddingLeft: CGFloat = 0.0{
        didSet {
            textPadding.left = textPaddingLeft
        }
    }
    
    @IBInspectable
    open var textPaddingRight: CGFloat = 0.0{
        didSet {
            textPadding.right = textPaddingRight
        }
    }
    
    @IBInspectable
    open var textPaddingTop: CGFloat = 0.0{
        didSet {
            textPadding.top = textPaddingTop
        }
    }
    
    @IBInspectable
    open var textPaddingBottom: CGFloat = 0.0{
        didSet {
            textPadding.bottom = textPaddingBottom
        }
    }
    
    private var textPadding: UIEdgeInsets = UIEdgeInsets.zero
    
    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, textPadding)
    }
    
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, textPadding)
    }
}
