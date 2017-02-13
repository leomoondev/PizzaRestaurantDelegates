//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {

    Pizza *pizza = [[Pizza alloc] initWithSize:size initWithToppings:toppings];
    NSString *showPizza = [toppings componentsJoinedByString:@","];

    switch(size) {
        case small:
            NSLog(@"This is small pizza with %@\n", showPizza);
            break;
        case medium:
            NSLog(@"This is medium pizza with %@\n", showPizza);
            break;
        case large:
            NSLog(@"This is large pizza with %@\n", showPizza);
            break;
        case extraLarge:
            NSLog(@"This is extra large pizza with %@\n", showPizza);
            break;
        default:
            NSLog(@"You've entered invalid size. Please try again!\n");
    }
    return pizza;
}

@end
