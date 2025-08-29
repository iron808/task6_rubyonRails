class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @schedules_count = Schedule.count
  end

  def new
    @schedules = Schedule.new
  end

  def create
    @schedules = Schedule.new(params.require(:schedule)
    .permit(:title, :start, :finish, :eod, :memo))
    if @schedules.save
      flash[:notice] = "予定を新規登録しました"
      redirect_to schedules_index_path
    else
      render :new
    end

  end

  def show
    @schedules = Schedule.find(params[:id])
  end

  def edit
    @schedules = Schedule.find(params[:id])
  end

  def update
    @schedules = Schedule.find(params[:id])
    if @schedules.update(params.require(:schedule)
      .permit(:title, :start, :finish, :eod, :memo))
      flash[:notice] = "#{@schedules.id}の予定を更新しました"
      redirect_to schedules_index_path
    else
      render :edit
    end
  end

  def destroy
    @schedules = Schedule.find(params[:id])
    @schedules.destroy
    flash[:notice] = "#{@schedules.id}の予定を削除しました"
    redirect_to schedules_index_path
  end
end
