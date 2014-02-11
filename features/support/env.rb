require 'calabash-cucumber/cucumber'

def set_locale(aLocale)
    `killall 'iPhone Simulator'`
    `calabash-ios sim locale en '#{aLocale}'`
end
