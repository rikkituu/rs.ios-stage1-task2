#import "NSString+Transform.h"

@implementation NSString (Transform)

-(NSString*)transform {
    NSMutableString *finalString = [[NSMutableString alloc] init];// строка(слово)
    NSSet *alphabet = [NSSet setWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z", nil];
    NSSet *vowels = [NSSet setWithObjects:@"a", @"e", @"i", @"o", @"u", @"y", @"A", @"E", @"I", @"O", @"U", @"Y", nil];//глассные
    NSSet *consonants = [NSSet setWithObjects: @"b", @"c", @"d", @"f", @"g", @"h", @"j", @"k", @"l", @"m", @"n", @"p", @"q", @"r", @"s", @"t", @"v", @"w", @"x", @"z", @"B", @"C", @"D", @"F", @"G", @"H", @"J", @"K", @"L", @"M", @"N", @"P", @"Q", @"R", @"S", @"T", @"V", @"W", @"X", @"Z", nil];//согласные
    
    NSMutableSet *myStringSetOfCharacters = [[NSMutableSet alloc] init];
    NSString *myCapitalizedString = [self uppercaseString];
    for (int j = 0; j < myCapitalizedString.length; j++) {
        NSString *currentSubstring = [myCapitalizedString substringWithRange:NSMakeRange(j, 1)];
        [myStringSetOfCharacters addObject:currentSubstring];
    }
    
    NSSet *currentCharactersSet;
    
    if ([alphabet isSubsetOfSet:myStringSetOfCharacters]) {
        currentCharactersSet = vowels;
    } else {
        currentCharactersSet = consonants;
    }
    
    NSMutableString *myString = [[NSMutableString alloc] initWithString:self]; //исходная строка
    [myString insertString: @" " atIndex: myString.length];
    NSMutableArray *wordArray = [[NSMutableArray alloc] init]; //массив строк(слов)
    NSMutableString *currentWord = [[NSMutableString alloc] init];// строка(слово)
    NSString *separator = @" ";
    int vowelsCounter = 0;
    for (int i = 0; i < myString.length; i++) {
        NSMutableString *processingChar = [NSMutableString stringWithFormat:@"%C",[myString characterAtIndex:i]];
        if ([currentCharactersSet containsObject:processingChar]) {
            [currentWord appendString:processingChar.capitalizedString];
            vowelsCounter++;
        } else {
            if ([processingChar isEqual:separator]) {
                if (currentWord.length == 0) {
                    continue;
                }
                [currentWord insertString:[NSString stringWithFormat:@"%i", vowelsCounter] atIndex:0];
                [wordArray addObject:currentWord];
                currentWord = [[NSMutableString alloc] init];
                vowelsCounter = 0;
            } else {
                [currentWord appendString:processingChar];
            }
        }
    }
    
    //        NSLog(@"%@", wordArray);
    NSArray *sorted = [wordArray sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        unichar c1 = [(NSString*)obj1 characterAtIndex:0];
        unichar c2 = [(NSString*)obj2 characterAtIndex:0];
        if (c1 > c2) {
            return NSOrderedDescending;
        } else {
            if (c1 == c2) {
                return NSOrderedSame;
            } else {
                return NSOrderedAscending;
            }
        }
    }];
    
    //        NSLog(@"%@", sorted);
    for (int i = 0; i < sorted.count; i++) {
        [finalString appendString:sorted[i]];
        if (i < (sorted.count - 1)) {
            [finalString appendString:@" "];
        }
    }
    
    //        NSLog(@"%@", finalString);
    return finalString;
    //    }
    
    return finalString;
}


@end
