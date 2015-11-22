class PagesController < ApplicationController

  def home
  end

  def contact
    ContactMailer.contact_us(params[:name], params[:email], params[:subject], params[:body]).deliver
    redirect_to root_path
  end

  def careers
    CareersMailer.send_cv(params[:name], params[:email], params[:body], params[:attachment]).deliver
    redirect_to root_path
  end

end
