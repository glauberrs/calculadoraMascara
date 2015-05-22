//
//  ViewController.m
//  calculadoraMascara
//
//  Created by Aluno on 05/05/15.
//  Copyright (c) 2015 Glauber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _semMascara.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)soma:(id)sender {
    float meuResultado = _valor1.text.floatValue + _valor2.text.floatValue;
    _resultado.text = [NSString stringWithFormat:@"%1.2f",meuResultado];
}

- (IBAction)subtracao:(id)sender {
    float meuResultado = _valor1.text.floatValue - _valor2.text.floatValue;
    _resultado.text = [NSString stringWithFormat:@"%1.2f",meuResultado];
}

- (IBAction)divisao:(id)sender {
    float meuResultado = _valor1.text.floatValue / _valor2.text.floatValue;
    _resultado.text = [NSString stringWithFormat:@"%1.2f",meuResultado];
}

- (IBAction)multiplicacao:(id)sender {
    float meuResultado = _valor1.text.floatValue * _valor2.text.floatValue;
    _resultado.text = [NSString stringWithFormat:@"%1.2f",meuResultado];
}
- (IBAction)criarMascara:(id)sender {
    NSString *source = _semMascara.text;
    NSRange rangeDDD = NSMakeRange(0, 2);
    NSRange rangePrimeiros4 = NSMakeRange(2, 4);
    NSRange rangeUltimos4 = NSMakeRange(6, 4);
    NSString *ddd = [source substringWithRange:rangeDDD];
    NSString *primeiros4 = [source substringWithRange:rangePrimeiros4];
    NSString *ultimos4 = [source substringWithRange:rangeUltimos4];
    NSString *resultadoFinal = [[[
                       [[@"(" stringByAppendingString:ddd] stringByAppendingString: @") " ]
                       stringByAppendingString: primeiros4]
                       stringByAppendingString: @"-"]
                       stringByAppendingString: ultimos4];
    _comMascara.text = resultadoFinal;
    
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField == _semMascara){
        [_semMascara resignFirstResponder];
        [self criarMascara:textField];
        return YES;
    }
    return NO;
}

@end
