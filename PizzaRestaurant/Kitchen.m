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
    
    if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        if([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = large;
        }

        return pizza;
    }
    return 0;
}

@end
