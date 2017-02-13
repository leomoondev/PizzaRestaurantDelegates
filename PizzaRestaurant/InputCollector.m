//
//  InputCollector.m
//  PizzaRestaurant
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return inputString;
    
}

@end
