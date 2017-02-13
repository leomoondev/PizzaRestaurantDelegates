//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "InputCollector.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//      NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while (TRUE) {
            // Loop forever
            
//            NSLog(@"> ");
//            char str[100];
//            fgets (str, 100, stdin);
            
//            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
//            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *inputString = [inputCollector inputForPrompt:@"Please type a size and toppings for your pizza: "];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString* sizeOfPizza = [commandWords objectAtIndex:0];
            
            
            NSMutableArray *storeToppings = [NSMutableArray arrayWithArray:commandWords];

            [storeToppings removeObjectAtIndex:0];
            // And then send some message to the kitchen...
            
            if ([sizeOfPizza isEqualToString:@"small"]) {
                [restaurantKitchen makePizzaWithSize:small toppings:storeToppings];
            }
            else if ([sizeOfPizza isEqualToString:@"medium"]) {
                [restaurantKitchen makePizzaWithSize:medium toppings:storeToppings];
            }
            else if ([sizeOfPizza isEqualToString:@"large"]) {
                [restaurantKitchen makePizzaWithSize:large toppings:storeToppings];
            }
            else if ([sizeOfPizza isEqualToString:@"extraLarge"]) {
                [restaurantKitchen makePizzaWithSize:extraLarge toppings:storeToppings];
            }
            else {
                NSLog(@"please enter small, medium, or large");
            }
        }

    }
    return 0;
}

