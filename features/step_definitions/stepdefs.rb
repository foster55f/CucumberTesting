module RentalAgeCheck
    def is_old_enough_to_rent_car(age)
        if age >= 25
            "Here's the keys!"
        else
            "Nope, you have #{25-age} more years to go but come back then!"    
        end  
    end
end
World RentalAgeCheck

Given("age is {int}") do |given_age|
    @age = given_age
end
    
When("I ask if I'm old enough to rent a car") do
    @actual_answer = is_old_enough_to_rent_car(@age)
end
    
Then("I should be told {string}") do |expected_answer|
    expect(@actual_answer).to eq(expected_answer)
end



module OpenOrNotCheck
    def are_we_open_that_day(day)
        if day == "Sunday"
            "We are closed on Sundays!"
        else
            "We look forward to seeing you then"
        end  
    end
end
World OpenOrNotCheck


Given("plan to return car on {string}") do |given_day|
    @day = given_day
end
    
When('I say I plan to return car on this day') do
    @return_plan_reply = are_we_open_that_day(@day)
  end
    
  Then('I expect to be told {string}') do |return_reply_expected|
    expect(@return_plan_reply).to eq(return_reply_expected)
  end