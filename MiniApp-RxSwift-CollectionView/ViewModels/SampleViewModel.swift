//
//  ViewModel.swift
//  MiniApp-RxSwift-CollectionView
//
//  Created by 近藤米功 on 2022/10/08.
//

import Foundation
import RxSwift
import RxRelay

final class SampleViewModel{
    private var sampleModel = Sample.createModel()

    var rxModel = BehaviorRelay<[Sample]>(value: [])

    init(){
        rxModel.accept(sampleModel)
    }
}
