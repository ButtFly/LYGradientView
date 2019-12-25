//
//  LYGradientView.swift
//  LYGradientView
//
//  Created by 阿卡丽 on 2019/12/25.
//

import UIKit

/// 渐变的view，方便使用而已
open class LYGradientView: UIView {
    
    
    open var colors: [UIColor]? {
        get {
            guard let cgColors = gLayer.colors as? [CGColor] else {
                return nil
            }
            return cgColors.map { (cgColor) -> UIColor in
                return UIColor.init(cgColor: cgColor)
            }
        }
        set {
            guard let colors = newValue else {
                gLayer.colors = nil
                return
            }
            gLayer.colors = colors.map({ (color) -> CGColor in
                return color.cgColor
            })
        }
    }
    
    /// [0,1]
    open var locations: [Double]? {
        get {
            guard let gLocations = gLayer.locations else {
                return nil
            }
            return gLocations.map { (number) -> Double in
                return number.doubleValue
            }
        }
        set {
            guard let locations = newValue else {
                gLayer.locations = nil
                return
            }
            gLayer.locations = locations.map({ (doubleValue) -> NSNumber in
                return NSNumber(value: doubleValue)
            })
        }
    }
    
    open var startPoint: CGPoint {
        get {
            return gLayer.startPoint
        }
        set {
            gLayer.startPoint = newValue
        }
    }

    open var endPoint: CGPoint {
        get {
            return gLayer.endPoint
        }
        set {
            gLayer.endPoint = newValue
        }
    }

    open var type: CAGradientLayerType {
        get {
            return gLayer.type as CAGradientLayerType
        }
        set {
            gLayer.type = newValue as String
        }
    }

    private let gLayer = CAGradientLayer()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layer.addSublayer(gLayer)
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        gLayer.frame = layer.bounds
    }
    
}
