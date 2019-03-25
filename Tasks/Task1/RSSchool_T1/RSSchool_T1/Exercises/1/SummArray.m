#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    int sum = 0;
    for (NSNumber *number in array) {
        sum += [number intValue];
    }
    
    return [NSNumber numberWithInt:sum];
}

@end
