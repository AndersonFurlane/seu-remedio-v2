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
    @reminder.end_at = set_end_at

    if @reminder.save
      redirect_to admin_root_path, notice: 'Lembrete criado!'
    else
      render action: :new
    end
  end

  def edit
    @reminder = @user.reminders.find(params[:id])
  end

  def update
    @reminder = @user.reminders.find(params[:id])
    @reminder.end_at = set_end_at

    if @reminder.update(reminder_params)
      redirect_to admin_root_path, notice: 'Lembrete alterado com sucesso!'
    else
      render action: :edit
    end
  end

  def destroy
    @reminder = @user.reminders.find(params[:id])

    if @reminder.destroy
      redirect_to admin_root_path, notice: 'Lembrete deletado com sucesso!'
    else
      render action: :edit
    end
  end

  private
  def set_user
    @user = current_user
  end

  def set_end_at
    @reminder.start_at + @reminder.range_days
  end

  def reminder_params
    params.require(:reminder).permit!
  end
end