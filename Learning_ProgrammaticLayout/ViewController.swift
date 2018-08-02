//
//  ViewController.swift
//  Learning_ProgrammaticLayout
//
//  Created by Grace on 02/08/2018.
//  Copyright © 2018 Grace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojiImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "Smiley - Grin"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptonTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Join us today in our fun and games"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let infoTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Are you ready for loads and loads of fun? Don't wait any longer! We hope to see you in our stores soon."
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(emojiImageView)
        view.addSubview(descriptonTextView)
        view.addSubview(infoTextView)
        setupLayout()

    }
    
    private func setupLayout() {
        emojiImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        emojiImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        emojiImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        emojiImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
        descriptonTextView.topAnchor.constraint(equalTo: emojiImageView.bottomAnchor, constant: 80).isActive = true
        descriptonTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptonTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //descriptonTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        infoTextView.topAnchor.constraint(equalTo: descriptonTextView.bottomAnchor, constant: 80).isActive = true
        infoTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        //infoTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }

}

