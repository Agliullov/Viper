//
//  TitleTableViewCell.swift
//  VIPERTestProgect
//
//  Created by Раис Аглиуллов on 15.08.2020.
//  Copyright © 2020 Ильдар Аглиуллов. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    private let titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 18.0)
        title.numberOfLines = 1
        title.textAlignment = .left
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
        
        let constraints: [NSLayoutConstraint] = [
            titleLabel.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8.0),
            contentView.layoutMarginsGuide.rightAnchor.constraint(equalTo: titleLabel.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setup(titleText: String) {
        titleLabel.text = titleText
    }
}
