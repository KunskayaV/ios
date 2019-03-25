#import <XCTest/XCTest.h>
#import "Diagonal.h"

@interface Diagonal_Test : XCTestCase
@property(nonatomic, strong) Diagonal *diagonal;
@end

@implementation Diagonal_Test

- (void)setUp {
    _diagonal = [Diagonal new];
}

- (void)tearDown {
    [_diagonal release];
}

- (void)testDiagonal1 {
    NSArray *array = @[@"6 6 7 -10 9 -3 8 9 -1",
                       @"9 7 -10 6 4 1 6 1 1",
                       @"-1 -2 4 -6 1 -4 -6 3 9",
                       @"-8 7 6 -1 -6 -6 6 -7 2",
                       @"-10 -4 9 1 -7 8 -5 3 -5",
                       @"-8 -3 -4 2 -3 7 -5 1 -5",
                       @"-2 -7 -4 8 3 -1 8 2 3",
                       @"-3 4 6 -7 -7 -8 -3 9 -6",
                       @"-2 0 5 4 4 4 -3 3 0"];
    
    NSNumber *number = [self.diagonal diagonalDifference:array];
    NSLog(@"----- number: %d", [number intValue]);
    XCTAssertTrue([@(52) isEqual: number]);
}

- (void)testDiagonal2 {
    NSArray *array = @[@"-10 3 0 5 -4",
                       @"2 -1 0 2 -8",
                       @"9 -2 -5 6 0",
                       @"9 -7 4 8 -2",
                       @"3 7 8 -5 0"];
    XCTAssertTrue([@(3) isEqual: [self.diagonal diagonalDifference:array]]);
}

- (void)testDiagonal3 {
    NSArray *array = @[@"-1 1 -7 -8",
                       @"-10 -8 -5 -2",
                       @"0 9 7 -1",
                       @"4 4 -2 1"];
    XCTAssertTrue([@(1) isEqual: [self.diagonal diagonalDifference:array]]);
}

- (void)testDiagonal4 {
    NSArray *array = @[@"11 2 4",
                       @"4 5 6",
                       @"10 8 -12"];
    XCTAssertTrue([@(15) isEqual: [self.diagonal diagonalDifference:array]]);
}


- (void)testDiagonal5 {
    NSArray *array = @[@"-73 -93 66 12 -84 64 -88 -41 -41 -38 -44 63 -22 97 33 89 -75 94 -52 79 45 -50 -51 21 -37 30 -93 26 -76 -69 -93 66 -23 -40 -89 -93 17 55 -49 -89 47 -70 -79 3 13 -2 -48 76 44 16 -4 70 74 -66 -74 -68 -88 -5 52 5 -8 -1 -65 -3 -86 -19 24 -83 -50 50 -40 -63 -78 61 -22 -10 8 38 87 45 -34 -72 -58 -38 -82 56 36 35 -2 53 32 88 -56 -50 -99 -100 -93 -24 39 -38",
                        @"27 -96 87 -48 -73 31 -60 19 -6 5 98 94 -1 -87 -63 -38 72 -61 97 11 -76 -61 7 4 -10 -56 27 63 -52 -84 99 -62 -95 97 -92 70 97 -58 -97 -99 87 -16 84 -81 52 -3 -43 77 -27 -47 -82 -36 59 -81 -1 -14 55 36 48 88 -41 25 -84 95 -23 84 7 57 54 1 -3 -61 -23 9 73 90 49 -52 21 14 -90 -20 81 74 56 -88 9 90 -89 -50 35 -75 82 8 45 80 -3 4 16 -57",
                        @"95 -4 52 61 -40 10 86 67 66 -13 -4 22 -68 -85 -78 35 -47 71 19 26 86 15 6 41 -71 27 76 -31 -87 -98 -16 -18 96 13 -88 -19 -70 54 82 41 -61 32 -100 28 -86 -71 -37 -50 -86 -55 -21 44 -78 -96 -69 -32 -41 -92 -30 51 -23 -58 27 -5 98 40 -3 -17 -18 -53 43 -97 -85 -76 39 -64 2 64 -74 -70 32 -2 -75 62 -86 37 8 64 7 -1 48 46 -38 -98 10 62 34 -69 -26 -91",
                        @"49 -53 -87 7 -85 79 97 4 30 84 -42 44 93 -34 12 94 18 -70 -1 -77 -60 95 -16 -74 -77 -3 -62 -10 5 48 91 -39 -74 49 30 -92 -97 -1 16 53 -99 -14 -31 19 100 -38 -20 94 -41 88 86 75 -40 -94 56 -22 80 -54 -56 82 7 -24 19 77 -64 -67 21 -68 49 -17 -53 5 -97 -31 52 52 -88 83 55 -36 42 46 -93 4 56 -53 -79 95 -84 -64 70 19 -69 -52 -74 27 72 -57 -34 41",
                        @"91 -92 -41 -68 -96 18 -21 -89 34 95 -69 70 67 -85 63 -9 -64 0 -74 -1 -43 35 92 70 -21 78 -78 20 -32 -18 35 82 36 -98 -69 -81 -45 27 -85 54 87 40 90 54 -20 46 56 61 -28 77 8 -94 -33 77 -27 92 -27 -9 -36 51 7 0 -31 -36 18 -85 -16 -50 -100 -6 -54 -93 72 69 -5 -26 -78 21 -92 -83 -20 -48 -47 58 78 35 65 28 -90 50 -76 -47 -74 -38 -34 35 -61 -51 -6 -76",
                        @"-56 54 91 81 38 -49 87 -4 -100 62 34 42 23 -88 -52 49 -41 25 75 36 63 -40 10 48 -77 -58 42 88 -13 7 -57 -4 15 80 70 98 86 5 37 -94 40 -27 25 -33 25 56 -30 -85 -88 87 -40 -90 -84 52 26 -15 62 -40 -87 2 -2 -19 -91 -91 80 7 79 -2 -42 -40 79 65 93 19 49 13 37 66 38 -76 86 28 -24 83 -55 -26 49 -54 75 55 -65 -29 18 58 22 -59 -19 -90 8 -92",
                        @"99 -81 10 22 -72 -15 -50 46 62 44 -54 23 -69 99 30 47 54 -42 -27 -97 1 -25 90 4 -60 -85 92 69 25 46 24 -50 61 -52 88 -78 6 -23 -8 39 -87 76 10 95 -83 -31 -88 21 -5 72 82 45 -4 -6 83 59 68 -57 -73 42 -38 -85 -9 -75 49 -53 94 24 63 -9 62 -70 -30 68 11 35 -26 78 -86 46 97 -16 -39 50 -34 57 -68 38 -60 -94 70 20 92 -39 72 -70 -45 -58 -76 -50",
                        @"-85 22 95 -58 -94 52 -64 -8 -69 -21 28 63 -24 -99 67 -38 33 3 -23 89 26 92 86 -24 16 17 -66 -37 79 53 -2 -92 -36 -91 11 14 -84 -1 47 69 69 10 26 -36 -21 -70 83 -48 4 -75 -21 93 -24 52 40 -77 99 -15 -42 -3 12 -31 -8 5 -52 19 86 22 -64 62 -90 43 87 -7 56 -78 71 43 63 -34 78 -86 41 91 60 -70 -64 75 82 13 -43 18 43 38 51 87 -41 75 -2 -75",
                        @"-76 -33 55 -90 -10 30 -69 88 69 85 88 78 83 -48 40 15 -66 90 -64 37 -83 45 7 -39 39 -35 79 -25 18 -56 -8 -50 -91 -82 17 12 -97 -4 -33 38 47 -59 -37 27 88 1 -86 -97 6 32 73 56 -31 37 77 98 28 75 -64 -6 -54 63 53 -68 47 7 -97 -97 23 8 -41 -38 -45 -62 -60 -39 34 74 -40 100 70 33 -56 33 35 69 54 24 34 69 -58 -5 18 -15 24 -82 10 3 -12 92",
                        @"-75 42 -86 -6 11 -21 -55 -30 48 -100 56 4 -32 -80 -99 -30 -22 67 -49 -70 -22 -27 -12 97 2 47 42 -5 -29 -90 -74 94 -100 -67 -24 12 56 99 54 50 -5 48 22 -25 -43 -33 53 7 -50 -42 3 -66 92 -100 33 -29 39 -76 -47 -17 50 -86 -81 36 -56 -22 -61 -3 51 -3 53 -100 54 -54 82 96 -69 -30 22 60 48 -58 -58 78 -22 -14 -58 99 -96 -84 -10 86 -30 -20 -45 26 99 80 6 28",
                        @"20 10 76 89 58 -22 -87 -89 -93 54 25 35 30 -34 20 -17 -57 -40 3 -86 -42 18 -12 -68 10 -11 -46 -92 -75 99 72 -81 96 -26 -44 12 -32 -52 -74 -76 -99 83 80 34 30 35 47 -2 5 59 2 -30 35 -6 38 37 -91 87 -76 -91 66 96 -72 -70 16 25 58 -84 30 -95 -87 -12 -36 -71 -45 -4 -92 -99 60 21 67 -6 50 -31 2 73 39 96 96 98 95 -37 -26 78 74 -98 61 47 48 47",
                        @"56 -52 -45 -16 20 15 58 -59 7 -60 -9 -31 52 -3 -93 -70 6 -84 -89 -39 39 -30 -31 69 37 73 99 -61 16 -58 25 -91 7 64 -84 -87 -12 74 -22 45 -91 -67 -77 96 11 -57 94 88 -8 29 -47 91 16 -24 59 2 -16 61 16 72 -9 48 79 -2 -14 52 -98 25 -84 97 -49 -17 84 -43 -85 -35 38 -44 94 7 -63 6 -93 -19 22 -42 39 14 -61 7 32 -85 -83 -59 17 71 -15 -33 25 78",
                        @"-48 -91 -49 26 -24 77 52 -20 24 1 -22 -47 43 -12 -16 21 63 14 -50 -25 99 30 5 -77 82 -12 81 22 -50 -39 -33 -57 -78 -33 82 -95 -51 38 30 38 -66 56 42 48 -6 -31 -12 3 -28 73 -85 81 77 46 -63 -96 10 -60 -30 39 -69 -90 41 44 -16 -17 64 11 -7 -8 72 8 -60 8 85 58 55 44 2 83 5 -36 67 46 -14 -74 80 -16 27 -80 50 91 -99 -99 -75 78 62 -1 79 -31",
                        @"-33 -40 -61 99 71 -51 -87 -40 11 -82 10 -61 42 95 -48 -5 -100 -22 -91 40 -22 31 -32 87 98 -18 -87 33 -68 -76 93 -32 -97 -45 2 -36 25 91 97 27 78 -84 -85 -4 77 98 -65 78 53 -67 -38 64 37 52 46 -57 65 5 -56 54 91 19 38 94 -36 40 100 57 -95 -5 -39 -33 96 40 -9 44 -6 20 5 -33 9 -6 37 71 -95 -20 14 92 -19 46 35 19 -80 66 -78 2 94 17 -5 -21",
                        @"-59 54 -89 90 -49 72 -86 72 94 89 89 41 18 -91 67 -81 -75 18 -55 -15 14 -77 -58 3 -94 -90 35 22 -18 -40 44 -32 -37 -3 -12 28 -86 -4 -71 -41 -40 -100 6 29 -80 -48 92 33 -56 69 -21 100 48 28 -25 -64 -54 -11 49 -88 46 96 69 68 -74 92 47 68 35 -14 73 -12 -79 -56 85 -52 -91 -27 -38 22 -95 95 31 -9 51 73 97 -5 9 -32 63 -36 76 87 -20 -94 17 -15 -13 -28",
                        @"5 29 91 -74 -26 26 -39 -10 3 72 -73 -32 53 -74 -35 -57 -67 75 38 87 76 -89 53 34 -68 -5 97 -68 0 -72 -31 -93 -32 -10 75 80 75 82 -60 -35 -98 -20 -93 -45 -42 91 -11 -80 60 44 -54 -22 -54 79 -100 -43 -35 57 22 -63 -72 -94 -25 0 -45 -70 81 -98 -45 -5 -57 -47 8 100 -9 -67 -56 88 16 14 95 -66 -18 40 -33 -78 95 9 39 24 -76 34 -66 49 11 31 -3 -55 63 16",
                        @"23 37 -31 81 4 -67 50 -60 49 45 31 0 11 -15 -67 70 5 -24 3 81 -7 25 -15 -41 -40 60 -15 -71 95 -51 84 82 5 -32 -67 -24 -3 -83 52 -34 1 10 35 -15 -25 41 49 52 13 -90 16 52 84 27 -3 29 95 -9 28 -72 9 99 -16 -18 -76 99 -74 -19 -99 -68 -44 41 -24 -67 -19 -97 37 50 98 -84 47 -19 67 99 46 -89 -32 -96 99 73 -78 -23 72 24 86 58 -92 -48 10 0",
                        @"66 54 22 19 52 -45 10 -95 74 -26 -99 14 48 80 84 -69 -24 6 54 78 11 -80 -80 -100 21 12 -29 75 -53 19 -79 -41 -25 12 -95 -1 -56 -54 -54 -82 -50 45 29 -58 25 -16 -81 -5 94 6 -38 -3 -75 -27 56 75 -94 25 9 8 -98 97 -12 59 15 49 99 -28 -72 60 -91 91 11 -56 24 -43 -42 42 85 32 46 8 28 75 -51 76 91 -50 -49 -39 36 -53 -95 -72 8 -12 -6 -67 -22 -31",
                        @"-1 11 -97 -67 50 23 -16 95 69 70 -58 46 16 -20 8 -63 48 58 -15 -77 85 22 27 -74 -57 47 -7 90 36 95 -33 -100 9 26 -8 -63 -8 -67 34 39 100 -44 -75 64 1 -25 -9 0 -94 -64 86 -61 58 36 33 12 -87 -92 -53 16 67 19 42 -86 -26 -68 10 -15 -7 8 58 51 -60 6 -97 -83 -1 -15 66 50 7 68 36 -32 -52 76 53 43 91 0 -62 60 -95 -11 -76 -80 84 -50 -36 -38",
                        @"-70 -48 20 95 28 80 65 96 96 -45 -59 -81 -16 -27 43 53 -10 -32 -51 -5 26 29 68 -36 58 -8 -9 -27 0 6 6 100 53 -2 28 -45 62 21 70 27 88 -9 22 44 -85 92 92 -98 36 62 -46 -60 -45 -18 -27 -77 17 -22 15 81 22 -14 50 -79 26 -67 -74 -42 -5 -95 30 11 -61 75 -2 -81 41 63 85 -67 15 64 -97 -89 79 -88 -19 -51 -87 21 -22 4 -80 25 65 22 81 -9 -63 18",
                        @"91 -34 48 -91 -68 -16 -85 79 12 -27 6 -43 -21 66 -70 79 23 95 81 98 -59 33 -76 -64 -52 -11 -57 61 11 17 64 1 -63 90 65 80 59 -12 -37 67 0 -4 30 -24 -37 8 -95 -31 -17 79 -70 -37 -42 -39 -15 84 -86 99 20 52 23 93 -47 94 91 27 21 67 -20 -5 69 -73 28 8 74 7 -8 -37 -56 -37 -93 -90 -86 82 96 -39 27 -77 13 -71 4 -47 -14 64 38 99 45 -7 32 84",
                        @"56 -47 -71 23 -29 94 -17 -61 -32 47 77 -72 -6 48 -85 -40 79 8 -83 62 -31 -5 -42 31 -24 -26 30 -59 -47 -27 77 16 -87 38 -20 99 85 93 66 -68 -4 90 70 56 -22 8 83 -83 -44 45 -55 -64 99 22 76 -5 -97 -73 -34 45 11 -39 -69 86 61 -10 -72 -89 96 -12 84 -54 41 11 74 94 -18 80 -52 98 -51 76 -22 94 -48 39 77 47 -10 33 40 5 31 5 79 35 23 -8 74 76",
                        @"-95 23 -51 6 -79 22 12 70 36 41 -14 -27 -8 83 19 -84 -64 56 -5 -4 95 15 51 2 -79 67 -10 87 86 -16 -13 -71 -38 84 -14 88 70 -18 -76 -92 44 75 -70 -92 -87 -23 -29 -9 73 -38 -28 85 -58 -95 33 -57 -87 60 -43 76 -74 90 72 -92 65 31 -46 -17 77 -57 -85 35 59 -6 -72 6 -79 -70 -43 62 -5 63 94 61 -19 -46 2 -100 70 27 23 -17 -47 56 3 9 23 -37 3 88",
                        @"66 -46 61 -82 94 -36 58 -84 -48 83 -7 -1 75 97 16 87 -89 -99 40 -51 -33 -2 -49 -13 -76 -19 -19 64 27 74 -4 -54 -88 15 -18 43 12 -23 -20 -54 -50 -28 -44 81 71 54 -97 -63 -32 69 -8 73 93 -78 -76 -77 53 -38 100 -75 58 -100 -98 58 29 -69 33 90 38 -57 12 -47 27 -2 -33 38 80 22 -75 90 -88 4 36 40 45 -9 38 -34 -40 85 -88 -2 88 45 -21 42 0 -78 -76 48",
                        @"61 -12 18 16 13 -86 -44 67 -44 -37 40 -63 48 -78 77 18 -23 44 49 37 -51 -89 -57 -10 51 -64 11 -4 -32 94 -94 -76 -58 -75 6 66 -95 96 -47 -82 2 22 2 -27 62 -46 -20 90 6 63 -3 -29 -18 35 -61 57 28 -26 10 -66 -10 -22 -59 27 -40 35 -69 -70 -20 -95 -43 75 2 -25 -95 -19 81 43 -41 -12 -60 76 -71 87 31 21 66 49 66 72 -2 -29 15 -16 0 -51 77 -29 20 38",
                        @"-1 45 -58 29 39 -78 95 83 -75 -8 4 30 90 80 -83 78 29 49 -48 -86 38 32 21 -32 -93 29 85 -3 20 85 72 57 -28 8 34 -55 -73 -17 14 -37 79 25 98 -45 9 49 -99 58 -4 81 -21 -16 79 76 -90 -68 -90 1 -10 -37 30 -71 -85 -37 71 -100 8 -1 -73 88 -47 -35 -7 15 -78 -98 -77 -36 43 63 -23 -92 -50 -2 19 49 9 43 -19 -75 54 -24 24 32 61 22 16 15 -65 10",
                        @"-74 -59 -97 -81 42 -60 -47 -62 -45 83 -47 -54 -51 22 92 10 23 97 76 98 95 -17 -91 94 16 8 -22 -73 -25 51 29 68 -96 35 -40 61 -98 63 31 99 17 52 -56 74 82 -55 -79 -8 63 64 98 31 87 -18 -5 25 27 -9 81 -9 -42 -17 92 -79 42 -12 38 -43 13 79 60 43 4 16 -75 53 100 -39 91 -14 -53 92 -58 -6 76 -29 -63 73 68 64 94 12 85 -16 100 79 -9 92 -34 -79",
                        @"-99 55 -3 73 13 78 67 87 39 52 -83 88 -19 -92 -22 70 87 39 70 -19 59 -78 -28 7 7 -59 -81 -88 79 -51 -53 -30 80 -21 -4 -92 13 9 -32 31 67 -99 76 57 100 -67 -66 -83 13 60 65 8 -53 -37 -53 -83 -19 -96 -96 -98 -56 -35 63 61 13 -70 22 -21 -96 61 84 96 -40 -17 -88 69 71 -64 -43 -24 -77 -31 40 47 1 -35 100 -41 60 -92 -52 -25 36 87 95 -33 57 -53 81 -57",
                        @"25 75 25 -35 95 -43 36 -84 -28 27 -25 -64 -25 -5 -14 -47 -48 -70 47 -8 -22 11 37 21 85 90 -80 37 -87 48 38 69 -4 -40 95 65 27 -30 95 5 -36 -25 48 66 -20 62 -87 91 -34 29 30 44 -3 42 -40 78 -79 -63 -5 -41 -20 28 76 63 33 -88 -89 -88 8 -11 -35 -50 84 77 -18 -10 -77 23 -70 -41 -58 -19 -44 -40 34 -77 27 15 -59 -26 -83 64 23 -40 47 10 -50 -37 -8 -9",
                        @"75 1 12 -1 -81 92 -85 -74 77 -2 -1 -49 51 67 65 -41 8 88 -15 12 -27 9 -10 13 -89 -80 67 23 -25 -87 3 57 -62 53 5 -76 -31 -93 6 59 4 36 79 -93 -78 -71 -39 46 85 -25 77 -56 90 65 78 78 -73 73 -20 -3 67 87 98 -62 60 -69 -94 0 4 7 -34 -98 92 -89 79 100 71 -88 -2 -51 68 -8 -93 -34 -56 -51 52 -57 36 60 61 39 19 -31 -84 -42 19 66 86 -16",
                        @"69 -61 -27 23 -93 27 -36 -10 4 33 5 -65 67 85 -46 -27 34 -67 -73 100 11 -17 -68 12 2 -60 87 -87 100 -43 23 -60 -64 83 42 -86 -34 -62 33 -48 -60 35 -57 -12 15 94 -29 -96 -36 -79 -33 -42 -76 79 -82 -70 -26 33 56 -24 49 64 98 57 58 94 43 99 -41 79 -36 39 -70 68 10 60 -45 63 28 -26 3 -97 33 -46 64 15 -50 38 -51 72 87 -20 44 86 76 59 58 45 61 -40",
                        @"-58 81 61 54 10 -84 -84 90 32 52 -20 44 -99 26 71 83 -84 -100 42 -76 86 -65 71 26 -13 28 -79 -22 43 -83 -35 -15 -80 81 30 -21 -59 39 96 46 69 -15 -53 -39 88 -63 -83 -72 87 -90 -42 11 -76 -36 -56 55 42 -93 -10 32 -48 46 37 76 90 96 -32 -7 38 -44 53 77 -70 17 0 11 95 97 75 -41 14 -50 -13 -69 51 -24 -13 -100 -14 -3 59 85 -30 84 -78 52 93 -82 -16 73",
                        @"74 25 -27 -58 35 40 -62 -65 54 98 -53 90 -36 -69 31 -70 -62 54 -74 -31 -39 20 -75 71 -78 48 -77 28 75 -1 -100 -53 -30 -44 69 96 47 -53 -6 44 -10 21 34 31 66 -60 -68 39 79 -10 -92 -9 -39 87 -4 -19 -37 100 -82 -53 65 100 -70 -63 55 64 83 45 -46 -92 56 52 91 -73 3 -80 96 90 -98 60 -35 -49 -99 -80 85 99 -99 44 -95 69 -31 -72 -51 -72 38 -16 -22 19 59 86",
                        @"-67 -71 66 -4 -27 98 -32 75 -93 -26 69 69 56 -66 -32 -30 -55 6 -15 12 -77 -13 -7 11 -67 72 96 -11 -96 62 16 78 89 -47 56 56 -95 62 92 -78 52 87 -42 -26 100 -59 5 -8 65 -25 86 0 64 -93 63 -94 -68 -25 -17 65 -40 -75 24 -63 -11 -28 77 -67 33 -26 -70 -60 80 -32 -89 35 98 69 13 6 -77 71 -27 3 78 -4 21 61 -76 78 9 33 96 -20 -78 -2 -60 6 -23 47",
                        @"-5 -33 -68 -18 28 35 -8 -8 -64 92 -65 14 -96 16 77 -47 24 -61 81 -34 99 -54 72 -83 -82 -18 -60 -80 -29 -97 -20 -55 -27 -24 -71 92 -53 86 -63 46 39 7 -66 -25 -63 30 -70 -69 -3 52 -15 -54 -60 -60 -88 -26 33 -15 -30 99 16 97 43 71 2 -25 82 99 -97 28 -42 -36 -83 -40 93 91 -89 37 -25 -66 83 -65 0 -53 52 -25 -20 -19 20 -36 45 -54 -79 77 -30 -9 7 -20 74 -60",
                        @"-67 58 38 -62 23 -45 -6 14 91 -9 -80 -54 -98 -100 -44 -51 -1 90 -98 -82 55 57 -35 -13 -81 -7 -1 -8 -19 -81 -98 20 -15 -61 -66 -92 -7 -36 87 11 -25 53 -44 -44 13 42 -4 -44 43 -14 21 65 7 -51 -45 13 27 -27 -43 74 -47 -21 -19 81 69 -93 -25 76 62 -50 35 70 -85 -76 35 34 -11 -75 50 -9 -2 89 29 -43 -69 29 -77 -90 -8 58 -9 -4 -95 43 -94 73 33 25 -43 -99",
                        @"89 -6 -41 -53 45 39 29 24 2 -91 -75 71 -21 52 89 33 73 -49 -16 45 51 38 39 81 60 -62 -16 1 -52 -27 -46 83 -42 -94 -7 -92 -20 -65 5 -68 5 -56 -70 32 83 -39 71 11 79 21 -21 60 57 -77 26 -15 -19 80 33 76 26 77 98 -91 -61 81 10 4 11 -34 -17 -50 -37 -11 42 94 -15 81 8 58 3 0 -8 51 -65 -97 -78 -97 -90 47 -96 -12 -62 32 -22 -71 -13 -53 -61 -40",
                        @"-49 47 -86 33 21 -89 66 75 27 -47 -72 68 89 -64 66 -46 -38 35 -7 -44 -6 -71 98 52 -1 -98 46 41 -30 -80 -15 40 40 -93 -79 -71 -13 47 -74 47 -74 31 27 92 -5 -69 -23 -70 -11 26 -3 34 -80 -6 -55 40 75 36 -81 69 36 24 -18 0 50 -65 86 -71 70 13 59 34 52 85 79 -46 43 77 -26 22 93 96 2 0 -64 87 24 -94 22 2 34 -29 -59 29 12 -45 66 6 -71 67",
                        @"66 62 -52 12 72 -15 -25 93 32 53 50 83 71 61 99 -71 29 10 -77 97 67 -27 -3 -89 51 29 -13 35 -22 97 -15 48 40 99 -9 -95 89 -73 5 -49 -69 52 -51 87 87 -17 22 -90 27 43 7 88 42 56 -44 -82 82 63 -76 44 -23 39 -46 84 -100 27 75 92 27 -25 -46 12 93 -32 -71 -98 -2 -85 20 -80 53 89 -96 15 60 -99 -14 -82 -35 -79 31 70 89 -83 32 -70 -35 74 -15 86",
                        @"71 -52 48 64 89 -99 -75 86 100 -13 -18 -63 -98 89 83 -91 78 70 -43 64 -98 -10 38 -31 -91 20 -1 29 48 8 -93 41 36 36 -75 47 -84 39 -57 -64 90 83 15 62 53 4 58 77 -76 48 -95 58 -12 88 -53 -59 -86 1 -52 42 15 30 -84 -96 30 -13 58 89 30 -100 95 39 -27 -77 11 81 -4 -55 97 -7 77 27 61 42 -47 -39 15 -79 -20 73 -19 35 -5 82 64 72 -57 -41 -40 -68",
                        @"-79 -68 -57 94 -11 45 20 41 -98 43 17 -8 4 89 -10 38 33 -80 -28 32 9 -24 39 86 88 56 28 43 1 -54 -99 59 48 -7 51 91 98 -41 74 77 89 85 4 -88 80 78 49 -82 85 -43 -13 -49 56 -64 26 34 -57 64 98 57 -9 46 28 -67 -70 83 -15 63 -95 -64 -60 -43 -32 17 -31 -50 51 26 -63 87 -75 33 36 -6 89 -32 -71 26 -26 -40 -40 -73 -100 32 -15 -61 81 34 2 -3",
                        @"-33 -33 66 -83 92 -28 -50 -52 56 -66 -15 -75 -33 77 -73 51 -18 -88 -25 82 90 -80 -47 -86 -37 -86 -9 14 85 44 45 28 4 57 56 -58 33 -89 -3 4 -72 58 -8 -20 23 35 -49 -24 43 2 87 -26 -70 91 -62 -77 58 8 92 58 -29 66 -19 20 66 -57 -91 86 -70 -57 -67 6 -11 5 56 -58 -13 84 40 -6 65 -29 -49 -47 -39 -19 49 55 -21 18 59 -50 18 76 -6 90 -40 -47 15 -57",
                        @"75 -82 68 -63 62 -9 37 -22 18 -18 88 -51 -43 66 68 63 22 -61 -59 -82 -18 -10 27 85 86 49 6 -26 43 98 0 48 -43 24 48 88 40 4 -53 68 -36 93 -17 75 50 -100 7 -76 71 41 80 2 70 8 -37 -79 -92 -30 88 -83 9 -72 -43 -94 -34 100 80 62 -24 -24 -53 43 -27 71 -23 -31 18 30 44 -3 38 47 -63 70 99 73 5 11 -48 -42 -6 68 6 86 -42 -39 -10 82 -10 31",
                        @"71 96 75 -76 46 48 -58 18 -70 50 52 -51 -81 58 82 63 -8 -69 73 75 71 -84 21 53 19 -31 19 13 3 55 1 -55 91 -52 90 -79 52 -51 82 -48 96 34 -6 33 -33 -13 94 -95 100 30 -63 -29 -93 -45 5 -88 43 50 -86 -16 37 -5 -15 17 -68 -14 -26 -68 60 5 16 58 -49 -77 47 -60 28 58 -8 -3 23 20 56 81 -82 76 -76 -6 -72 -17 36 -24 26 37 27 4 100 -52 14 9",
                        @"62 -26 89 54 -68 -84 -29 -10 -63 0 -13 -100 47 82 -100 57 -26 -84 -100 39 -60 84 -65 -51 -6 -72 30 18 -87 -87 71 36 83 25 -54 42 97 16 92 19 75 -93 98 -62 66 100 -88 64 26 72 38 -38 -9 -44 -92 -16 15 -73 98 -31 -56 -68 5 21 59 -91 38 99 -50 91 4 -6 -61 -65 -95 -42 -95 81 -69 24 70 85 -69 8 35 2 10 -91 -44 26 -62 -70 11 73 43 42 -55 -95 -17 57",
                        @"16 -25 -88 10 13 34 93 -13 30 38 34 93 -61 -35 86 94 57 64 -74 90 -72 65 92 -65 54 -55 -18 -52 -38 45 48 97 79 -39 -10 -46 86 -84 -37 70 72 26 -63 -73 -81 -57 9 58 -5 58 70 53 31 19 -8 3 -69 -20 -87 -83 -6 -19 69 97 -70 86 -50 62 -38 60 46 -77 -68 17 -34 -30 10 -19 -17 17 -69 80 68 -68 -86 31 83 -84 56 92 99 -34 87 68 -24 20 62 -16 87 -53",
                        @"13 -55 -65 -39 47 -50 82 22 61 -79 -9 -41 21 -71 -39 -16 95 46 -32 -20 47 -67 -57 53 -88 -67 -40 67 -83 -44 -73 -10 -5 10 72 21 65 14 99 56 26 90 -17 26 55 9 -54 -93 -15 -29 44 -46 56 -68 85 -92 12 -41 66 44 76 11 -39 68 -42 -13 70 -18 77 91 31 -37 -69 79 -99 80 -12 -42 -7 -61 -46 -62 68 -68 25 89 -70 -96 46 -8 -87 89 88 -53 -3 32 53 -88 19 67",
                        @"-82 0 -24 -66 -92 22 -56 44 50 60 19 33 -70 -24 60 -35 -40 -33 51 11 74 2 8 -6 -99 41 74 32 -37 -36 -27 -65 -25 -56 -1 13 -40 78 -1 22 -22 42 -77 55 58 -14 89 -91 69 64 -60 -56 -95 -93 -74 -45 -42 42 -5 -9 47 49 -83 4 -69 75 31 -97 11 -38 24 96 -65 62 -74 -7 22 -94 -47 -76 -27 -15 69 70 -65 76 19 79 -90 -61 47 -63 64 -98 11 -70 -42 40 88 -70",
                        @"39 17 72 -71 89 -84 50 95 -18 89 64 -97 -64 40 -28 50 99 -74 44 -5 -82 -94 -73 87 75 -67 -83 23 -13 10 37 -10 41 -71 67 -41 -80 10 16 -84 -95 -79 -29 -87 -2 -85 -89 -98 69 67 28 -99 -72 -81 0 47 -68 92 7 -69 18 -83 11 -6 -60 -15 -57 37 70 -27 31 -77 38 -20 -65 33 3 -59 83 83 12 -48 44 -62 -47 79 13 32 -21 1 84 81 25 -58 -36 -44 28 -73 13 45",
                        @"91 49 -55 15 -84 96 14 -47 47 -56 -52 32 29 -17 30 -9 85 39 11 25 -3 39 -3 -39 32 74 10 -54 -51 13 -56 1 68 -53 -46 -38 11 77 -22 -45 9 33 39 -88 99 81 94 65 5 -90 -87 58 -49 96 9 49 30 21 -54 -88 64 -4 12 28 40 -69 85 9 -93 56 62 93 0 -73 16 8 72 -2 36 -2 -56 16 51 -65 -31 69 82 -30 -11 52 54 -64 -78 -57 -95 -43 65 86 47 -22",
                        @"21 67 60 64 92 24 16 43 84 -41 -81 -42 64 -99 32 -68 1 -7 86 60 74 18 31 40 -23 90 -95 -88 73 15 31 -23 69 -87 -60 -55 -54 -74 -82 59 69 -94 -64 92 -71 46 5 32 99 -59 79 40 -32 -4 -5 86 -49 -47 61 -36 99 15 77 -82 -68 37 76 66 -63 -100 -75 -87 -98 -94 -97 -10 40 41 63 -59 -21 -45 -84 49 -21 13 -65 24 74 26 37 85 -74 -69 -93 32 18 -5 -72 8",
                        @"-66 63 96 29 -30 29 64 -3 80 55 58 -75 -77 51 -82 -13 -55 -86 80 -97 30 79 -77 -82 -55 -13 -82 -74 -55 79 -83 87 -84 -49 60 -41 89 -75 97 -45 9 14 35 96 -46 9 -68 -86 -26 -2 -57 38 29 -46 97 3 -38 75 -42 75 -11 26 -64 -22 -94 20 42 -31 -21 -77 0 -72 -17 61 -36 12 20 33 -71 -58 -45 72 -69 2 81 -53 49 7 -73 57 -59 -73 -81 -80 64 -56 -96 2 -38 35",
                        @"-8 -2 -29 -14 -25 -16 94 -27 50 -4 39 5 32 -73 -41 27 -81 -11 69 -30 3 -40 68 78 27 22 96 32 -36 53 39 28 49 5 77 96 25 -93 -73 -81 82 -74 9 94 96 82 83 -85 70 88 -13 -47 76 21 -14 5 92 -26 -77 47 -53 -30 -90 70 -54 -38 15 -19 52 -1 41 6 -37 -94 -20 -81 92 77 -24 -98 11 -72 3 -94 40 -59 53 5 -76 -58 39 20 46 -56 94 0 -49 -91 67 -100",
                        @"64 91 69 -47 -89 -59 -52 -30 -58 -90 -54 46 60 -1 -59 -36 -77 97 -4 -68 14 -16 -33 67 -43 14 93 17 -93 9 -78 -39 92 -34 46 34 -34 97 -1 -37 -34 -50 31 11 -41 22 -75 81 76 80 41 55 -64 -72 -4 -86 -6 61 89 -15 68 -99 12 -78 51 84 -27 47 27 84 62 0 -35 -45 51 -16 -67 30 76 92 -46 18 43 76 -79 -45 55 46 38 -35 95 -49 -67 -92 -40 21 -87 11 -89 -81",
                        @"-18 -45 -81 -87 -94 -10 22 -66 -16 -78 90 -98 -70 -13 69 -68 -42 50 -61 -88 -46 59 38 23 100 -61 -2 92 -7 76 -29 -31 -48 -39 14 48 -72 89 10 67 74 -13 2 16 51 -78 66 36 9 51 37 -20 43 -46 -85 -19 10 -1 21 -59 -95 7 -86 70 -84 -39 -54 -90 -5 100 18 -28 23 32 -6 12 -56 -33 1 8 49 -90 10 -32 -6 -20 36 71 28 82 -33 64 75 86 16 77 -85 71 -80 -82",
                        @"70 16 80 0 -2 -9 -31 42 100 -28 -84 47 8 100 83 74 -48 34 -12 71 -87 -89 -63 47 -11 -15 -37 91 -81 70 -76 73 39 -34 -46 -37 -26 55 -43 -17 -43 89 74 36 -5 30 59 -25 43 94 59 -45 42 -31 -1 -19 -73 51 40 -52 6 21 13 -12 -70 22 55 -77 16 -21 -73 51 -80 -8 -51 78 74 15 29 16 99 -88 -46 -89 -39 -66 22 -4 74 39 30 -9 43 -54 82 -61 -2 -49 35 -78",
                        @"-70 0 -35 40 15 -40 45 44 74 58 -89 80 -32 82 36 -41 7 16 -63 -23 80 54 -26 -81 -5 29 46 -80 -29 29 43 -28 -30 80 -28 75 -79 42 70 -93 -10 50 -87 -73 41 -37 -17 5 -39 -41 -53 -96 72 -9 60 -48 38 -79 10 82 69 -90 -28 58 -98 -80 16 96 79 45 -90 -76 6 -4 -64 -82 -18 -19 -67 -41 93 87 -84 57 -30 14 -84 -17 -88 -41 -3 54 67 -53 70 40 -78 55 29 -21",
                        @"-38 -96 -44 74 -60 -12 75 83 51 98 12 -48 -7 65 66 84 -66 -22 13 -20 36 98 64 -83 77 -37 46 -4 91 -42 64 33 -85 24 29 -40 59 16 94 52 98 -79 -22 0 -62 -21 -27 -6 -71 56 36 70 4 -47 -8 55 23 27 -25 72 -41 82 59 -98 25 -29 -75 -32 -87 31 38 -72 41 -49 50 93 60 54 -45 -62 -73 -12 95 -71 44 -45 23 29 -41 -94 32 98 -35 8 -64 -69 14 27 -92 74",
                        @"30 -4 -90 23 59 8 37 -82 0 60 -82 -66 -16 -27 37 86 72 -11 -45 37 64 -46 -8 -21 90 88 -89 7 -60 58 -91 83 84 31 19 37 -47 20 38 45 -91 37 -43 14 -65 49 -85 84 32 -66 62 -36 -26 91 -37 -54 84 -53 -60 -27 -10 -7 74 -6 13 60 -77 -75 -97 -21 6 64 -41 -43 -10 96 30 84 -74 -96 -76 -90 20 -3 -74 48 99 -56 28 -43 -26 15 -63 -42 0 -73 -55 -38 -99 9",
                        @"51 71 -35 41 99 10 -65 -64 -90 87 -52 -3 91 -44 84 92 76 39 -17 59 76 49 -63 6 10 93 -95 89 -42 -96 32 93 -66 -98 85 8 76 71 -56 -6 -43 -4 -94 36 52 26 30 78 -69 77 -58 -48 -7 70 54 -20 -39 47 17 11 85 -30 2 1 -69 -39 43 80 -49 80 -72 -75 -69 35 68 -26 -99 -55 34 -32 -97 -42 -100 -80 83 -89 -53 65 19 32 6 71 1 -87 -4 -26 46 37 58 -2",
                        @"65 -91 81 79 70 39 25 -44 2 -81 42 12 46 44 -79 -65 28 10 -58 -35 -57 97 -83 2 24 13 94 61 -94 -82 88 65 15 -65 -93 -8 88 -74 55 -75 -60 -19 -30 -81 -81 -88 -7 -18 -65 -84 80 7 -34 -44 18 -50 -81 -47 17 65 -70 -94 85 39 -7 88 33 23 -71 -100 1 -60 14 31 -97 8 92 29 -37 88 -7 -27 14 75 74 14 18 12 51 -27 67 -40 -23 -61 -85 99 8 -47 28 -76",
                        @"-77 9 -10 -49 -38 34 81 -98 -7 -44 -37 65 82 -37 -88 36 47 -19 21 85 70 13 60 28 42 -76 -23 -45 15 -94 -36 81 96 -21 -77 -8 -47 -72 -85 -90 51 -27 -39 75 75 74 30 -30 -41 7 88 -83 -85 -38 73 -75 -82 98 35 26 59 -12 72 -71 -64 -79 29 -63 -96 36 -1 -3 14 77 -3 91 36 -80 33 42 -63 97 -13 15 -56 40 -34 -20 -44 -44 -83 26 34 75 -58 -57 68 -46 -75 -64",
                        @"-32 66 -60 8 43 -1 56 -85 12 -86 -100 69 88 -76 41 87 41 83 41 26 -72 53 -79 -29 -41 -49 83 88 31 -69 -37 -52 -63 64 5 35 -28 7 34 -69 -27 -87 -26 19 -38 -75 17 35 -73 -21 -14 79 59 -68 -41 87 -90 -40 15 -44 53 9 -11 70 -51 -69 4 80 22 -75 -29 -94 28 17 53 -7 -2 -15 -44 -51 -29 -57 52 -39 -13 23 -79 -66 -13 96 75 98 -82 41 -54 -55 37 -83 25 1",
                        @"86 -2 -33 97 -40 -89 90 -53 -49 50 -90 -24 -83 75 -2 100 -98 -17 14 -75 36 62 5 -61 63 -25 30 -92 82 49 -26 11 -38 62 -37 76 -50 25 52 0 -93 90 -62 -85 18 8 -6 24 85 36 -54 82 -48 61 40 30 78 -61 99 -25 -4 77 -61 -33 47 16 -48 85 17 48 93 33 -32 -63 95 95 34 -1 17 64 81 -71 -56 -29 30 60 39 57 83 -22 -78 20 5 -31 -89 79 97 25 -37 100",
                        @"-19 34 -35 10 -20 13 -73 39 72 -34 -30 -75 -85 -21 -30 43 -44 96 21 -47 -2 -54 48 -73 -14 21 48 3 63 55 -51 69 23 -15 12 12 -15 46 10 -23 92 97 -46 33 -99 -4 46 17 -94 -10 59 6 -21 16 -74 -91 78 -35 89 -96 80 -26 50 -35 -72 -44 68 7 -76 -53 -6 11 79 55 27 -18 -6 -76 -16 -73 63 19 -35 75 -45 89 35 5 96 60 -77 83 -87 86 43 -51 -83 66 -56 -36",
                        @"72 -42 -41 -49 20 -22 51 -100 -99 -42 -10 90 -32 -29 89 12 43 25 -77 4 73 35 -93 -98 46 -53 -72 -89 -96 -86 78 46 -41 10 -71 2 22 -13 45 -55 -28 -38 96 63 9 17 71 -17 19 -95 3 -78 -84 89 -65 48 -36 -77 65 -70 79 -46 -8 96 -96 65 -6 -47 -76 5 20 -43 -43 -6 93 78 56 -76 -100 27 -100 58 50 51 -47 -24 47 -8 -87 0 -92 64 -6 -3 -86 32 7 60 -100 60",
                        @"-76 47 -89 78 -59 33 60 -2 99 52 -63 -93 -74 28 16 -79 -53 -17 19 48 -17 88 -100 -70 78 24 68 -45 54 14 -52 -34 -36 45 -30 -86 -84 71 -95 -99 -77 -93 69 41 -31 68 77 63 72 15 -51 90 -81 66 -55 -58 -70 86 17 -60 5 -65 91 -37 57 69 25 -68 -30 6 -55 80 77 21 -40 -9 -7 82 9 -82 -77 29 -23 56 84 -17 27 76 85 -93 -68 -21 100 57 -10 -28 -63 -15 81 -6",
                        @"-42 6 87 41 -79 76 66 -45 -25 -49 -2 -19 -26 -75 -7 -66 -71 -75 -34 82 54 -22 73 18 -59 -95 24 88 -67 -22 80 -90 -94 0 -83 -75 -16 81 41 -74 -89 -73 87 74 -59 -44 -14 88 -33 61 -100 41 -20 -11 23 -14 5 -92 -9 2 -13 -46 100 -96 -42 96 -7 33 0 -9 -48 -64 -46 24 14 -95 -49 54 -40 65 -24 1 -16 -5 -35 24 50 -15 -30 76 68 -45 29 8 41 59 -92 85 -91 -52",
                        @"-11 88 63 -7 -83 4 69 96 -93 35 13 23 18 -14 74 -62 10 19 91 53 100 -49 0 52 9 -13 -14 -46 91 -9 78 61 -38 64 -92 42 60 81 -49 14 33 -4 -30 66 -36 -85 -25 -97 92 90 -72 -3 30 -19 52 -36 -27 21 43 24 89 19 -24 51 8 -69 8 -23 86 17 43 75 -71 -8 79 -42 -21 24 99 -55 10 18 3 -15 36 -25 -37 -83 -18 78 58 78 71 -23 -48 -60 5 -32 93 -19",
                        @"86 30 39 34 62 87 56 96 17 40 47 -43 -84 36 63 -78 58 -76 -92 98 -70 54 39 -3 -58 -7 -73 62 51 -36 90 -97 13 -77 -65 72 -21 -42 -43 99 45 -12 46 -25 -81 -100 -61 1 -72 44 9 77 15 -30 8 19 -17 -8 63 -85 -44 -76 76 57 85 -22 -16 11 100 17 -14 67 81 -52 10 58 -64 58 19 79 -95 47 95 -88 -94 12 -17 88 13 51 -8 22 -31 -70 -8 -94 54 42 -62 -52",
                        @"51 63 -67 18 -77 -10 -12 22 76 -94 45 -23 -17 -97 -34 -7 99 27 36 17 61 -33 -10 8 75 -66 31 43 -21 100 7 -14 42 9 -58 85 -42 92 59 -54 25 13 30 17 74 29 8 5 67 -30 34 -28 1 -54 15 -67 49 50 -79 -39 -15 -37 9 -6 -88 -22 -90 -78 -92 73 -47 54 -69 -43 6 36 25 48 -57 8 -70 44 -56 -44 76 -33 53 -38 -38 -69 64 -58 -4 95 68 -23 30 -24 -5 -88",
                        @"-95 49 -91 -63 58 -61 -84 39 -37 -33 50 27 -17 93 -64 -14 -60 48 32 95 85 -43 38 -79 -45 -45 -98 97 -41 99 -74 10 48 -90 38 -84 23 1 12 96 54 -32 35 97 -40 58 13 21 53 39 56 -7 82 82 79 34 -65 32 57 68 57 -64 64 -4 -63 -50 -69 2 10 28 -16 33 14 -57 -67 -81 55 45 64 -82 -5 54 -85 -39 -72 -41 3 45 -65 -94 -37 18 28 10 -4 50 12 14 99 52",
                        @"53 -24 -15 74 -45 -98 75 -56 -88 -45 80 -51 -8 85 -10 -45 -42 -39 -96 87 46 90 26 0 60 -99 -37 -7 56 79 -57 5 -22 87 -37 28 85 14 -66 68 -69 28 -84 -39 -50 84 -39 -95 95 75 -87 9 3 -38 -71 -90 68 -87 -81 34 -92 -71 -24 -41 69 2 -97 -5 -55 92 79 87 -16 64 95 -21 -55 -26 61 -75 -78 -49 -20 63 -92 78 -29 -69 12 19 -87 42 -93 84 53 79 -24 10 -10 -37",
                        @"-24 50 99 -38 8 -74 -42 13 -22 -70 -57 -67 -83 -94 -75 -11 40 2 -9 25 -16 65 31 -64 -49 -36 83 2 71 -7 91 18 -11 -78 69 -57 -41 -20 -35 -46 21 72 -54 -47 -28 3 46 -14 78 27 28 -69 -2 -15 83 24 16 -16 45 93 38 98 -27 61 -71 59 59 -75 6 -78 -18 -33 16 43 96 33 44 -53 15 -63 99 -37 3 -31 -40 -66 91 6 48 24 53 91 11 78 -75 -15 -54 -92 -93 -51",
                        @"39 59 -7 25 70 -3 -2 8 75 -100 6 -58 -69 67 -90 90 48 82 -74 27 -66 -62 1 28 61 99 -7 65 -37 70 0 83 -41 -32 -94 96 65 22 -98 -28 7 19 95 -66 -1 -72 18 -48 86 95 88 37 40 34 13 -55 -74 -33 6 25 32 -9 14 86 -57 -56 -12 -87 -27 59 -48 -58 34 -71 -13 -91 45 -24 -90 46 -28 62 29 -94 -87 -15 44 85 5 -52 100 63 -83 -71 -43 -92 -55 -99 61 -29",
                        @"81 -67 -75 8 71 72 15 99 -80 92 77 -72 27 -6 13 88 37 25 -8 -64 53 94 -72 10 -86 -54 -62 -89 -23 60 -94 48 93 -23 -46 75 72 70 -60 4 24 -90 16 -64 91 42 58 -27 -26 51 54 -68 -89 22 -21 35 22 63 -60 13 -83 -32 43 70 69 84 -22 12 28 49 -3 88 45 -17 57 3 -51 81 88 -100 -54 -83 -51 41 -79 -1 -27 100 -33 -96 -15 100 -59 44 -4 -90 -20 51 24 -69",
                        @"77 -70 80 -56 -82 38 -8 -42 -19 -40 -87 7 45 -49 79 67 38 -27 1 3 97 12 45 97 57 71 40 -93 61 -1 -56 71 1 -44 -71 -32 -30 50 -79 19 34 55 -50 -68 44 2 92 -28 -55 73 46 -55 -70 89 -38 85 -89 -57 -37 -75 41 29 -75 -90 33 19 -57 -33 -16 76 -37 4 5 32 39 1 33 34 -29 79 -97 67 86 -88 -36 -42 -39 -12 -79 -46 24 22 -48 -64 11 16 71 45 -91 -13",
                        @"-75 -75 -53 -74 72 49 -88 9 -72 -36 73 -35 56 -68 62 81 -46 -76 70 77 56 -29 -10 -56 -34 30 -51 61 -55 90 89 -41 -84 -97 65 -71 5 -68 -58 -21 91 -54 -41 82 -58 89 -77 78 -86 -17 30 86 -43 -67 -28 27 -25 -96 -93 52 -21 70 15 78 43 -48 46 -23 5 98 -51 89 96 -97 -23 38 -13 -82 -26 -66 50 93 -49 -54 88 74 35 44 -72 72 42 41 -61 41 97 -98 65 53 -29 -80",
                        @"-2 31 94 98 15 88 -34 16 -51 -97 -74 38 -54 -4 -6 5 -15 51 -9 82 43 58 -2 -72 76 -68 65 19 -32 -15 31 39 -87 -76 64 -15 30 -15 -38 53 93 85 -75 -19 70 40 -65 58 -54 -81 -55 67 50 -30 -91 64 69 -42 37 67 48 61 87 -2 31 45 -24 1 -29 1 -13 58 62 -57 91 -16 -97 -23 100 -12 4 -15 38 -66 44 -61 31 26 45 -81 -87 69 14 44 -82 2 16 19 -48 -22",
                        @"45 -10 14 59 73 98 -19 37 31 79 -47 2 65 -94 -21 12 -72 -80 22 97 -70 -49 -79 -52 43 -36 17 60 70 97 -17 91 8 17 96 32 69 -10 -53 -100 74 23 -61 -60 99 99 -10 -59 -10 49 -37 60 -94 -62 75 -85 0 -86 -58 -70 26 -88 -45 -37 -36 85 27 77 55 82 -6 -74 16 34 -7 26 -65 66 -73 1 11 47 -58 55 -49 33 -49 -31 -74 -97 -32 -94 -94 -61 20 82 -87 7 -89 -70",
                        @"78 40 6 68 -22 -98 91 44 -87 72 -49 -69 6 97 88 51 -85 55 -73 24 17 32 -12 6 -85 -51 -44 -30 44 -91 3 -80 7 -7 -39 -13 39 0 -14 -56 -20 75 32 69 -38 -4 73 83 12 -25 -44 -5 82 -81 70 -92 2 96 13 -70 -40 -73 83 -96 36 -65 -8 -59 49 34 -30 -21 -21 69 -95 10 12 5 80 -57 -97 5 -75 23 20 69 84 -17 8 -17 -47 38 -75 8 -26 51 -67 -49 -69 -88",
                        @"28 -38 84 43 -83 55 -25 -64 -41 12 21 17 -69 22 -45 -63 -7 43 -16 -85 -54 -17 -99 -83 1 -9 -54 -16 -12 -79 68 0 33 25 49 45 -44 -91 -42 -35 -48 33 -45 45 -79 44 -78 -47 -37 77 -34 -53 -2 -74 -85 -38 -37 32 -72 -14 28 54 -48 95 -64 53 38 -16 -62 -36 -44 27 81 15 81 -60 64 19 -61 98 68 -17 57 84 81 -49 45 30 -5 -66 96 56 -19 51 21 50 -95 9 -19 -93",
                        @"-96 -61 -21 -78 -100 -25 49 -89 -73 -86 -41 25 69 56 68 84 -76 -10 -91 -36 -52 53 53 -1 40 -7 98 88 -22 21 -12 2 -66 50 44 22 86 -85 -67 40 25 37 1 -56 29 -42 -52 34 10 7 27 -100 -63 -46 77 -49 -18 -26 92 52 48 -13 59 90 -1 -25 -91 57 -91 82 -28 20 40 -2 -14 -10 83 18 96 83 -80 -32 -60 52 -6 28 38 -52 -84 -99 -1 -40 92 61 -57 89 85 -4 53 13",
                        @"17 -31 46 83 -2 -71 35 16 -68 -34 27 -48 -61 46 45 -34 -76 -44 -96 30 -3 81 51 -85 56 23 -84 14 -67 -82 -85 -69 -75 78 14 -18 -100 -17 72 34 53 32 66 50 -74 41 -4 -21 -48 -94 -83 -96 -87 -91 19 -14 20 64 -34 -11 -4 43 73 -70 98 44 -21 -17 53 -53 -97 93 67 -42 70 -78 -80 -69 68 -29 -5 36 -72 -34 -40 12 -97 37 90 0 48 -90 89 64 16 -75 -73 -63 50 -73",
                        @"77 15 23 -70 6 -84 65 -61 48 -21 -3 -83 -61 65 39 54 -38 97 -4 33 43 -10 65 -67 73 26 -63 -75 -4 -21 64 0 -56 -33 81 -85 50 73 1 -54 8 50 31 94 68 -38 37 -34 -48 -63 22 -37 94 69 -21 -18 -99 -23 61 -19 61 73 -36 89 -16 -10 3 -10 -35 75 2 52 -62 67 48 68 -59 8 62 70 53 -100 -68 -24 18 65 66 -95 22 82 -28 -70 -82 95 28 -35 -13 -92 -90 98",
                        @"-34 -89 -62 -45 -47 10 -19 65 87 -36 -84 -49 0 -88 -10 50 -4 -85 -49 85 -20 -28 -40 -7 -19 -95 30 -75 -60 9 -12 -5 -75 89 -14 -38 18 61 -25 10 69 -95 24 43 -95 -45 -35 24 -79 53 -19 8 -8 -5 15 -32 72 -40 29 37 -26 32 99 19 89 -69 62 -14 -36 -76 -85 -59 -48 25 -83 -7 -6 -73 -96 47 -62 18 -70 98 68 90 38 -55 90 -6 96 14 72 27 3 -48 80 99 -84 -59",
                        @"43 -56 -42 -35 -23 -14 -39 -44 -31 73 -45 34 49 -84 -93 -31 -14 -94 -72 -36 1 -36 -23 20 47 29 -62 29 -10 70 71 -74 -63 -91 -43 -66 -83 -4 34 -91 32 28 54 84 33 55 78 49 -87 36 18 76 100 9 70 -99 75 -31 -82 75 -14 -52 -26 -27 -93 -96 20 18 -25 -29 76 -14 40 48 -2 -35 -18 4 97 89 -16 85 -84 -12 -56 -36 100 -63 -37 20 37 -71 -96 -23 -35 -51 -1 74 -53 45",
                        @"-17 -92 -39 -83 -46 -88 94 79 58 -30 63 86 -33 -80 41 58 -20 -97 -99 86 -29 79 51 42 -80 82 -47 -96 28 14 69 -29 6 38 -96 13 -27 76 69 58 -25 -96 74 -39 -67 -71 91 30 -16 -35 -60 -2 36 50 -70 -2 -98 56 -41 -77 20 15 -86 58 48 4 61 -3 -93 -67 17 23 0 89 -62 -6 83 55 -16 69 93 -89 72 48 -92 -100 8 12 78 48 33 -76 -28 6 -12 -16 97 -50 -50 -59",
                        @"85 -25 16 -18 -57 92 -48 96 -30 18 -56 -57 8 -98 13 -69 -18 11 7 -87 84 69 -7 26 29 23 30 81 53 32 -17 88 -45 9 -11 -64 -35 40 5 11 72 25 -2 -91 -8 12 77 18 29 -41 -7 16 77 -21 -82 73 57 -5 11 17 -7 -80 50 -33 4 45 63 96 67 -40 -6 -38 -32 28 -66 -13 -21 -59 64 17 86 -4 -1 96 41 70 65 -5 -94 -98 -72 8 -89 -95 20 100 -49 84 0 -84",
                        @"-99 39 14 60 -98 -98 18 -3 32 -14 -11 -58 91 50 51 7 -58 16 13 71 -85 -86 -55 -29 26 30 -25 49 93 -87 24 24 16 -47 68 -37 39 -46 2 76 -11 -83 39 55 80 -10 -37 -68 31 -23 -41 -7 -66 7 51 98 54 90 72 -3 96 -79 -82 -80 -27 -72 -59 -82 62 14 24 -40 78 -94 -41 5 -96 -88 5 -46 9 4 91 74 23 -12 47 -56 -69 40 -59 26 -12 12 37 89 77 -54 14 -67",
                        @"4 -34 85 -19 -6 -83 80 83 84 37 -61 -79 71 26 -44 100 -6 22 -62 77 -73 83 -72 -19 -30 -44 42 36 96 93 65 -30 -52 -27 -20 9 12 84 -2 -13 -62 65 54 91 -96 39 -49 73 56 32 -79 -36 -14 0 -89 -47 76 -29 97 -19 -14 -19 -87 -67 -23 -66 6 -26 17 -51 5 25 3 50 -11 -17 -39 42 66 97 -39 73 40 -84 7 -28 92 -93 17 79 0 19 41 75 10 38 61 29 92 15",
                        @"-42 -27 11 70 -84 6 34 51 -9 84 31 -3 -35 -9 -67 90 -10 -17 -60 87 -48 -33 88 23 -71 46 78 79 90 1 -99 43 38 -53 -83 18 15 88 -8 -58 -99 -26 11 34 -95 -79 50 -73 -49 -52 -4 -55 19 -55 -11 34 -2 -19 3 -93 -60 4 -29 36 -1 51 -60 -71 -24 27 20 -86 -26 -22 56 19 7 -35 32 36 87 22 93 98 -54 20 58 -53 -33 -9 16 -11 -77 9 74 -14 27 27 -85 -9",
                        @"34 12 8 -31 -29 -96 -39 56 26 -15 -15 -33 92 -83 -82 -73 -83 -26 81 -35 89 -8 33 63 57 -23 -29 -80 55 -1 -6 -21 -89 -75 62 -80 -19 10 -31 33 -99 -19 93 69 78 -74 68 -22 53 -98 -23 20 -98 -27 -31 67 -52 86 -37 -95 -51 -21 37 11 41 -6 -46 29 -78 27 13 44 41 -6 62 77 -10 56 50 -75 43 6 20 8 23 -25 19 80 -41 -66 51 8 65 42 -36 32 -63 -85 57 26",
                        @"99 41 -27 15 -47 48 74 -41 -62 -4 11 -31 -50 10 34 -60 -30 54 44 -84 -18 -22 42 -49 -21 44 -76 25 44 81 -91 5 34 -63 25 13 20 -83 -89 -97 40 69 -43 38 28 14 -49 -81 46 3 -62 12 26 60 -26 -68 -60 -61 -64 5 -51 -4 -57 49 32 -93 35 -39 -17 2 -36 42 -87 2 -36 -72 2 51 -33 63 -17 0 -50 -49 -12 -55 11 -98 -51 22 -1 -13 -49 98 53 -26 -85 87 -13 74",
                        @"61 -92 40 -56 33 86 86 -62 -22 -55 60 -45 -4 85 82 31 68 13 -51 94 -64 0 -24 -89 47 -29 14 5 -75 38 27 14 -96 -94 -50 -80 89 -49 96 -40 47 64 -44 -19 -57 61 -87 50 69 -59 -33 78 -28 72 31 -42 -6 0 -3 33 -48 -12 -88 31 5 -100 55 71 59 81 -13 12 8 -98 -96 61 29 33 14 61 -94 36 -8 -81 -28 43 -49 98 -75 -22 30 93 -61 -52 -60 -1 -99 85 12 45",
                        @"-16 9 -38 92 95 81 -54 54 -93 67 58 8 18 -69 39 -91 17 -100 -83 99 -79 56 9 27 90 78 -99 -52 -60 -17 25 9 99 35 -61 38 -2 -86 77 -91 -29 85 -49 -2 36 -33 77 -14 30 -72 56 47 47 11 -77 -64 -70 53 23 -60 -91 -87 -58 33 -51 7 28 97 56 59 86 -72 32 74 -50 -59 39 7 -77 99 -41 -1 -10 22 60 -76 52 -4 -14 41 51 -30 79 10 57 46 87 21 -3 -46",
                        @"-85 -5 -40 79 -90 -34 12 39 0 75 -56 -10 -80 29 -82 18 -8 77 -23 -28 -80 25 44 -52 24 -73 -22 85 6 43 37 -98 96 79 -58 88 -48 96 72 -42 -41 81 23 18 41 74 9 -12 -82 -81 67 -5 -89 -41 -84 35 -69 -69 5 73 65 48 -35 -55 22 7 1 -26 13 52 -18 -7 8 57 -57 -8 99 -69 -47 -79 88 -81 -41 14 44 -54 -41 -69 -98 -52 6 16 -4 98 -84 -96 -34 37 -11 53",
                        @"65 -41 38 -81 -20 -13 -15 -72 78 20 -43 90 41 45 27 30 3 100 47 94 -77 75 -64 100 -9 -28 -12 99 -89 49 50 14 43 -52 51 -24 -88 -45 63 39 24 77 95 16 45 36 76 1 -95 37 73 57 -18 -12 -40 -14 42 -36 58 98 3 91 -46 -19 -61 -11 30 62 27 -34 19 37 -60 -44 100 -65 54 2 9 21 -22 -46 37 -57 54 80 19 45 13 44 -78 65 86 98 16 -37 89 13 29 46",
                        @"-30 -70 17 96 51 56 12 48 -55 -71 -83 -35 78 7 -25 -37 -66 27 5 38 -54 -41 52 -19 86 -65 1 52 -91 86 -34 -81 -84 -52 -7 38 35 -62 -89 -25 -97 39 -17 10 6 70 -93 -43 -34 -60 -56 -11 -50 -76 52 -49 -14 -67 -78 -97 -58 -80 24 -51 76 -5 25 27 -86 -35 58 45 -48 68 -32 25 0 -35 86 28 56 100 -67 -65 -31 -4 -55 -74 28 27 4 35 22 55 -9 -63 97 97 36 -80",
                        @"63 68 53 -85 31 -74 58 10 -71 66 66 -6 -3 -50 -28 -62 -100 -65 0 63 -95 -85 -66 -22 -80 -100 -51 11 30 24 50 -22 -88 6 -84 -97 94 20 -89 -39 64 -20 34 9 -95 -65 -34 -38 23 -75 85 -73 22 -26 62 70 96 18 68 39 32 -71 -60 6 16 52 91 -65 47 32 -55 36 61 -2 48 53 -35 -44 51 18 -12 97 -31 48 96 31 -71 14 8 -10 -28 -31 -78 -75 -39 45 30 -35 -59 -81"];
    XCTAssertTrue([@(462) isEqual: [self.diagonal diagonalDifference:array]]);
}
@end
