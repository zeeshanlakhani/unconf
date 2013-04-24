// Program to work with fractions

#import "ClassObjMethods.h"

//----@implementation section----

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
	if (denominator != 0)
		return (double) numerator/denominator;
	else
		return NAN;
}

// Multiple arguments to methods
-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

-(Fraction *) add: (Fraction *) f
{
	// The method allocates and initializes a new Fraction object called result
	// to store the result of the addition.

	// a/b + c/d = ((a*d) + (b*c)) / (b * d)

	// result will store the result of the addition
	Fraction *result = [[Fraction alloc] init];

	result.numerator = numerator * f.denominator + denominator * f.numerator;
	result.denominator = denominator * f.denominator;

	// [aFraction add: myFraction];
	// then self will refer to aFraction when the add: method executes,
	// and so that is the fraction that will be reduced.
	// [self reduce];

	[result reduce];

	return result;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int temp;

	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}

	numerator /= u;
	denominator /= u;
}
@end

///----program section----

int main(int argc, char *argv[])
{
	@autoreleasepool {
		Fraction *myFraction;

		// Create an instance of a Fraction

		/*
		 * Can combine the two below into => myFraction = [[Fraction alloc] init];
		 * Inner method eval'ed first
		 * or, moreso => Fraction *myFraction = [[Fraction alloc] init];
		 * and the combo => Fraction *myFraction = [Fraction new];
		 */
		myFraction = [Fraction alloc];
		myFraction = [myFraction init];

		// [myFraction setNumerator: 1];
		// [myFraction setDenominator: 2];
		// can use dot-notation for instance properties
		myFraction.numerator = 1;
		myFraction.denominator = 2;

		// Display the fraction using the print method
		NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);

		// Cooler Stuff
		Fraction *aFraction = [[Fraction alloc] init];
		Fraction *bFraction = [[Fraction alloc] init];

		Fraction *resultFraction;

		[aFraction setTo: 1 over: 4];
		[bFraction setTo: 1 over: 2];

		[aFraction print];
		NSLog (@"+");
		[bFraction print];
		NSLog (@"=");

		resultFraction = [aFraction add: bFraction];
		[resultFraction print];
	}

    return 0;
}
