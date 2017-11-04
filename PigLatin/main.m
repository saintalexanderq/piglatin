//
//  main.m
//  PigLatin
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *hello = @"Extravagant";
        NSString *second = @"noodles";
        
        NSLog(@"%@", [hello stringByPigLatinization]);
        NSLog(@"%@", [second stringByPigLatinization]);
    }
    return 0;
}
