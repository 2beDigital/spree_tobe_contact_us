Spree::ContactUs::ContactsController.class_eval do

  def create
    @contact = Spree::ContactUs::Contact.new(params[:contact_us_contact])
    status = verify_recaptcha(:model => @post, :message =>  t('recaptcha.errors.recaptcha_error'))
		#"Oh! It's error with reCAPTCHA!")
		if status
			if @contact.save
				if Spree::ContactUs::Config.contact_tracking_message.present?
					flash[:contact_tracking] = Spree::ContactUs::Config.contact_tracking_message
				end
				redirect_to(spree.root_path, :notice => Spree.t('contact_us.notices.success'))
			else
				render :new
			end
		else 
			render :new
		end 
  end

end