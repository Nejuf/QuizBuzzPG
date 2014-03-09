class SocketController < WebsocketRails::BaseController
  def initialize_session
    controller_store[:test] = 0
  end

  def client_connected
    debugger
  end

  def client_disconnected
    debugger
  end
end