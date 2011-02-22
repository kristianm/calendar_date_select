require 'calendar_date_select'
require 'rails'

module CalendarDateSelect
  class Railtie < Rails::Railtie
    initializer "calendar_date_select.action_view" do |app|
      ActiveSupport.on_load :action_view do
        require 'calendar_date_select/includes_helper'
        require 'calendar_date_select/form_helpers'
        include CalendarDateSelect::IncludesHelper
        include CalendarDateSelect::FormHelpers
      end
      CalendarDateSelect.install_files
    end
  end
end
