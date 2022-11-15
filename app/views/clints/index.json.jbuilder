json.extract! @clints
if params.fetch(:phones, false).to_bool
 json.phones clint.phones do |phone|
  json.partial! "phones", phone: phone
 end
end
