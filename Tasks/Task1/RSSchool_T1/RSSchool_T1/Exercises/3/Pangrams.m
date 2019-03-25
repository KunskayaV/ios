#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSError *error = nil;
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"\\W|\\d|_"
                                                    options:NSRegularExpressionCaseInsensitive
                                                    error:&error];
    
    NSString *lowerString = [string lowercaseString];

    NSString *lowerStringWithoutSigns = [regex stringByReplacingMatchesInString:lowerString
                                               options:0
                                               range:NSMakeRange(0,[lowerString length])
                                               withTemplate:@""];
    NSMutableSet *set = [NSMutableSet new];

    NSUInteger length = [lowerStringWithoutSigns length];
    for (int i = 0; i < length; i++) {
        NSString *ch = [lowerStringWithoutSigns substringWithRange:NSMakeRange(i, 1)];
        [set addObject:ch];
    }

    NSUInteger count = set.count;

    [set release];

    return count == 26;
}

@end
