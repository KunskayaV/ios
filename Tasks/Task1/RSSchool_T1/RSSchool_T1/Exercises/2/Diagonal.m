#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    NSUInteger count = array.count;
    int primarySum = 0;
    int secondarySum = 0;

    for (int i = 0; i < count; i++) {
        NSString *str = array[i];
        NSArray *rowArray = [str componentsSeparatedByString:@" "];

        primarySum += [rowArray[i] intValue];
        secondarySum += [rowArray[count-i-1] intValue];
    }
    
    int difference = abs(primarySum - secondarySum);
    return [NSNumber numberWithInt:difference];
}

@end
