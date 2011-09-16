# -*- coding: UTF-8 -*-

Given /^ユーザは "([^"]*)" としてログインしている$/ do |arg1|
  # まだ認証機構を実装しないため、空のままにしておく。
end

Given /^システムの "([^"]*)" が表示されている$/ do |page_name|
  case page_name
  when "スタートページ"
    visit '/'
  else
    flunk
  end
end

Given /^システムに "([^"]*)" が登録されている$/ do |room_name|
  Tddbc::Room.create({name: room_name})
end
