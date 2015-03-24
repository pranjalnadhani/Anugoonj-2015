json.array!(@colleges) do |college|
  json.extract! college, :id, :name, :group_name, :contact_no, :confirmed, :event
  json.url college_url(college, format: :json)
end
