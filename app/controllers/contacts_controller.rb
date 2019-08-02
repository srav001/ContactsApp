class ContactsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_contact, only: [:edit, :update, :destroy, :show]
  
  def index
    if params[:group_id]
      search = params[:search].to_s.downcase
      @group = Group.find(params[:group_id])
      @contacts = @group.contacts.where("lower(name) LIKE ?","%#{search}%").paginate(page: params[:page], per_page: 10)
    else  
      search = params[:search].to_s.downcase
      @contacts = Contact.where("lower(name) LIKE ?","%#{search}%").paginate(page: params[:page], per_page: 10) 
    end   
  end

  def new
    @contact = Contact.new
    
    @contact.user = current_user
    @contact.phone.build
    @contact.address.build
  end

  def show
    
  end  

  def create
    @contact = Contact.new(contact_params)
   
    @contact.user = current_user
  	if @contact.save
  		flash[:success] = "Successfully created new contact"
  		redirect_to contacts_path
  	else
  		render 'new'
  	end
  end


  def edit  
    
  end

  def update    
    @contact.user = current_user
    if @contact.update(contact_params)
      flash[:success] = "Successfully update contact"
      redirect_to contact_path
    else
      render 'edit'
    end
  end

  def destroy    
    @contact.destroy
    flash[:success] = "Successfully deleted contact"
    redirect_to contacts_path
  end

  private

  def find_contact
    @contact = Contact.find(params[:id])

  end

  def contact_params
    #params.require(:contact).permit(:name, :email, :company, :address,:address2,:address3,:breif_note,:phone2, :phone3, :avatar,phone_attributes: [:phone, :id, :_destroy])
    params.require(:contact).permit(:name, :email, :department,:breif_note,:group_id,:avatar,phone_attributes: Phone.attribute_names.map(&:to_sym).push(:_destroy),address_attributes: Address.attribute_names.map(&:to_sym).push(:_destroy),group_attributes: Group.attribute_names.map(&:to_sym).push(:_destroy))

  end
  
  
end
