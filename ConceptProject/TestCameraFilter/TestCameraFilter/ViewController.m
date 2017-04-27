//
//  ViewController.m
//  TestCameraFilter
//
//  Created by 조백진 on 2017. 4. 26..
//  Copyright © 2017년 jcy. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface ViewController ()
{
    UIImage   *uIImage ;
    CIImage   *cIImage;
    CIContext *context;
    CIFilter  *filter;
    CIImage   *outputImage;
    CGImageRef cgimg;
    
//    UIImage   *effectPhoto;
}

@property (weak, nonatomic) IBOutlet UIImageView *cameraFilterTestImageView;
@property (weak, nonatomic) IBOutlet UIView      *ContentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    context = [CIContext contextWithOptions:nil];
    
    // add effects
    uIImage = [UIImage imageNamed:@"ChoBaekJin.jpeg"];
    
    self.cameraFilterTestImageView.image              = uIImage;
    self.cameraFilterTestImageView.layer.cornerRadius = 10.0f;
    self.cameraFilterTestImageView.clipsToBounds      = YES;
    
    //ContentView 투명 만들어주기!
    self.ContentView.opaque          = NO;
    self.ContentView.backgroundColor = [UIColor colorWithWhite:1.0f alpha:0.0f];
    
    
}

//가로 & 세로 고정하기 위한 Method
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//버튼 클릭했을 때, Method
- (IBAction)clickEffect:(id)sender {
    
    cIImage = [[CIImage alloc]initWithImage:uIImage];
    
    switch ([sender tag])
    {
        case 0:
            
            filter = [CIFilter filterWithName:@"CIExposureAdjust"];
            [filter setValue:cIImage forKey:kCIInputImageKey];
            [filter setValue:[NSNumber numberWithFloat: 2.0f] forKey:@"inputEV"];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image =[UIImage imageWithCGImage:cgimg];
            break;
            
        case 1:
            filter = [CIFilter filterWithName:@"CISepiaTone" keysAndValues: kCIInputImageKey,cIImage,@"inputIntensity", [NSNumber numberWithFloat:0.8], nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // CGImageRelease(cgimg);
            
            break;
            
        case 2:
            filter = [CIFilter filterWithName:@"CIPhotoEffectNoir" keysAndValues: kCIInputImageKey,cIImage, nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // CGImageRelease(cgimg);
            break;
            
        case 3:
            filter = [CIFilter filterWithName:@"CIColorMonochrome" keysAndValues: kCIInputImageKey,cIImage,@"inputColor",[CIColor colorWithRed:0.5 green:0.5 blue:1.0],@"inputIntensity", [NSNumber numberWithFloat:0.8], nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // CGImageRelease(cgimg);
            break;
            
        case 4:
            filter = [CIFilter filterWithName:@"CIColorInvert" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
            
        case 5:
            filter = [CIFilter filterWithName:@"CIVignetteEffect" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
            
        case 6:
            filter = [CIFilter filterWithName:@"CIPhotoEffectTonal" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
            
        case 7:
            filter = [CIFilter filterWithName:@"CIPhotoEffectProcess" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
            
        case 8:
            filter = [CIFilter filterWithName:@"CIColorPosterize" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
            
        case 9:
            filter = [CIFilter filterWithName:@"CIFalseColor" keysAndValues: kCIInputImageKey,cIImage,nil];
            outputImage = [filter outputImage];
            cgimg = [context createCGImage:outputImage fromRect:[outputImage extent]];
            self.cameraFilterTestImageView.image = [UIImage imageWithCGImage:cgimg];
            // to add effects with frame
            // CGImageRelease(cgimg);
            break;
        default:
            break;
    }
    
    
}


@end
