//
//  HomeViewController.swift
//  flix
//
//  Created by Stephanie Angulo on 6/17/16.
//  Copyright © 2016 Stephanie Angulo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var homeView: UIImageView!
    var movies: [NSDictionary]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let movie = movies![indexPath]
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        
        //if let posterPath = movie["poster_path"] as? String {
           // let imageUrl = NSURL(string: baseUrl + posterPath)
            //self.homeView.setImageWithURL(imageUrl!)
        //}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
