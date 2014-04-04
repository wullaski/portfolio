# config/initializers/time_formats.rb
Date::DATE_FORMATS[:month_year] = "%B %Y"
Date::DATE_FORMATS[:short_ordinal] = lambda { |time| time.strftime("%B #{time.day.ordinalize}") }