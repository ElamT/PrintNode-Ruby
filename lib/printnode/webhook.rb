require 'base64'

module PrintNode
  # An object for webhook creation.
  # @author Elam Torres
  # @author PrintNode
  class Webhook
    attr_accessor :id
    attr_accessor :url
    attr_accessor :secret
    attr_accessor :message

    # Initializes the object with the variables required.
    def initialize(url, secret, message)
      @url = url
      @secret = secret
      @message = message
    end

    # Maps the object into a hash ready for JSON Encoding.
    def to_hash
      {
        'url' => @url,
        'secret' => @secret,
        'message' => @message,
      }
    end
  end
end
