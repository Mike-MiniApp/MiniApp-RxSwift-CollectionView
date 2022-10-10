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
        collectionView.delegate = self
        collectionView.layer.cornerRadius = 10
        collectionView.register(UINib(nibName: SampleCollectionViewCell.nibName, bundle: nil), forCellWithReuseIdentifier: SampleCollectionViewCell.identifier)
    }
}

// MARK: UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = collectionView.bounds.width
            let cellWidth = (width - 30) / 3 // compute your cell width
            return CGSize(width: cellWidth, height: cellWidth / 0.6)
    }
}

