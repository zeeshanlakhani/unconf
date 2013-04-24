//
// ClassObjMethods.h

#import <Foundation/Foundation.h>

//----@interface section ----

@interface Fraction: NSObject

@property int numerator, denominator;
-(void)   print;
-(void)   setTo: (int) n over: (int) d;
-(Fraction *)   add: (Fraction *) f;
-(void)   reduce;
-(double) convertToNum;
@end
