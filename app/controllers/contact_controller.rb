class ContactController < ApplicationController
  
  before_action :contact_params, only: [:create]
  
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      @contact = Contact.new
      flash.now[:notice] = 'Thank you for your message!'
      # render :index
    else
      flash.now[:error] = 'Cannot send message.'
      # render :index
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :message, :nickname, :subject)
  end
end