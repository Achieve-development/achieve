class ContactController < ApplicationController
    def new
      if params[:back] 
        @contact = Contact.new(contact_params)
      else
        @contact = Contact.new
      end
    end
    
    def confirm
        @contact = Contact.new(contact_params)
        if @contact.invalid?
            redirect_to contact_new_path
        end
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        if params[:back]
            render 'new'
        elsif @contact.save
            render 'create'
        else
            render 'new'
        end
    end
    
    
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :message)
        end
end
