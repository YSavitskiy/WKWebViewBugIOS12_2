//
//  Helper.swift
//  WKWebViewBug
//
//  Created by Yuriy Savitskiy on 17/06/2019.
//  Copyright © 2019 Yuriy Savitskiy. All rights reserved.
//

import UIKit


extension UIView {
    func fillWith(view: UIView, insets: UIEdgeInsets = UIEdgeInsets.zero) {
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(view)
        
        let pinTop = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal,
                                        toItem: self, attribute: .top, multiplier: 1.0, constant: insets.top)
        
        let pinBottom = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal,
                                           toItem: self, attribute: .bottom, multiplier: 1.0, constant: insets.bottom)
        
        let pinLeading = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal,
                                            toItem: self, attribute: .leading, multiplier: 1.0, constant: insets.left)
        
        let pinTrailing = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal,
                                             toItem: self, attribute: .trailing, multiplier: 1.0, constant: insets.right)
        
        self.addConstraints([pinTop, pinBottom, pinLeading, pinTrailing])
    }
}
