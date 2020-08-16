//
//  Options.swift
//  VIPERTestProgect
//
//  Created by Раис Аглиуллов on 15.08.2020.
//  Copyright © 2020 Ильдар Аглиуллов. All rights reserved.
//

import Foundation

struct Options: Codable {
    let title: String
    let description: String
    let imageName: String
    let header: String?
    let footer: String?
}
