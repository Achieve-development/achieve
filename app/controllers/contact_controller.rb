class ContactController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def confirm
        @contact = Contact.new(contact_params)
        if @contact.invalid?
            render 'new'
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
