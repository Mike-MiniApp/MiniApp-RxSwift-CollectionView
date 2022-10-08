//
//  ViewController.swift
//  MiniApp-RxSwift-CollectionView
//
//  Created by 近藤米功 on 2022/10/08.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    private var sampleViewModel = SampleViewModel()
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupBindings()
        setupCollectionView()
    }

    private func setupBindings() {
        let dataSource = CollectionViewDataSource()
        sampleViewModel.rxModel.bind(to: collectionView.rx.items(dataSource: dataSource)).disposed(by: disposeBag)
    }

    private func setupCollectionView() {
        collectionView.register(UINib(nibName: SampleCollectionViewCell.nibName, bundle: nil), forCellWithReuseIdentifier: SampleCollectionViewCell.identifier)
    }


}

