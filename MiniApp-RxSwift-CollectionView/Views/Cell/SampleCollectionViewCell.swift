//
//  SampleCollectionViewCell.swift
//  MiniApp-RxSwift-CollectionView
//
//  Created by 近藤米功 on 2022/10/08.
//

import UIKit

class SampleCollectionViewCell: UICollectionViewCell {

    static let identifier = "SampleCollectionViewCell"
    static let nibName = "SampleCollectionViewCell"
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
