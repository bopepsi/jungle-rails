class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: process.env.ADMIN_USER_NAME, password: process.env.ADMIN_PASSWORD

  def show
  end
end
