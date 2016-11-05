//
//  PhotosTableViewController.swift
//  PhotoViewerr
//
//  Created by Dien Dang on 7/14/16.
//  Copyright © 2016 Dien Dang. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    var  photos = [Photo]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        var  newPhoto = Photo(name: "Emaral Bay", filename: "emeraldbay", notes: "Emaral Bay, one of the lake of Tahoe")
        photos.append(newPhoto)

        newPhoto = Photo(name: "A Josua Tree", filename: "joshuatree", notes: "A Josua Tree in...")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Sunset in Vertural", filename: "sunset", notes: "Romantic sunset")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Snowman At Lake Tahue", filename: "snowman", notes: "Lake Tahue gets 400 inch")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Red Rock", filename: "redrock", notes: "Spectacular formation")
        photos.append(newPhoto)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath)

        // Configure the cell...
        
        var currentPhoto = photos[indexPath.row]
        cell.textLabel?.text=currentPhoto.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var secondScene = segue.destinationViewController as! DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto=selectedPhoto
           
            
        }
        // Pass the selected object to the new view controller.
    }
   

}
