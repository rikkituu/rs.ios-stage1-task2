#import "TimeConverter.h"

@implementation TimeConverter
// Complete the following function
- (NSString*)convertFromHours:(NSString*)hours minutes:(NSString*)minutes {
    NSDictionary * minutesDictionary = @{
            @"00" : @"o' clock",
            @"01" : @"one minutes past",
            @"02" : @"two minutes past",
            @"03" : @"three minutes past",
            @"04" : @"four minutes past",
            @"05" : @"five minutes past",
            @"06" : @"six minutes past",
            @"07" : @"seven minutes past",
            @"08" : @"eight minutes past",
            @"09" : @"nine minutes past",
            @"10" : @"ten minutes past",
            @"11" : @"eleven minutes past",
            @"12" : @"twelve minutes past",
            @"13" : @"thirteen minutes past",
            @"14" : @"fourteen minutes past",
            @"15" : @"quarter past",
            @"16" : @"sixteen minutes past",
            @"17" : @"seventeen minutes past",
            @"18" : @"eighteen minutes past",
            @"19" : @"nineteen minutes past",
            @"20" : @"twenty minutes past",
            @"21" : @"twenty one minutes past",
            @"22" : @"twenty two minutes past",
            @"23" : @"twenty three minutes past",
            @"24" : @"twenty four minutes past",
            @"25" : @"twenty five minutes past",
            @"26" : @"twenty six minutes past",
            @"27" : @"twenty seven minutes past",
            @"28" : @"twenty eight minutes past",
            @"29" : @"twenty nine minutes past",
            @"30" : @"half past",
            @"31" : @"twenty nine minutes to",
            @"32" : @"twenty eight minutes to",
            @"33" : @"twenty seven minutes to",
            @"34" : @"twenty six minutes to",
            @"35" : @"twenty five minutes to",
            @"36" : @"twenty four minutes to",
            @"37" : @"twenty three minutes to",
            @"38" : @"twenty two minutes to",
            @"39" : @"twenty one minutes to",
            @"40" : @"twenty minutes to",
            @"41" : @"nineteen minutes to",
            @"42" : @"eighteen minutes to",
            @"43" : @"seventeen minutes to",
            @"44" : @"sixtee minutes to",
            @"45" : @"quarter to",
            @"46" : @"fourteen minutes to",
            @"47" : @"thirteen minutes to",
            @"48" : @"twelve minutes to",
            @"49" : @"eleven minutes to",
            @"50" : @"ten minutes to",
            @"51" : @"nine minutes to",
            @"52" : @"eight minutes to",
            @"53" : @"seven minutes to",
            @"54" : @"six minutes to",
            @"55" : @"five minutes to",
            @"56" : @"four minutes to",
            @"57" : @"three minutes to",
            @"58" : @"two minutes to",
            @"59" : @"one minutes to",
    };
    
    NSDictionary * hoursDictionary = @{
            @"0" : @"zero",
            @"1" : @"one",
            @"2" : @"two",
            @"3" : @"three",
            @"4" : @"four",
            @"5" : @"five",
            @"6" : @"six",
            @"7" : @"seven",
            @"8" : @"eight",
            @"9" : @"nine",
            @"10" : @"ten",
            @"11" : @"eleven",
            @"12" : @"twelve",
            };
    
    NSDictionary * hoursToDictionary = @{
            @"0" : @"one",
            @"1" : @"two",
            @"2" : @"three",
            @"3" : @"four",
            @"4" : @"five",
            @"5" : @"six",
            @"6" : @"seven",
            @"7" : @"eight",
            @"8" : @"nine",
            @"9" : @"ten",
            @"10" : @"eleven",
            @"11" : @"twelve",
            @"12" : @"zero",
            };
     NSMutableString *myString = [[NSMutableString alloc] init];
     if (minutes.intValue == 0) {
         id myMinutes = [minutesDictionary objectForKey:minutes];
         id myHours = [hoursDictionary objectForKey:hours];
         myString = [NSMutableString stringWithFormat: @"%@ %@", myHours, myMinutes];
     } else {
         if (minutes.intValue <= 30) {
             id myMinutes = [minutesDictionary objectForKey:minutes];
             id myHours = [hoursDictionary objectForKey:hours];
             myString = [NSMutableString stringWithFormat: @"%@ %@", myMinutes, myHours];
         } else {
             if (minutes.intValue < 59) {
             id myMinutes = [minutesDictionary objectForKey:minutes];
             id myHours = [hoursToDictionary objectForKey:hours];
                 myString = [NSMutableString stringWithFormat: @"%@ %@", myMinutes, myHours];
                 
             } else
             myString = [NSMutableString stringWithFormat: @""];
         }
     }
    return myString;
}
@end
