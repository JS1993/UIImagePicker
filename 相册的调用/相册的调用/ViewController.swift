//
//  ViewController.swift
//  相册的调用
//
//  Created by  江苏 on 15/11/7.
//  Copyright © 2015年  江苏. All rights reserved.

import UIKit

class ViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //创建UIButton
        let button:UIButton = UIButton()
        //设置frame
        let frame = CGRectMake(100, 60, 100, 60)
        button.frame = frame
        //设置字体颜色
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        //设置字体
        button.setTitle("打开相册", forState: UIControlState.Normal)
        //添加方法
        button.addTarget(self, action: #selector(ViewController.buttonClick), forControlEvents: UIControlEvents.TouchUpInside)
        //添加到父控件
        self.view.addSubview(button)
        
        
    }
    
    /*
     实现button方法
     */
    func buttonClick(){
        
        let pick:UIImagePickerController = UIImagePickerController()
        pick.delegate = self
        self.presentViewController(pick, animated: true, completion: nil)
    }
    
    /*
     实现代理方法 UIImagePickerControllerDelegate,UINavigationControllerDelegate
     
     */
    func imagePickerController(picker: UIImagePickerController,UIImagePickerControllerDelegate info : [NSObject : AnyObject]) {
        
        
        
        let imageview:UIImageView = UIImageView(frame: CGRectMake(0, 100, 320, 300))
        
        let gotImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        imageview.image = gotImage
        self.view.addSubview(imageview)
        print(info);
        
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    
    /**
     实现代理方法 UIImagePickerControllerDelegate,UINavigationControllerDelegate
     
     */
    func imagePickerControllerDidCancel(picker: UIImagePickerController){
        
    }
    
}
