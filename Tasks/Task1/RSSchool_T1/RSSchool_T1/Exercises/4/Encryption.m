#import "Encryption.h"
#include "math.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    NSUInteger length = [string length];

    double lengthSquareRoot = sqrt(length);
    int rowsCount = (int)floor(lengthSquareRoot);
    int columnsCount = (int)ceil(lengthSquareRoot);
    
    if (rowsCount * columnsCount < length) rowsCount++;
    
    NSMutableString *str = [[[NSMutableString alloc] init] autorelease];
    
    for (int i = 0; i < columnsCount; i++) {
        for (int j = 0; j < rowsCount; j++) {
            int index = j * columnsCount + i;
            if (index < length) {
                [str appendString:[string substringWithRange:NSMakeRange(index, 1)]];
            }
        }
        if (i < columnsCount - 1) {
            [str appendString:@" "];
        }
    }
    
    return str;
}

@end
