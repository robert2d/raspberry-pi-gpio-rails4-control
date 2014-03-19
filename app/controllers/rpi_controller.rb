class RpiController < ApplicationController
  def index
  end

  def switch
    pin = GPIO.get_pin(pin: params['pin'], direction: params['direction'])
    case params['value']
    when 'click'
      pin.click
    when true
      pin.on
    when false
      pin.off
    end
  end
end
