2.times do
    Clint.create(clint_id:Faker::Number.number(digits: 2),full_name:Faker::Name.name ,birth_date:Faker::Date.birthday,gender:Faker::Gender.binary_type,clint_email:Faker::Internet.email)
end
    5.times do 
    Phone.create(model:Faker::Device.model_name,serial:Faker::Device.serial,color:Faker::Color.color_name,phonenumber:Faker::PhoneNumber.phone_number)
end

