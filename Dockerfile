# Usa una imagen base de Ruby
FROM ruby:3.2

# Instalar dependencias del sistema (si es necesario)
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copiar el Gemfile y Gemfile.lock (si los tienes) al contenedor
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

# Instalar las gemas necesarias
RUN bundle install

# Copiar el código de la aplicación al contenedor
COPY . /app

# Exponer el puerto 4567 (por defecto de Sinatra)
EXPOSE 4567

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb"]
