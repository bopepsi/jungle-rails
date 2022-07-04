class User < ApplicationRecord
    has_secure_password

    def create params
        params[:email].strip!
        params[:password].strip!
        if user = User.authenticate_with_credentials(params[:email].downcase, params[:password])
          return 'login success'
        else
          return 'login fail'
        end
      end
end
