//
//  DetailViewController.swift
//  PinterestLayout
//
//  Created by Shrikar Archak on 1/13/15.
//  Copyright (c) 2015 Shrikar Archak. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController, UPCardsCarouselDataSource, UPCardsCarouselDelegate {
    
    @IBOutlet weak var myImageView: UIImageView!
    var currImage: UIImage?
    var textHeading: String?
    var page: NSInteger?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        println("Detail view controller")
        self.title = textHeading//"Sence\(page)";
        myImageView.image = currImage
        
//        var carousel = UPCardsCarousel(frame: CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20))
////        carousel.frame = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-20)
//        carousel.autoresizingMask=UIViewAutoresizing.FlexibleHeight | UIViewAutoresizing.FlexibleWidth
//        carousel.labelBanner.backgroundColor = UIColor(red: 112/255, green: 47/255, blue: 168/255, alpha: 1)
//        carousel.delegate = self
//        carousel.dataSource = self
//        self.view.addSubview(carousel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfCardsInCarousel(carousel: UPCardsCarousel!) -> UInt {
        return 20;
    }
    

    func carousel(carousel: UPCardsCarousel!, viewForCardAtIndex index: UInt) -> UIView! {
        var label = String(index + 1)
        label = "img"+label+".jpg"
        
        var cardView:UIView = UIView(frame: CGRectMake(0, 0, 500, 500))
//        cardView.frame = CGRectMake(0, 0, 500, 500);
        cardView.backgroundColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1)
        cardView.layer.shadowColor = UIColor.blackColor().CGColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = CGSizeMake(0, 0)
        cardView.layer.borderColor = UIColor.whiteColor().CGColor
        cardView.layer.borderWidth = 10
        cardView.layer.cornerRadius = 4
        
        var imageView:UIImageView = UIImageView.alloc()
        imageView.frame = CGRectInset(cardView.frame, 20, 20);
        imageView.center = CGPointMake(cardView.frame.size.width/2, cardView.frame.size.height/2)
        imageView.image = UIImage(named: label)
        cardView.addSubview(imageView)
        
        return cardView
    }
    
    func carousel(carousel: UPCardsCarousel!, labelForCardAtIndex index: UInt) -> String! {
        return String(index + 1)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
