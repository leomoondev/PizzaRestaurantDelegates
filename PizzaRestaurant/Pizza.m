//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
-(instancetype)initWithSize:(PizzaSize)sizeOfPizza initWithToppings:(NSArray *)pizzaToppings {
    if (self = [super init]) {
        _sizeOfPizza = sizeOfPizza;
        pizzaToppings = pizzaToppings;
    }
    return self;
}

+(PizzaSize)convertSizeToString:(NSString *)size {
    
    if ([size isEqualToString:@"small"]) {
        return small;
        
    }
    else if ([size isEqualToString:@"medium"]) {
        return medium;
        
    }
    else if ([size isEqualToString:@"large"]) {
        return large;
        
    }
    else if ([size isEqualToString:@"extraLarge"]) {
        return extraLarge;
        
    }
    else {
        NSLog(@"You've entered invalid size. Please try again!");
        return 1;
    }
}

@end
