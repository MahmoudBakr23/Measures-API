# Measures controller
class MeasuresController < ApplicationController
  include CurrentUserConcern
  def index
    if check_logged_in
      @measures = Measure.where(user_id: logged_in_user.id)
      render json: { status: :ok, data: @measures }
    else
      render json: { message: 'Not authorized!' }
    end
  end

  def create
    if check_logged_in
      @measure = logged_in_user.measures.build(measure_params)
      if @measure.save
        render json: { status: :created, data: @measure }
      else
        render json: { status: 500, errors: @measure.errors.full_messages }
      end
    else
      render json: { message: 'Not authorized!' }
    end
  end

  def show
    if check_logged_in
      @measure = Measure.find(params[:id])
      render json: { data: @measure }
    else
      render json: { message: 'Please login first!' }
    end
  end

  private

  def measure_params
    params.require(:measure).permit(:name, :count, :time)
  end
end
