require 'sinatra'
require 'json'

# Configuración para escuchar en todas las interfaces (necesario en Docker)
set :bind, '0.0.0.0'
set :port, 4567

# Ruta raíz
get '/' do
  "Hello World"
end

# Ruta para el webhook (POST)
post '/webhook' do
  request_payload = request.body.read
  puts "Payload recibido: #{request_payload}"

  content_type :json
  { message: "Hola Mundo desde un webhook en Ruby!" }.to_json
end
