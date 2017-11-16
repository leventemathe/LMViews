//
//  LMView.swift
//  LMViews
//
//  Created by Máthé Levente on 2017. 09. 12..
//  Copyright © 2017. Máthé Levente. All rights reserved.
//

import UIKit

@IBDesignable
open class LMView: UIView {
    
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
    
    
    
    @IBInspectable
    open var roundedCorners: Bool = false {
        didSet {
            if roundedCorners {
                setRoundedCorners()
            } else {
                removeRoundedCorners()
            }
        }
    }
    
    @IBInspectable open var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    private func setRoundedCorners() {
        layer.cornerRadius = cornerRadius
    }
    
    private func removeRoundedCorners() {
        layer.cornerRadius = 0.0
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
    open var gradient: Bool = false {
        didSet {
            if gradient {
                setGradient()
            } else {
                removeGradient()
            }
        }
    }
    
    private var gradientLayer: CAGradientLayer?
    
    @IBInspectable var gradientColorA: UIColor = UIColor.black {
        didSet {
            setGradientColors()
        }
    }
    
    @IBInspectable var gradientColorB: UIColor = UIColor.white {
        didSet {
            setGradientColors()
        }
    }
    
    private func setGradient() {
        gradientLayer = CAGradientLayer()
        gradientLayer?.frame = self.bounds
        gradientLayer?.colors = [gradientColorA.cgColor, gradientColorB.cgColor]
        layer.addSublayer(gradientLayer!)
    }
    
    private func setGradientColors() {
        if let gradient = gradientLayer {
            gradient.colors = [gradientColorA.cgColor, gradientColorB.cgColor]
        } else {
            setGradient()
        }
    }
    
    private func removeGradient() {
        gradientLayer?.removeFromSuperlayer()
        gradientLayer = nil
    }
    
    private func adjustGradientSize() {
        gradientLayer?.frame = self.bounds
    }
    
    
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        adjustGradientSize()
    }
}
