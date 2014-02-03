json.array!(@browsers) do |browser|
  json.extract! browser, :id, :brname
  json.url browser_url(browser, format: :json)
end
