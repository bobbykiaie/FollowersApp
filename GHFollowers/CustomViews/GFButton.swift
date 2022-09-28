//
//  GFButton.swift
//  GHFollowers
//
//  Created by Babak Kiaie on 3/30/22.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    //This is showing that storyboard is not being used
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)  //This allows for the dynamic font size front the system
        translatesAutoresizingMaskIntoConstraints = false  //Doing this because we're doing UI programmatically
    }
}
