//
//  Sample.swift
//  MiniApp-RxSwift-CollectionView
//
//  Created by 近藤米功 on 2022/10/08.
//

import Foundation

struct Sample{
    var name: String?

    static func createModel() -> [Sample]{
       return [
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample"),
        Sample(name: "sample")
       ]
    }
}
