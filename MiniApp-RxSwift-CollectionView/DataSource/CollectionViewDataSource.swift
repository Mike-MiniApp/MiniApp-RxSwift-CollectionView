//
//  CollectionViewDataSource.swift
//  MiniApp-RxSwift-CollectionView
//
//  Created by 近藤米功 on 2022/10/08.
//

import RxSwift
import RxCocoa
import UIKit

final class CollectionViewDataSource: NSObject, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout, RxCollectionViewDataSourceType {

    typealias Element = [Sample]
    var itemArray: [Sample] = []

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: SampleCollectionViewCell.identifier, for: indexPath) as! SampleCollectionViewCell
        let element = itemArray[indexPath.row]
        cell.nameLabel.text = element.name
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, observedEvent: RxSwift.Event<[Sample]>) {
        Binder(self) { datasource, element in
            datasource.itemArray = element
            collectionView.reloadData()
        }
        .on(observedEvent)
    }
}
