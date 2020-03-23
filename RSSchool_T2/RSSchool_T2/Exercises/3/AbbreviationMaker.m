#import "AbbreviationMaker.h"

@implementation AbbreviationMaker
// Complete the abbreviation function below.
- (NSString *) abbreviationFromA:(NSString *)a toB:(NSString *)b {
    NSMutableString *processingFromA = [[NSMutableString alloc] init];
    int currentBIndex = 0;
    
    for (int i = 0; i < a.length; i++) {
        if (currentBIndex < b.length) {
            NSMutableString *currentA = [NSMutableString stringWithFormat:@"%C",[a characterAtIndex:i]];
            NSMutableString *currentB = [NSMutableString stringWithFormat:@"%C",[b characterAtIndex:currentBIndex]];
            
            
            if ([currentA isEqual:currentB] || [currentA.capitalizedString isEqual:currentB]) {
                [processingFromA appendString:currentA.capitalizedString];
                currentBIndex++;
            }
            else {
                NSMutableString *capitalizedCurrentA = [NSMutableString stringWithString:(currentA.capitalizedString)];
                if ([currentA isEqual:capitalizedCurrentA]) {
                    return @"NO";
                }
            }
        }
    }

    if ([processingFromA isEqual:b]) {
        
        return @"YES";
    } else {
        return @"NO";
    }
    
}
@end
