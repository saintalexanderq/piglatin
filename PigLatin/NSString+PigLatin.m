//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Alex Quigley on 2017-11-03.
//  Copyright © 2017 Alex Quigley. All rights reserved.
//

#import "NSString+PigLatin.h"

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    NSMutableArray *letters = [[NSMutableArray alloc] initWithCapacity:[self length]];
    for (int i=0; i < [self length]; i++) {
        NSString *chars  = [NSString stringWithFormat:@"%c", [self characterAtIndex:i]];
        [letters addObject:chars];
    }
    NSLog(@"letters: %@", [letters componentsJoinedByString:@""]);
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUYaeiouy"];
    
    NSMutableArray *consonantChunks = [[self componentsSeparatedByCharactersInSet:vowels] mutableCopy];
    NSString *firstChunk = [consonantChunks objectAtIndex:0];
    NSLog(@"firstChunk: %@", firstChunk);
    
    
    NSMutableArray *chunkRange = [[NSMutableArray alloc] initWithCapacity:[firstChunk length]];
    for (int i=0; i < [firstChunk length]; i++) {
        NSString *chars2  = [NSString stringWithFormat:@"%c", [firstChunk characterAtIndex:i]];
        [chunkRange addObject:chars2];
    }
    NSLog(@"chunkRange: %@", [chunkRange componentsJoinedByString:@""]);
    
    
    NSRange range = NSMakeRange(0, [firstChunk length]);
    
    [letters removeObjectsInRange:range];
    
    [letters addObject:firstChunk];
    [letters addObject:@"ay"];
    
    NSString *finalWord =  [letters componentsJoinedByString:@""];
    
    return finalWord;
}

@end
