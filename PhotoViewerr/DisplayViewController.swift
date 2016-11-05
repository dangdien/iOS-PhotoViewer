//
//  DisplayViewController.swift
//  PhotoViewerr
//
//  Created by Dien Dang on 7/14/16.
//  Copyright © 2016 Dien Dang. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    var currentPhoto : Photo?
    var testtt: String?
    @IBOutlet weak var currentImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        // Do any additional setup after loading the view.
        self.title=currentPhoto!.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var thirdScene = segue.destinationViewController as! InfoViewController
        thirdScene.currentPhoto = currentPhoto
        
        // Pass the selected object to the new view controller.
    }
    

}
