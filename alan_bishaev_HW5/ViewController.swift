//
//  ViewController.swift
//  alan_bishaev_HW5
//
//  Created by Georg on 19.11.2021.
//

import UIKit

class ViewController: UIViewController {

    lazy var button1: UIButton = {
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.setTitle("logger 1", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(log1), for: .touchUpInside)
        return button
    }()
    lazy var button2: UIButton = {
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.setTitle("logger 2", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(log2), for: .touchUpInside)
        return button
    }()
    lazy var button3: UIButton = {
        let button=UIButton()
        button.translatesAutoresizingMaskIntoConstraints=false
        button.setTitle("logger 3", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(log3), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    func setup() {
        self.view.addSubview(button1)
        
        NSLayoutConstraint.activate([
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button1.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
        self.view.addSubview(button2)
        
        NSLayoutConstraint.activate([
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 24)])
        
        self.view.addSubview(button3)
        
        NSLayoutConstraint.activate([
        button3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        button3.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 48)])
    }
    @objc
    func log1() {
        print("log1")
    }
    @objc
    func log2() {
        print("log2")
    }
    @objc
    func log3() {
        print("log3")
    }
}

