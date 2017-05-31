Given(/^I access the link to fill form$/) do
  sleep($wait_time)
  transporter.go_to_url("goo.gl/forms/4Hjs4N9fpki3UODZ2")
end

When(/^I fill contact Information form with the following info$/) do |data_table|
  @hash_object = {}
  data_table.hashes.each do |row_contact_info|
    contact_info = ContactEntity.new(row_contact_info)
    contact_info.create_object(row_contact_info)
    @hash_object[row_contact_info['Obj Reference']] = contact_info
  end
end

Then(/^I should see the following info in the response section for %\{(.*?)\}$/) do |response_info|
  contact_response = @hash_object[response_info]
  current_result =
  contact_response.instance_variables.each do |attribute|
    expect().eql
  end
end