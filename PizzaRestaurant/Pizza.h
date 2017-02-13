//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject


typedef NS_ENUM(NSInteger, PizzaSize){
    small,
    medium,
    large,
    extraLarge
};

@property NSArray *pizzaToppings;
@property PizzaSize sizeOfPizza;

- (instancetype)initWithSize:(PizzaSize)sizeOfPizza initWithToppings:(NSArray *)pizzaToppings;
+ (PizzaSize)convertSizeToString:(NSString *)sizeString;

@end
