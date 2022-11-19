2.times do
   clint = Clint.create!(clint_id:Faker::IDNumber.valid , full_name:Faker::Name.name ,birth_date:Faker::Date.birthday,gender:Faker::Gender.binary_type,clint_email:Faker::Internet.email)
   phone = clint.phones.create(model:Faker::Device.model_name,serial:Faker::Device.serial,color:Faker::Color.color_name,phonenumber:Faker::PhoneNumber.phone_number)
end

