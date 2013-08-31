def set_omniauth(opts = {})

    credentials = {
      :provider => 'facebook',
      :uuid => '1234'
    }

    provider = credentials[:provider].to_sym
                                                
    OmniAuth.config.test_mode = true
                                                   
    OmniAuth.config.mock_auth[provider] = OmniAuth::AuthHash.new({
      :provider => credentials[:provider].to_s,
      :uid => credentials[:uuid],
      :info => {
        :email => 'sample@rezume.com'
      },
      :extra => {
        :raw_info => {
          :name => "Sample user"
        }
      }
    })
end
 
def set_invalid_omniauth(opts = {})
    credentials = { :provider => :facebook,
                    :invalid  => :invalid_crendentials
    }.merge(opts)
                      
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[credentials[:provider]] = credentials[:invalid]                      
end
