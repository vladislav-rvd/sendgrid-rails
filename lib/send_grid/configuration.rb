module SendGrid
  #  Call this method to set default api configuration
  #
  #  SendGrid.configure do |config|
  #    config.api_user  = '1234rfdfdasdfg'
  #    config.api_key = 'asdqwe2434trfsdfdf'
  #  end
  #

  module Configuration
    extend ActiveSupport::Concern

    module ClassMethods
      def api_user=(value)
        @api_user = value
      end

      def api_user
        @api_user
      end

      def api_key=(value)
        @api_key = value
      end

      def api_key
        @api_key
      end

      def configure
        yield(self)
      end
    end
  end
end
