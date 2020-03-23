#import "Dates.h"

@implementation Dates

- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    NSString *dateString = [NSString stringWithFormat: @"%@ %@ %@ ", day, month, year];
    
    NSDate *dateFromString;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_BY"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setDateFormat:@"d M y"];
    dateFromString = [dateFormatter dateFromString:dateString];

    [dateFormatter setDateFormat:@"d MMMM, EEEE"];
    NSString *myDate = [dateFormatter stringFromDate:dateFromString];
    
    if (myDate == nil) {
        return @"Такого дня не существует";
    }
    return myDate;
}

@end
