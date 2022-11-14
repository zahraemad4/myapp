json.extract! @clints 
if params.fetch(:phones, false)
 json.phones clint.phones do |phone|
    json.partial!'phone', phone: phone
 end
end
