#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSNumber *number = [NSNumber numberWithInteger:monthNumber - 1];
    if ((number.intValue < 0) || (number.intValue > 11 )) {
        return nil;
    }
    return [[dateFormatter monthSymbols]objectAtIndex: number.intValue];
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
    NSDate *dateD = [dateFormat dateFromString:date];
    NSCalendar * calendar = [NSCalendar currentCalendar];
    NSDateComponents * dateComponents = [calendar components: NSCalendarUnitDay | NSCalendarUnitWeekday fromDate: dateD];

    return dateComponents.day;
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    NSDateFormatter  *dateFormatter   = [[NSDateFormatter alloc] init];
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru"];
    [dateFormatter setLocale:locale];
    [dateFormatter setDateFormat:@"EE"];
    return [dateFormatter stringFromDate:date];
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *beginDate = [dateFormat dateFromString: @"2021-05-17"];
    NSDate *endDate = [dateFormat dateFromString: @"2021-05-23"];
    
    if ([date compare:beginDate] == NSOrderedAscending)
        return NO;

    if ([date compare:endDate] == NSOrderedDescending)
        return NO;

    return YES;
}

@end
