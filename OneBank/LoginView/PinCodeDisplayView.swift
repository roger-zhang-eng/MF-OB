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
    @IBInspectable var enabled: Bool = false
    weak var pinCodeDelegate: PinCodeDisplayViewDelegate!
    
    private var pinCode:String = ""
    private var wasCompleted: Int = 0
    
    let MaxPincodeLength: CGFloat = 4.0
    
    /*init() {
        //super.init()
    }*/
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        //fatalError("init(coder:) has not been implemented")
        
        print("Here is PinCodeDisplayView!")
        
        
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        pinCodeColor.setFill()
        let boxSize = CGSizeMake(CGRectGetWidth(rect)/MaxPincodeLength, CGRectGetHeight(rect))
        let charSize = CGSizeMake(13, 13)
        let y = rect.origin.y
        let codeLength = pinCode.characters.count as Int
        let completed = max( codeLength, wasCompleted)
        
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
