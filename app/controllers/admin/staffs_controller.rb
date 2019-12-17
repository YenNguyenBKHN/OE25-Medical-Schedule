class Admin::StaffsController < AdminsController
  def index
    @staffs = Staff.page(params[:page]).per Settings.page_size
  end
end
