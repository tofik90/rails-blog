class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)
  end

  private

  def contact_params
    params.permit(:email, :message)
  end

end
