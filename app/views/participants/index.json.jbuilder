json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :email, :contact_no, :college_id
  json.url participant_url(participant, format: :json)
end
