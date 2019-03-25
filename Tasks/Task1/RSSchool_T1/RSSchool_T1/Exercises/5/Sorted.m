#import "math.h"
#import "Sorted.h"

@implementation ResultObject
-(void) dealloc {
    [_detail release];
    [super dealloc];
}
@end

@implementation Sorted

// Complete the sorted function below.
- (ResultObject*)sorted:(NSString*)string {
    ResultObject *value = [ResultObject new];

    NSMutableArray *array = [[string componentsSeparatedByString:@" "] mutableCopy];
    
    if (array.count != 1) {
        int firstIndex = [self findFirstIndex:array];
        
        if (firstIndex < 0) {
            value.status = YES;
        } else {
            int endIndex = [self findInArray:array fromPosition:firstIndex];
            
            if (
                endIndex == firstIndex + 1
                || [[NSString stringWithString:array[firstIndex + 1]] intValue] < [[NSString stringWithString:array[firstIndex + 2]] intValue]
            ) {
                [self swapElementsIn:array fromPosition:firstIndex toPosition:endIndex];
                value.detail = [NSString stringWithFormat:@"swap %d %d", firstIndex + 1, endIndex + 1];
            } else {
                [self reverseElementsIn:array fromPosition:firstIndex toPosition:endIndex];
                value.detail = [NSString stringWithFormat:@"reverse %d %d", firstIndex + 1, endIndex + 1];
            }
            
            value.status = [self isArrayAscendingSorted:array];
        }
    }

    [array release];
    return value;
}

- (int)findFirstIndex:(NSArray *)array {
    int index = -1;

    NSUInteger length = array.count;
    for (int i = 0; i < length - 1; i++) {
        int firstValue = [[NSString stringWithString:array[i]] intValue];
        int secondValue = [[NSString stringWithString:array[i+1]] intValue];

        if (firstValue > secondValue) {
            index = i;
            break;
        }
    }
    
    return index;
}

- (int)findInArray:(NSArray *)array fromPosition:(int)startPosition {
    NSUInteger length = array.count;
    int endIndex = startPosition + 1;
    int startValue = [[NSString stringWithString:array[startPosition]] intValue];

    for (int i = startPosition + 1; i < length - 1; i++) {
        endIndex = i;
        int afterValue = [[NSString stringWithString:array[i+1]] intValue];

        if (afterValue > startValue){
            break;
        }
    }
    
    return endIndex;
}

- (void)swapElementsIn:(NSMutableArray *)array fromPosition:(int)startIndex toPosition:(int)endIndex {
    id obj = array[endIndex];
    array[endIndex] = array[startIndex];
    array[startIndex] = obj;
}

- (void)reverseElementsIn:(NSMutableArray *)array fromPosition:(int)startIndex toPosition:(int)endIndex {
    int steps = ceil((float)(endIndex - startIndex) / 2);

    for (int i = 0; i < steps; i++) {
        id obj = array[endIndex-i];
        array[endIndex-i] = array[startIndex+i];
        array[startIndex+i] = obj;
    }
}

- (BOOL)isArrayAscendingSorted:(NSMutableArray *)array {
    NSUInteger length = array.count;
    BOOL isArraySorted = YES;

    for (int i = 0; i < length - 1; i++) {
        int firstValue = [[NSString stringWithString:array[i]] intValue];
        int secondValue = [[NSString stringWithString:array[i+1]] intValue];

        if (firstValue > secondValue) {
            isArraySorted = NO;
            break;
        }
    }
    
    return isArraySorted;
}

@end
