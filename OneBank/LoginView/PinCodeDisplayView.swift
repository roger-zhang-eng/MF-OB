//
//  PinCodeDisplayView.swift
//  OneBank
//
//  Created by RogerZ on 2/08/2016.
//  Copyright © 2016 MaxwellForest. All rights reserved.
//

import UIKit

public protocol PinCodeDisplayViewDelegate: class {
    func lockPinCodeCheck(pincode:String)
}

@IBDesignable class PinCodeDisplayView: UIView {

    @IBInspectable var pinCodeColor: UIColor = UIColor.blackColor()
    @IBInspectable var enabled: Bool = true
    weak var pinCodeDelegate: PinCodeDisplayViewDelegate!
    
    private var pinCode:String = ""
    private var wasCompleted: Int = 0
    
    let MaxPincodeLength: Int = 4
    
    /*init() {
        //super.init()
    }*/
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
        
        print("Here is PinCodeDisplayView!")
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        pinCodeColor.setFill()
        
        // 1 character box size
        let boxSize = CGSizeMake(CGRectGetWidth(rect)/CGFloat(MaxPincodeLength), CGRectGetHeight(rect))
        let charSize = CGSizeMake(13, 13)
        let y = rect.origin.y
        let codeLength = pinCode.characters.count as Int
        let completed = max( codeLength, wasCompleted)
        
        // draw a circle : '.'
        let str = min(completed, MaxPincodeLength)
        for idx in 0..<str {
            let x = boxSize.width * CGFloat(idx)
            let rounded = CGRectMake(x + CGFloat(floorf((Float(boxSize.width) - Float(charSize.width))/2)), y + CGFloat(floorf((Float(boxSize.height) - Float(charSize.width))/2)), charSize.width, charSize.height)
            let context = UIGraphicsGetCurrentContext()
            CGContextSetFillColorWithColor(context, pinCodeColor.CGColor)
            CGContextSetLineWidth(context, 1.0)
            CGContextFillEllipseInRect(context, rounded)
            CGContextFillPath(context)
        }
        
        // draw a dash : '-'
        for idx in 0..<MaxPincodeLength {
            let x = boxSize.width * CGFloat(idx)
            let rounded = CGRectMake(x + CGFloat(floorf((Float(boxSize.width) - Float(charSize.width))/2)), y + CGFloat(floorf((Float(boxSize.height) - Float(charSize.width))/2)), charSize.width, charSize.height)
            let context = UIGraphicsGetCurrentContext()
            CGContextSetStrokeColorWithColor(context, pinCodeColor.CGColor)
            CGContextSetLineWidth(context, 1.0)
            CGContextAddEllipseInRect(context, rounded)
            CGContextStrokePath(context)
        }
        
        
        /*
 [_pincodeColor setFill];
 
 // 1 character box size
 CGSize boxSize  = CGSizeMake(CGRectGetWidth(rect) / LSPMaxPincodeLength, CGRectGetHeight(rect));
 CGSize charSize = CGSizeMake(13, 13);
 
 CGFloat y = rect.origin.y;
 
 NSUInteger completed = MAX([_pincode length], _wasCompleted);
 
 // draw a circle : '.'
 NSInteger str = MIN(completed, LSPMaxPincodeLength);
 for (NSUInteger idx = 0; idx < str; idx++) {
 CGFloat x = boxSize.width * idx;
 CGRect rounded = CGRectMake(x + floorf((boxSize.width  - charSize.width) / 2),
 y + floorf((boxSize.height - charSize.width) / 2),
 charSize.width,
 charSize.height);
 
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGContextSetFillColorWithColor(context, _pincodeColor.CGColor);
 CGContextSetLineWidth(context, 1.0);
 CGContextFillEllipseInRect(context, rounded);
 CGContextFillPath(context);
 }
 
 // draw a dash : '-'
 for (NSUInteger idx = str; idx < LSPMaxPincodeLength; idx++) {
 CGFloat x = boxSize.width * idx;
 CGRect rounded = CGRectMake(x + floorf((boxSize.width  - charSize.width)  / 2),
 y + floorf((boxSize.height - charSize.height) / 2),
 charSize.width,
 charSize.height);
 
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGContextSetStrokeColorWithColor(context, _pincodeColor.CGColor);
 CGContextSetLineWidth(context, 1.0);
 CGContextAddEllipseInRect(context, rounded);
 CGContextStrokePath(context);
 }
*/
 
    }
 

}
