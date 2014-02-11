Given /^regional format is set to (.*)$/ do |aLocale|
    set_locale(aLocale)
    start_test_server_in_background
end

Given /^First view is opened$/ do
    #rotate(:left) if ipad?
    view_with_mark_exists('firstView')
    sleep 2
end

When /^I type text (.*) to text field$/ do |aText|
    tap('textField')
    wait_for_keyboard
    keyboard_enter_text(aText)
    sleep 2
end

When /^I clear text field$/ do
    tap('textField')
    wait_for_keyboard

    txt = query("textField marked:'textField'", :text).first
    txt.length.times do
        keyboard_enter_char('Delete')
    end

    sleep 2
end
