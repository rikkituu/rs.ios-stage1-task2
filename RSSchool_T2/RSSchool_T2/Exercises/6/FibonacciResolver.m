#import "FibonacciResolver.h"

@implementation FibonacciResolver
- (NSArray*)productFibonacciSequenceFor:(NSNumber*)number {
    
    NSMutableArray *fibonacci = [NSMutableArray arrayWithArray:@[@0, @1]];
    NSArray *result = [[NSArray alloc] init];
    int i = 1;
    int current = 1;
    
    while (current <= number.intValue) {
        current = ((NSNumber*)fibonacci[i]).intValue + ((NSNumber*)fibonacci[i-1]).intValue;
        i++;
        [fibonacci addObject: [NSNumber numberWithInt:current]];
    }
    
    while ((((NSNumber*)fibonacci[i]).intValue * ((NSNumber*)fibonacci[i-1]).intValue) > number.intValue) {
        i--;
    }
    if ((((NSNumber*)fibonacci[i]).intValue * ((NSNumber*)fibonacci[i-1]).intValue) == number.intValue) {
        result = @[fibonacci[i-1], fibonacci[i], @1];
    } else {
        result = @[fibonacci[i], fibonacci[i+1], @0];
    }
    return result;
}
@end
