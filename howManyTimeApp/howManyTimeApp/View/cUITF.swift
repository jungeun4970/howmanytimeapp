//
//  cUITF.swift
//  howManyTimeApp
//
//  Created by Choi Joon on 2021/03/18.
//

import UIKit

class cUITF: UITextField {

    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let wonLbl = UILabel(frame: CGRect(x: frame.size.width-30, y: frame.size.height/2 - size/2, width: size, height: size))
        wonLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
        wonLbl.textAlignment = .center
        wonLbl.textColor = .white
        wonLbl.layer.cornerRadius = 10.0
        wonLbl.text = "원"
        addSubview(wonLbl)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
        layer.cornerRadius = 10.0
        textAlignment = .center
        
        if let hasPH = placeholder{
            let attributes: [NSAttributedString.Key : Any] = [.foregroundColor: UIColor.white]
            let place = NSAttributedString(string: hasPH, attributes: attributes)
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
