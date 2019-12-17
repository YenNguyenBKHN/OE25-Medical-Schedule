class Admin::DoctorsController < AdminsController
  def index
    @doctors = Doctor.page(params[:page]).per Settings.page_size
  end
end
