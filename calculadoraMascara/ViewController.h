//
//  ViewController.h
//  calculadoraMascara
//
//  Created by Aluno on 05/05/15.
//  Copyright (c) 2015 Glauber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *valor1;
@property (weak, nonatomic) IBOutlet UITextField *valor2;
@property (weak, nonatomic) IBOutlet UILabel *resultado;
- (IBAction)soma:(id)sender;
- (IBAction)subtracao:(id)sender;
- (IBAction)divisao:(id)sender;
- (IBAction)multiplicacao:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *semMascara;
@property (weak, nonatomic) IBOutlet UILabel *comMascara;
- (IBAction)criarMascara:(id)sender;

@end

