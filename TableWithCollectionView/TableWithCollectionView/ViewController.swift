//
//  ViewController.swift
//  TableWithCollectionView
//
//  Created by Kalpesh jethva on 03/02/17.
//  Copyright © 2017 kalpesh jethva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblNewsFeed: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblNewsFeed.rowHeight = UITableViewAutomaticDimension
        tblNewsFeed.estimatedRowHeight = 350
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! customCell
        cell.lblName.text = "index path row is== \(indexPath.row)"
        cell.tag = indexPath.row
        cell.imgView.image = nil
        
       // cell.clsView.tag = indexPath.row
        //cell.clsView.reloadData()
        return cell
    }
    func tableView(tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 300
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 300
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

