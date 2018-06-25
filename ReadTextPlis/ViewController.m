//
//  ViewController.m
//  ReadTextPlis
//
//  Created by miguel mexicano on 25/06/18.
//  Copyright © 2018 miguel mexicano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *mutableArray =[[NSMutableArray alloc] init];
    
    NSDictionary *mainDictionary = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"animals" ofType:@"plist"]];
    
    
    
    NSLog(@"%@",mainDictionary);
    
    
    //---enumerate through the dictionary objects
    NSEnumerator *enumerator = [mainDictionary objectEnumerator];
    id value;
    
    while ((value = [enumerator nextObject])) {
        NSLog(@"%@",value);
        
        if ([[value valueForKey:@"minAge"] isEqualToNumber:[NSNumber numberWithInt:3]])
        {
            
            [mutableArray addObject:[value valueForKey:@"name"]];
        }
        
        
    }
    
    NSLog(@"%@",mutableArray);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
