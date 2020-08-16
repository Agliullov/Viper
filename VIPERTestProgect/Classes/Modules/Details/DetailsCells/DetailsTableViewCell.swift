//
//  DetailsTableViewCell.swift
//  VIPERTestProgect
//
//  Created by Раис Аглиуллов on 15.08.2020.
//  Copyright © 2020 Ильдар Аглиуллов. All rights reserved.
//

import UIKit

class DetailsTableViewCell: UITableViewCell {
    
    private let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: 21.0)
        title.numberOfLines = 1
        title.textAlignment = .center
        return title
    }()
    
    private let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let descriptionLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 17.0)
        title.numberOfLines = 1
        title.textAlignment = .center
        return title
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
        contentView.addSubview(descriptionLabel)
        
        let constraints: [NSLayoutConstraint] = [
            titleLabel.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8.0),
            contentView.layoutMarginsGuide.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            
            mainImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0),
            mainImageView.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
            contentView.layoutMarginsGuide.rightAnchor.constraint(equalTo: mainImageView.rightAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 8.0),
            descriptionLabel.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
            contentView.layoutMarginsGuide.rightAnchor.constraint(equalTo: descriptionLabel.rightAnchor),
            contentView.layoutMarginsGuide.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setup(titleText: String, imageName: String, descriptionText: String) {
        titleLabel.text = titleText
        
        if let image = UIImage(named: imageName) {
            mainImageView.image = image
        }
        
        descriptionLabel.text = descriptionText
    }
}
