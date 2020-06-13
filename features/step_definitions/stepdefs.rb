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