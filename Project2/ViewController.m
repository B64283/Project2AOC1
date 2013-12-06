//
//  ViewController.m
//  Project2
//
//  Created by Matthew Darke on 12/5/13.
//  Copyright (c) 2013 Matthew Darke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
   }


- (void)viewDidUnload
{
 [super viewDidUnload];
}



-(void)viewWillAppear:(BOOL)animated
{
    
    //20.0f=y position, 20.0f=x position 200.0f=width 20.0f=height
    lable1 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 720.0f, 40.0f)];
    if (lable1 !=nil)
    {
        // use lable.   &rightclick to see other properties
        lable1.backgroundColor = [UIColor blackColor];
        lable1.text = @"1984";
        lable1.textColor = [UIColor yellowColor];
        lable1.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:lable1];
    
    //20.0f=y position, 20.0f=x position 200.0f=width 20.0f=height
    lable2 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 80.0f, 200.0f, 40.0f)];
    if (lable2 !=nil)
    {
        lable2.backgroundColor = [UIColor blueColor];
        lable2.textColor = [UIColor grayColor];
        lable2.textAlignment = NSTextAlignmentRight;
    }
    
    
    
    
    [self.view addSubview:lable2];
                  //20.0f=y position, 20.0f=x position 200.0f=width 20.0f=height
    lable3 = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 80.0f, 520.0f, 40.0f)];
    if (lable3 !=nil)
    {   //style ui
        lable3.backgroundColor = [UIColor grayColor];
        lable3.textColor = [UIColor blueColor];
        lable3.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:lable3];
    
    
    lable4 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 140.0f, 200.0f, 40.0f)];
    if (lable4 !=nil)
    {
        lable4.backgroundColor = [UIColor grayColor];
        lable4.textColor = [UIColor blueColor];
        lable4.textAlignment = NSTextAlignmentRight;
    }
    
    
    
    
    [self.view addSubview:lable4];
    
    
    lable5 = [[UILabel alloc] initWithFrame:CGRectMake(220.0f, 140.0f, 520.0f, 40.0f)];
    if (lable5 !=nil)
    {
        lable5.backgroundColor = [UIColor greenColor];
        lable5.textColor = [UIColor blueColor];
        lable5.textAlignment = NSTextAlignmentLeft;
    }
    
    
    
    
    [self.view addSubview:lable5];
    
    lable6 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 200.0f, 200.0f, 40.0f)];
    if (lable6 !=nil)
    {
        lable6.backgroundColor = [UIColor yellowColor];
        lable6.textColor = [UIColor blackColor];
        lable6.textAlignment = NSTextAlignmentLeft;
    }
    
    
    
    
    [self.view addSubview:lable6];
    

    lable7 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 260.0f, 720.0f, 240.0f)];
    if (lable7 !=nil)
    {
        lable7.backgroundColor = [UIColor magentaColor];
        lable7.textColor = [UIColor whiteColor];
        lable7.textAlignment = NSTextAlignmentCenter;
        lable7.numberOfLines = 12;
    }
    
    
    
    
    [self.view addSubview:lable7];
    
       
    lable8 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 520.0f, 200.0f, 40.0f)];
    if (lable8 !=nil)
    {
        lable8.backgroundColor = [UIColor whiteColor];
        lable8.textColor = [UIColor orangeColor];
        lable8.textAlignment = NSTextAlignmentLeft;
        lable8.numberOfLines = 6;
    }
    
    
    
    
    [self.view addSubview:lable8];
    
    
    lable9 = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 580.0f, 720.0f, 160.0f)];
    if (lable9 !=nil)
    {
        lable9.backgroundColor = [UIColor greenColor];
        lable9.textColor = [UIColor blackColor];
        lable9.textAlignment = NSTextAlignmentLeft;
        lable9.numberOfLines = 0;
    }
    
    
    
    
    [self.view addSubview:lable9];

    
    
    [super viewWillAppear:animated];
}


//after viewappear add lables
-(void)viewDidAppear:(BOOL)animated
{
   
    lable2.text = @"Author:";
    lable3.text = @"George Orwell";
    lable4.text = @"Published:";
    lable5.text = @"July 1950:";
    lable6.text = @"Summary:";
    
    lable7.text = @" Nineteen Eighty Four is a novel written by George Orwell in 1948, and published in 1949.  The story takes place in Airstrip One, which was formerly known as Great Britain.  The book describes how the government has used surveillance and mind control, to watch over society.  They believe that this has helped to improve American citizens and their lives. A political system named English Socialism persecutes all individualism and independent thinking. They believe this to be a thoughtcrime.  The government or as the author describes, Big Brother, justify their oppressive rule by stating that all this is done for the greater good.";
    
    lable8.text = @"List of items";
    
    NSArray *BookArray = [[NSArray alloc]initWithObjects:@"Telescreens", @"War", @"BIG BROTHER", @"Newspeak", @"ThoughtCrimes", nil];
    
    NSMutableString *lableText = [NSMutableString string];
    int i = 0;
    for (NSString *items in BookArray)
        [lableText appendFormat:@"%n %@, ",i++, items];
    lable9.text = lableText;
            
    
    [super viewDidAppear:animated];
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}


-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
