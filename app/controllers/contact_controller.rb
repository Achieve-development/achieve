class ContactController < ApplicationController
    def new
        @contact = Contact.new
    end
    
    def confirm
        @contact = Contact.new(contact_params)
        if @contact.valid?
            render :action => 'confirm'
        else
            render :action => 'new'
        end
    end
    
    def create
        @contact = Contact.new(contact_params)
        @contact.save
        render :action => 'create'
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :message)
        end
end
