class Admin::RemindersController < Admin::AdminController
  def index
    @reminders = current_user.reminders
  end
end