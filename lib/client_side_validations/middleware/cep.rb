module ClientSideValidations::Middleware
  class Cep < ClientSideValidations::Middleware::Base
    def response
      if ::Cep.find_by(codigo: request.params[:id])
        self.status = 200
      else
        self.status = 404
      end
      super
    end
  end
end
