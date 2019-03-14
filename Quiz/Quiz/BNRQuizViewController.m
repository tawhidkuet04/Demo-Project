//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Tawhid Joarder on 3/6/19.
//  Copyright © 2019 Tawhid Joarder. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()
@property (nonatomic) int currentQuestionIndex;
@property (nonatomic) int flag;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@end

@implementation BNRQuizViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                          bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Create two arrays filled with questions and answers
        // and make the pointers point to them
        
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7?",
                           @"What is the capital of Vermont?",
                           @"What is the name of the CalTech seismologist who invented the scale used to measure the magnitude of earthquakes?"
                           ];
        
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier",
                         @"Charles Richter"];
    }
    
    // Return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // Step to the next question
    self.currentQuestionIndex++;
    
    // Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        
        // Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the string in the question label
    self.questionLabel.text = question;
    self.flag = 1;
    // Reset the answer label
    self.answerLabel.text = @"???";

}
- (IBAction)showAnswer:(id)sender
{
    // What is the answer to the current question?
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    // Display it in the answer label
    if (self.flag==1)
    self.answerLabel.text = answer;
    
}
@end
