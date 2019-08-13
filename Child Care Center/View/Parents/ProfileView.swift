//
//  ProfileView.swift
//  Child Care Center
//
//  Created by GIS on 8/12/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    var viewStatus: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var viewLine: UIView = {
        let v = UIView()
        v.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return v
    }()
    
    var viewChildren: UIView = {
        let v = UIView()
        v.contentMode = .center
        return v
    }()
    
    var stackChildren: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.alignment = .fill
        sv.distribution = .fillEqually
        return sv
    }()
    
    var imgProfile: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "SampleMomProfile")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 75
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgEditProfile: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "EditWhite")
        imgView.contentMode = ContentMode.scaleToFill
        imgView.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        imgView.layer.cornerRadius = 25
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild1: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child1")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild2: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child2")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var imgChild3: UIImageView = {
        let imgView = UIImageView()
        imgView.image = #imageLiteral(resourceName: "child3")
        imgView.contentMode = ContentMode.scaleAspectFill
        imgView.backgroundColor = .lightGray
        imgView.layer.cornerRadius = 50
        imgView.layer.borderColor = UIColor.gray.cgColor
        imgView.layer.borderWidth = 2
        imgView.clipsToBounds = true
        return imgView
    }()
    
    var lbName: UILabel = {
        let lb = UILabel()
        lb.text = "Myra Parker"
        lb.textAlignment = .center
        lb.textColor = .gray
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        return lb
    }()
    
    var lbCity: UILabel = {
        let lb = UILabel()
        lb.text = "Phnom Penh"
        lb.textAlignment = .center
        lb.textColor = UIColor.lightGray
        return lb
    }()
    
    var lbStatusDot: UILabel = {
        let lb = UILabel()
        lb.text = "●"
        lb.font = UIFont.boldSystemFont(ofSize: 10)
        lb.textAlignment = .center
        lb.textColor = .green
        return lb
    }()
    
    var lbStatusText: UILabel = {
        let lb = UILabel()
        lb.text = "ONLINE"
        lb.text = lb.text?.uppercased()
        lb.font = lb.font.withSize(10)
        lb.textAlignment = .center
        lb.textColor = .gray
        return lb
    }()
    
    var lbChildren: UILabel = {
        let lb = UILabel()
        lb.text = "Children"
        lb.textColor = .gray
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 18)
        return lb
    }()
    
    
    override func layoutSubviews() {
        setUp()
    }
    
    func setUp() {
        backgroundColor = .white
        setUpView()
    }
    
    func setUpView() {
        
        //image profile
        addSubview(imgProfile)
        imgProfile.translatesAutoresizingMaskIntoConstraints = false
        imgProfile.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imgProfile.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imgProfile.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imgProfile.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        
        //image edit
        addSubview(imgEditProfile)
        imgEditProfile.translatesAutoresizingMaskIntoConstraints = false
        imgEditProfile.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imgEditProfile.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imgEditProfile.centerYAnchor.constraint(equalTo: imgProfile.centerYAnchor).isActive = true
        imgEditProfile.centerXAnchor.constraint(equalTo: imgProfile.trailingAnchor).isActive = true
        
        //label name
        addSubview(lbName)
        lbName.translatesAutoresizingMaskIntoConstraints = false
        lbName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbName.topAnchor.constraint(equalTo: imgProfile.bottomAnchor, constant: 16).isActive = true
        
        //label city
        addSubview(lbCity)
        lbCity.translatesAutoresizingMaskIntoConstraints = false
        lbCity.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbCity.topAnchor.constraint(equalTo: lbName.bottomAnchor, constant: 8).isActive = true
        
        //view status
        addSubview(viewStatus)
        viewStatus.translatesAutoresizingMaskIntoConstraints = false
        viewStatus.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewStatus.topAnchor.constraint(equalTo: lbCity.bottomAnchor, constant: 8).isActive = true
        
        //lb status dot
        viewStatus.addSubview(lbStatusDot)
        lbStatusDot.translatesAutoresizingMaskIntoConstraints = false
        lbStatusDot.leadingAnchor.constraint(equalTo: viewStatus.leadingAnchor).isActive = true
        lbStatusDot.topAnchor.constraint(equalTo: viewStatus.topAnchor).isActive = true
        lbStatusDot.bottomAnchor.constraint(equalTo: viewStatus.bottomAnchor).isActive = true
        
        //lb status text
        viewStatus.addSubview(lbStatusText)
        lbStatusText.translatesAutoresizingMaskIntoConstraints = false
        lbStatusText.leadingAnchor.constraint(equalTo: lbStatusDot.trailingAnchor, constant: 8).isActive = true
        lbStatusText.trailingAnchor.constraint(equalTo: viewStatus.trailingAnchor).isActive = true
        lbStatusText.topAnchor.constraint(equalTo: viewStatus.topAnchor).isActive = true
        lbStatusText.bottomAnchor.constraint(equalTo: viewStatus.bottomAnchor).isActive = true
        
        //view line
        addSubview(viewLine)
        viewLine.translatesAutoresizingMaskIntoConstraints = false
        viewLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        viewLine.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        viewLine.widthAnchor.constraint(equalToConstant: frame.width - 50).isActive = true
        viewLine.topAnchor.constraint(equalTo: viewStatus.bottomAnchor, constant: 25).isActive = true
        
        //label children
        addSubview(lbChildren)
        lbChildren.translatesAutoresizingMaskIntoConstraints = false
        lbChildren.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        lbChildren.topAnchor.constraint(equalTo: viewLine.bottomAnchor, constant: 25).isActive = true
        
//        //view children
//        addSubview(viewChildren)
//        viewChildren.translatesAutoresizingMaskIntoConstraints = false
//        viewChildren.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        viewChildren.topAnchor.constraint(equalTo: lbChildren.bottomAnchor, constant: 25).isActive = true
//        viewChildren.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        //stack view children
        addSubview(stackChildren)
        stackChildren.translatesAutoresizingMaskIntoConstraints = false
        stackChildren.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stackChildren.topAnchor.constraint(equalTo: lbChildren.bottomAnchor, constant: 25).isActive = true
        stackChildren.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        //imageview child 1
//        viewChildren.addSubview(imgChild1)
        stackChildren.addArrangedSubview(imgChild1)
        imgChild1.translatesAutoresizingMaskIntoConstraints = false
        imgChild1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild1.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        imgChild1.leadingAnchor.constraint(equalTo: viewChildren.leadingAnchor).isActive = true
//        imgChild1.topAnchor.constraint(equalTo: viewChildren.topAnchor).isActive = true
//        imgChild1.bottomAnchor.constraint(equalTo: viewChildren.bottomAnchor).isActive = true
        
        //imageview child 1
//        viewChildren.addSubview(imgChild2)
        stackChildren.addArrangedSubview(imgChild2)
        imgChild2.translatesAutoresizingMaskIntoConstraints = false
        imgChild2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild2.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        imgChild2.leadingAnchor.constraint(equalTo: imgChild1.trailingAnchor).isActive = true
//        imgChild2.topAnchor.constraint(equalTo: viewChildren.topAnchor).isActive = true
//        imgChild2.bottomAnchor.constraint(equalTo: viewChildren.bottomAnchor).isActive = true
        
        //imageview child 1
//        viewChildren.addSubview(imgChild3)
        stackChildren.addArrangedSubview(imgChild3)
        imgChild3.translatesAutoresizingMaskIntoConstraints = false
        imgChild3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imgChild3.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        imgChild3.leadingAnchor.constraint(equalTo: imgChild2.trailingAnchor).isActive = true
//        imgChild3.topAnchor.constraint(equalTo: viewChildren.topAnchor).isActive = true
//        imgChild3.bottomAnchor.constraint(equalTo: viewChildren.bottomAnchor).isActive = true
//        imgChild3.trailingAnchor.constraint(equalTo: viewChildren.trailingAnchor).isActive = true
        
    }
}
