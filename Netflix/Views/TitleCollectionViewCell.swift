//
//  TitleCollectionViewCell.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 09.04.22.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        let view = UIImageView()
        view.clipsToBounds = true
        view.contentMode = .scaleAspectFill
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String?) {
        guard let model = model, let url = URL(string: "https://image.tmdb.org/t/p/w500\(model)") else { return }

        posterImageView.sd_setImage(with: url)
    }
}
