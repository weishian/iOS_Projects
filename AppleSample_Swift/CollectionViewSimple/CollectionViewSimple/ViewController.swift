//
//  ViewController.swift
//  CollectionViewSimple
//
//  Created by DanielChang on 2016/2/27.
//  Copyright © 2016年 DanielChang. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let kDetailedViewControllerID: String = "DetailView" // view controller storyboard id
    let kCellID: String = "cellID" // UICollectionViewCell storyboard id
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(kCellID, forIndexPath: indexPath) as! Cell
        cell.label.text = "{\(indexPath.row),\(indexPath.section)}"
        cell.image.image = UIImage(named: "\(indexPath.row)")
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/2.0, height: 200.0)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == kDetailedViewControllerID {
                let selectedIndexPath: NSIndexPath = (self.collectionView?.indexPathsForSelectedItems()![0])!
                let imageNameToLoad: String = "\(selectedIndexPath.row)_full"
                let image: UIImage = UIImage(named: imageNameToLoad)!
                let detailViewController: DetailViewController = segue.destinationViewController as! DetailViewController
                detailViewController.image = image;
            }
        }
    }
}

