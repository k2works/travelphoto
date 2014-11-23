// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Travel.m instead.

#import "_Travel.h"

const struct TravelAttributes TravelAttributes = {
	.enddate = @"enddate",
	.id = @"id",
	.identifier = @"identifier",
	.photo_url = @"photo_url",
	.startdate = @"startdate",
	.title = @"title",
	.user_id = @"user_id",
};

@implementation TravelID
@end

@implementation _Travel

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Travel" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Travel";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Travel" inManagedObjectContext:moc_];
}

- (TravelID*)objectID {
	return (TravelID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"user_idValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"user_id"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic enddate;

@dynamic id;

- (int64_t)idValue {
	NSNumber *result = [self id];
	return [result longLongValue];
}

- (void)setIdValue:(int64_t)value_ {
	[self setId:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveIdValue {
	NSNumber *result = [self primitiveId];
	return [result longLongValue];
}

- (void)setPrimitiveIdValue:(int64_t)value_ {
	[self setPrimitiveId:[NSNumber numberWithLongLong:value_]];
}

@dynamic identifier;

@dynamic photo_url;

@dynamic startdate;

@dynamic title;

@dynamic user_id;

- (int64_t)user_idValue {
	NSNumber *result = [self user_id];
	return [result longLongValue];
}

- (void)setUser_idValue:(int64_t)value_ {
	[self setUser_id:[NSNumber numberWithLongLong:value_]];
}

- (int64_t)primitiveUser_idValue {
	NSNumber *result = [self primitiveUser_id];
	return [result longLongValue];
}

- (void)setPrimitiveUser_idValue:(int64_t)value_ {
	[self setPrimitiveUser_id:[NSNumber numberWithLongLong:value_]];
}

@end

