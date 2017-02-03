//
//  customCell.swift
//  TableWithCollectionView
//
//  Created by kalpesh jethva on 03/02/17.
//  Copyright © 2017 kalpesh jethva. All rights reserved.
//

import UIKit

class customCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    //@IBOutlet weak
    var clsView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        
        //clsView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        
        clsView = UICollectionView(frame: CGRectMake(0, 200, UIScreen.mainScreen().bounds.width, 90), collectionViewLayout: layout)
        clsView.tag = self.tag
        clsView.delegate = self
        clsView.dataSource = self
        clsView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell2")
        clsView.backgroundColor = UIColor.clearColor()
        self.addSubview(clsView)
        // Initialization code
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(100, 90)
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        //let cell: imgCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath) as! imgCell
        
        let cell: UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell2", forIndexPath: indexPath)
        
        if indexPath.row < 15
        {
            let imagview = UIImageView(image: UIImage(named: "k\(indexPath.row + 1)"))
            imagview.frame = CGRectMake(0, 0, 100, 100)
            cell.addSubview(imagview)
        }
        if indexPath.row % 2 == 0
        {
            cell.backgroundColor = UIColor.redColor()
        }
        else
        {
            cell.backgroundColor = UIColor.yellowColor()
        }
 
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        print(indexPath.row)
        self.lblName.text = "kalpesh\(indexPath.row)"
        self.imgView.image = UIImage(named: "k\(indexPath.row + 1)")
        
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

