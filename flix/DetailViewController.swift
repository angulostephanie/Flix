//
//  DetailViewController.swift
//  flix
//
//  Created by Stephanie Angulo on 6/16/16.
//  Copyright © 2016 Stephanie Angulo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!

    @IBOutlet weak var infoView: UIView!
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + (infoView.frame.size.height)*2.5)
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"] 
        overviewLabel.text = overview as? String
        overviewLabel.sizeToFit()
        
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        
        if let posterPath = movie["poster_path"] as? String {
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWithURL(imageUrl!)
        }
        print(movie)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
