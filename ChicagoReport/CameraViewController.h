//
//  CameraViewController.h
//  ChicagoReport
//
//  Created by Donncha Carroll on 5/11/13.
//  Copyright (c) 2013 Donncha Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface CameraViewController : UIViewController <UINavigationControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextView *descriptionField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIPickerView *categoryPicker;

@property BOOL newMedia;
@property NSMutableArray *dataArray;

@end
