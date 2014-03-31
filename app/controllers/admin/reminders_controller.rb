class Admin::RemindersController < Admin::AdminController
  before_filter :set_user

  def index
    @reminders = @user.reminders
  end

  def new
    @reminder = @user.reminders.new
  end

  def create
    @reminder = @user.reminders.new(reminder_params)

    if @reminder.save
      redirect_to admin_root_path, notice: 'Lembrete criado!'
    else
      render action: :new
    end
  end

  private
  def set_user
    @user = current_user
  end

  def reminder_params
    params.require(:reminder).permit!
  end
end