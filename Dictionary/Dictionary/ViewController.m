//
//  ViewController.m
//  Dictionary
//
//  Created by User on 4/17/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//     Create NSDictionary using literal declaration
    NSDictionary *personData = @{@"one":[NSNumber numberWithInt:1],@"ten":[NSNumber numberWithInt:10],@"seven":[NSNumber numberWithInt:7], @"zero":[NSNumber numberWithInt:0], @"eighty":[NSNumber numberWithInt:80], @"fifty":[NSNumber numberWithInt:50]};
    
    //Make it mutable
    NSDictionary *mutableCopyOfPersonData = [personData mutableCopyWithZone:nil];
    
    //Add several new entries
    [mutableCopyOfPersonData setValue:[NSNumber numberWithInt:10] forKey:@"ten"];
    [mutableCopyOfPersonData setValue:[NSNumber numberWithInt:4] forKey:@"four"];
    
    
    //Sort it in an ascending and descending order.
    NSArray *keysSortedByValues = [mutableCopyOfPersonData keysSortedByValueUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        //in ascending order
        return ([obj1 compare:obj2]);//return ([obj2 compare:obj1]); - return array sorted by keys(based on its values) in descending order
    }];
    for(id key in keysSortedByValues) {
        NSLog(@"the %@ = %@", key, [mutableCopyOfPersonData objectForKey:key]);
    }
    
    
    //check whether a required value is contained in the dictionary
    if([mutableCopyOfPersonData objectForKey:@"ten"]) {
        NSLog(@"A required value (%@) is contained in the dictionary",  [mutableCopyOfPersonData objectForKey:@"ten"]);
        } else {
            NSLog(@"does not contain a Value!!!");
        }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
