//
//  HeroHeaderView.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 02.04.22.
//

import UIKit

class HeroHeaderView: UIView {
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "godfather")
        
        return imageView
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        addSubview(heroImageView)
        addSubview(playButton)
        
        applyConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        heroImageView.frame = bounds
        
        heroImageView.addGradietColor(colorOne: .clear,
                                  colorTwo: .systemBackground)
    }
    
    private func applyConstraints() {
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(playButtonConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
