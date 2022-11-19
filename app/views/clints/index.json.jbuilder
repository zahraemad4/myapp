json.extract! clint, :clint_id , :full_name ,:birth_date , :gender , :clint_email
json.clint do
    json.id clint.id
    json.full_name clint.full_name
    json.birth_date clint.birth_date
    json.gender clint.gender
    json.clint_email clint.clint_email
    json.created_at clint.created_at
    json.phone do
        json.id phone.id
        json.model phone.model
        json.serial phone.serial
        json.color phone.color
        json.phonenumber phone.phonenumber
    end
end
