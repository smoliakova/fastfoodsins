//
//  ViewController.swift
//  fastfoodsins
//
//  Created by Катя Смолякова on 4/26/18.
//  Copyright © 2018 Катя Смолякова. All rights reserved.
//

import UIKit

struct scrollViewDataStruct {
    let title: String?
    let image: UIImage? }

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var scrollViewData = [scrollViewDataStruct]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollViewData = [scrollViewDataStruct.init(title: "ice-cream", image: #imageLiteral(resourceName: "ice-cream") ),
                          scrollViewDataStruct.init(title: "coca-cola", image: #imageLiteral(resourceName: "cola")),
                         scrollViewDataStruct.init(title: "french-fries", image: #imageLiteral(resourceName: "ff"))]
        
        
        scrollView.contentSize.width = self.scrollView.frame.width * CGFloat(scrollViewData.count)
        var i = 0
        for data in scrollViewData {
            let view = CustomView(frame: CGRect(x: 10 + (self.scrollView.frame.width * CGFloat(i)), y: 80, width: self.scrollView.frame.width - 20, height: self.scrollView.frame.height - 90))
            view.imageView.image = data.image
    
            self.scrollView.addSubview(view)
            let label = UILabel(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 20), size: CGSize.init(width: 0, height: 40)))
            label.text = data.title
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.textColor = UIColor.white
            label.sizeToFit()
            if i == 0 {
                label.center.x = view.center.x
            } else {
                label.center.x = view.center.x - self.scrollView.frame.width / 2
            }
            self.scrollView.addSubview(label)
            i += 1
        
        }
    }
 func scrollViewDidScroll(_ scrollView: UIScrollView) {
            if scrollView == scrollView {
                for _ in 0..<scrollViewData.count {
                let scrollContentOffset = scrollView.contentOffset.x + self.scrollView.frame.width
                    _ = (view.center.x - scrollView.bounds.width / 4) - scrollContentOffset
            }
        }
    }
    
    

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
class CustomView: UIView {
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.gray
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        }
    }
}


