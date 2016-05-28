class ContactController < ApplicationController
    def new
      if params[:back]
        @contact = Contact.new(contact_params)
      else
        @contact = Contact.new
        binding.pry
      end
    end
    
    def confirm
     @contact = Contact.new(contact_params)
      binding.pry
        if @contact.invalid?
          redirect_to contact_new_path
        end
    end
    
    def create
      @contact = Contact.new(contact_params)
      if params[:back]
        render 'new'
      elsif @contact.save
        PostMailer.post_email(@contact).deliver
      end
    end
    
    
    def recieve
      @contacts = Contact.all
    end
    
    
    
    private
      def contact_params
        params.require(:contact).permit(:name, :email, :message)
      end
end
