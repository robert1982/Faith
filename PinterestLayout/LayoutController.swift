//
//  LayoutController.swift
//  PinterestLayout
//
//  Created by Shrikar Archak on 12/21/14.
//  Copyright (c) 2014 Shrikar Archak. All rights reserved.
//

import UIKit

let reuseIdentifier = "collCell"

class LayoutController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    var index_row = 0;
    let titles = [ //0
        "Company History",//1
        "Your Agent",//2
        "What Is My Home Worth?",//3
        "Net Sheet",//4
        "Inspection Costs",//5
        "Home Improvements",//6
        "Staging",//7
        "Marketing",//9
        "Negotiation",//10
        "Buyers Inspections",//11
        "Final Walk Through",//12
        "Sellers Checklist",//14
        "Close of Escrow",//15
        "Where Am I Moving?",//16
        "Your Authorization Of Agreement",//17
        "Silver Package",//18
        "Gold Package",//19
        "Platinum Package",//20
        "Marketing to Qualified Buyers",//21
        "Sence23",//22
        "Sence24",//23
        "Sence25",//24
        "Marketing your Home",//25
        "Sence25",//26
        "Sence25",//27
        "Sence25",//28
        "Sence25",//29
        "Sence25",//30
        "Sence25",//31
        "Sence25",//32
        "Sence25",//33
        "Sence25",//34
        "Sence25",//35
        "NEGOTIATION",//36 , with Qualified Buyers
        "Sence25",//37
        "Sence25",//38
        "STAGING YOUR HOME",//39
        "LANDSCAPING",//40
        "Sence25",//41
        "Sence25",//42
        "Sence25",//43
        "Sence25",//44
        "Sence25",//45
        "Sence25",//46
        "Sence25",//47
        "Sence25",//48
        "Sence25",//49
        "Sence25",//50
        "Final Walk Through"//51
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 18
    }


    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
//        cell.title.text = self.titles[indexPath.row % 5]
        let curr = indexPath.row + 1;
        let imgName = "slide\(curr).jpg"
        cell.pinImage.image = UIImage(named: imgName)
        cell.title.text = titles[indexPath.row];// "Sence\(curr)"

        return cell
    }
    

    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        index_row = indexPath.row;
        if indexPath.row == 3{
            self.performSegueWithIdentifier("gotoNetSheet", sender: self)
        }
        else if indexPath.row == 0 {
            self.performSegueWithIdentifier("company", sender: self)
        }
        else if indexPath.row == 1 {
            self.performSegueWithIdentifier("ana_real", sender: self)
        }
        else if indexPath.row == 2 {
            self.performSegueWithIdentifier("whatis", sender: self)
        }
        else if indexPath.row == 5 {
            self.performSegueWithIdentifier("home", sender: self)
        }
        else if indexPath.row == 11 {
            self.performSegueWithIdentifier("todo", sender: self)
        }
        else if indexPath.row == 6 {
            self.performSegueWithIdentifier("staging", sender: self)
        }
        else if indexPath.row == 7 {
            self.performSegueWithIdentifier("market", sender: self)
        }
        else if indexPath.row == 8 {
            self.performSegueWithIdentifier("negotiting", sender: self)
        }
        else if indexPath.row == 12 {
            self.performSegueWithIdentifier("escrow", sender: self)
        }
        else if indexPath.row == 4 {
            self.performSegueWithIdentifier("inspection", sender: self)
        }
        else if indexPath.row == 10 {
            self.performSegueWithIdentifier("walk", sender: self)
        }
        else {
            self.performSegueWithIdentifier("detail", sender: self)
        }
    }

   
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            return CGSize(width: 172, height: 204)
    }
    


    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println(segue.identifier)
        println(sender)
        if(segue.identifier == "detail"){
            let vc = segue.destinationViewController as! DetailViewController

            let curr = index_row + 1;
            let imgName = "slide\(curr).jpg"
            
            println(vc)
            vc.currImage = UIImage(named: imgName)
//            vc.textHeading = self.titles[indexPath!.row % 5]
            vc.textHeading = titles[index_row];
//            vc.page = curr;
//
//            vc.heading.text = self.titles[0]
//            vc.imageView.image = UIImage(named: imgName)
        }
        else if (segue.identifier == "ana_real") {
            let vc = segue.destinationViewController as! AnaViewController
        }
        else if (segue.identifier == "company") {
            let vc = segue.destinationViewController as! CompanyViewController
        }
        else if (segue.identifier == "whatis") {
            let vc = segue.destinationViewController as! WhatISViewController
        }
        else if (segue.identifier == "todo") {
            let vc = segue.destinationViewController as! ToDoViewController
        }
        else if (segue.identifier == "staging") {
            let vc = segue.destinationViewController as! StagingViewController
        }
        else if (segue.identifier == "land") {
            let vc = segue.destinationViewController as! LandViewController
        }
        else if (segue.identifier == "negotiting") {
            let vc = segue.destinationViewController as! NegotitingViewController
        }
        else if (segue.identifier == "escrow") {
            let vc = segue.destinationViewController as! EscrowViewController
        }
        else if (segue.identifier == "market") {
            let vc = segue.destinationViewController as! MarketViewController
        }
        else if (segue.identifier == "home") {
            let vc = segue.destinationViewController as! HomeViewController
        }
        else if (segue.identifier == "inspection") {
            let vc = segue.destinationViewController as! InspectionViewController
        }
        else if (segue.identifier == "walk") {
            let vc = segue.destinationViewController as! FinalWalkViewController
        }
        else {
            let vc = segue.destinationViewController as! NetSheetViewController
            println(vc)

        }
    }

    

}
