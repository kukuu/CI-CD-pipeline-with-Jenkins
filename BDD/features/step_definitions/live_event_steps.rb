Given /^there is a live event "([^"]*)"$/ do |headline|
  @channel_id = 'a-live-event'

  @event = CandyEvent.new(@channel_id)
  @event.channelId = @channel_id
  @event.headline = headline
  save @event
end

Given /^it has (\d+) Key Points$/ do |arg1|
  @event.keyPoints = []
  (1..4).each do
     @event.keyPoints << random_sentence
  end
  save @event
end

Given /^there is (\d+) live story$/ do |number_of_stories|
  @top_stories = CandyIndex.new "top_stories"
  1.upto(number_of_stories.to_i) do
    @top_stories.add_top_stories_live_event('groupTitle', 'headline', 'summary')
  end
  save @top_stories
end

When /^I visit the live events page$/ do
  visit "#{host}/news/#{@event.cps_id}"
end

When /^I view the key points$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see title "([^"]*)"$/ do |title|
  page.should have_content(title)
end

Then /^I should see (\d+) key points$/ do |arg1|
  @event.keyPoints.each do |key_point|
    page.should have_content(key_point)
  end
end

Then /^there should be one article with a live icon$/ do
  page.should have_selector('.live')
end