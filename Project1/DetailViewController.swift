//
//  DetailViewController.swift
//  Project1
//
//  Created by Ali Syed on 2024-08-07.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImageAndRowNumber: (selectedImage: String?, rowNumber: Int?)?
    var totalImages: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let rowNumber = selectedImageAndRowNumber?.rowNumber, let totalImages = totalImages {
            title = "Picture \(rowNumber + 1) of \(totalImages)"
        }
        navigationItem.largeTitleDisplayMode = .never

        let selectedImage: String? = selectedImageAndRowNumber?.selectedImage
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
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
