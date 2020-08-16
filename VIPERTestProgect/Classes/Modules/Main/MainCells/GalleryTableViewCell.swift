//
//  GalleryTableViewCell.swift
//  VIPERTestProgect
//
//  Created by Раис Аглиуллов on 15.08.2020.
//  Copyright © 2020 Ильдар Аглиуллов. All rights reserved.
//

import UIKit

class GalleryTableViewCell: UITableViewCell {
    
    private let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 18.0)
        title.numberOfLines = 0
        title.textAlignment = .left
        return title
    }()
    
    private let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(mainImageView)
        
        let constraints: [NSLayoutConstraint] = [
            mainImageView.heightAnchor.constraint(equalToConstant: 65.0),
            mainImageView.widthAnchor.constraint(equalToConstant: 65.0),
            mainImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4.0),
            mainImageView.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
            contentView.bottomAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 4.0),
            
            titleLabel.leftAnchor.constraint(equalTo: mainImageView.rightAnchor, constant: 8.0),
            titleLabel.topAnchor.constraint(equalTo: mainImageView.topAnchor),
            contentView.layoutMarginsGuide.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: mainImageView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setup(cellText: String, imageName: String) {
        titleLabel.text = cellText
        
        if let image = UIImage(named: imageName) {
            mainImageView.image = image
        }
    }
}
