# Created by :  Alireza Teimoori
# Created on : 15 Oct 2017
# Created for : ICS3UR
# Daily Assignment : Unit_3-05
# This program calculates the factorial for user_input 

import ui


def calculate_touch_up_inside(sender):
    # function for button
    
    # input
    user_input = int(view['user_input_textbox'].text)
    
    # process
    if user_input >= 0:
        answer = 1
        for counter in range(1 , user_input +1) :
            answer = answer * counter
            
        # output
        view['answer_label'].text="The answer is: " + str(answer)
    else:
        view['answer_label'].text="enter a number greater than or equal to zero"
        
view = ui.load_view()
view.present('sheet')
