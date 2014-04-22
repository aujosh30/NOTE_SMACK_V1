json.array!(@note_sets) do |note_set|
  json.extract! note_set, :id, :title, :description
  json.url note_set_url(note_set, format: :json)
end
