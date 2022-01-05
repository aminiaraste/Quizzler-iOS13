//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Hadis amini on 8/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let txt :String
    let answer :String
    init(q :String , a : String) {
        txt = q
        answer = a
    }
}
