//
//  DetailViewController.swift
//  Project1
//
//  Created by Tevfik Aktay on 30.03.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    var selectedImage : String?
    var totalPictures = 0
    var selectedPictureNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = " \(selectedImage ?? "any") is \(selectedPictureNumber+1) of \(totalPictures)"
        navigationItem.largeTitleDisplayMode = .never

        // sends images comes from viewcontroller'dan to the uiimage
        if let imageToLoad = selectedImage {
            ImageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
