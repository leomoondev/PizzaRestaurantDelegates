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
#import "ManagerOne.h"
#import "ManagerTwo.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//      NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        ManagerOne *managerOne = [[ManagerOne alloc] init];
        ManagerTwo *managerTwo = [[ManagerTwo alloc] init];
        
        while (TRUE) {
            // Loop forever
            
//            NSLog(@"> ");
//            char str[100];
//            fgets (str, 100, stdin);
            
//            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
//            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSString *managerInputString = [inputCollector inputForPrompt:@"Please choose one of the manager (Type 'one' for Manger 1 or Type 'two' for Manager 2: "];
            
            if ([managerInputString isEqualToString:@"one"]) {
                restaurantKitchen.delegate = managerOne;
            }
            else if ([managerInputString isEqualToString:@"two"]) {
                restaurantKitchen.delegate = managerTwo;
            }
            else {
                NSLog(@"You've entered invalid entry. Please try it again later!");
                break;
            }
            
            NSString *inputString = [inputCollector inputForPrompt:@"Please type a size and toppings for your pizza: "];
            
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString* sizeOfPizza = [commandWords objectAtIndex:0];
            
            
            NSMutableArray *storeToppings = [NSMutableArray arrayWithArray:commandWords];

            [storeToppings removeObjectAtIndex:0];
            // And then send some message to the kitchen...
            if ([sizeOfPizza isEqualToString:@"small"]) {
                Pizza *smallPizza = [restaurantKitchen makePizzaWithSize:small toppings:storeToppings];
                NSString *showPizza = [storeToppings componentsJoinedByString:@","];
                if(smallPizza != 0) {
                    NSLog(@"This is your small %@ pizza.", showPizza);

                }
                else {
                    NSLog(@"No Pizza can be given at this time.");
                }
            }
            else if ([sizeOfPizza isEqualToString:@"medium"]) {
                Pizza *mediumPizza = [restaurantKitchen makePizzaWithSize:medium toppings:storeToppings];
                NSString *showPizza = [storeToppings componentsJoinedByString:@","];
                if(mediumPizza != 0) {
                    NSLog(@"This is your medium %@ pizza.", showPizza);
                    
                }
                else {
                    NSLog(@"No Pizza can be given at this time.");
                }
            }
            else if ([sizeOfPizza isEqualToString:@"large"]) {
                Pizza *largePizza = [restaurantKitchen makePizzaWithSize:large toppings:storeToppings];
                NSString *showPizza = [storeToppings componentsJoinedByString:@","];
                if(largePizza != 0) {
                    NSLog(@"This is your large %@ pizza.", showPizza);
                    
                }
                else {
                    NSLog(@"No Pizza can be given at this time.");
                }
            }
            else if ([sizeOfPizza isEqualToString:@"extraLarge"]) {
                Pizza *extraLargePizza = [restaurantKitchen makePizzaWithSize:extraLarge toppings:storeToppings];
                NSString *showPizza = [storeToppings componentsJoinedByString:@","];
                if(extraLargePizza != 0) {
                    NSLog(@"This is your extra large %@ pizza.", showPizza);
                    
                }
                else {
                    NSLog(@"No Pizza can be given at this time.");
                }
            }
            else {
                NSLog(@"please enter small, medium, or large");
            }
            
        }

    }
    return 0;
}

