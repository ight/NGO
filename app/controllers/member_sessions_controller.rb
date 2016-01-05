class MemberSessionsController < Devise::SessionsController

	def create
	  resource = warden.authenticate!(auth_options)
	  set_flash_message(:notice, :signed_in) if is_navigational_format?
	  sign_in(resource, resource)
	  respond_with resource, :location => after_sign_in_path_for(resource)
	end

	  # GET /resource/sign_in
	def new
		@device_id = params[:udid] if params[:udid]
		@device_id = "NA" if @device_id.blank?
		resource = resource_class.new(sign_in_params)
		clean_up_passwords(resource)
		respond_with(resource, serialize_options(resource))
  end
end