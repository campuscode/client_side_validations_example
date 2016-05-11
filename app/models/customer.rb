class Customer < ActiveRecord::Base
  validates :name, :cpf, :address_number, :address_street, presence: true
  validates :cep, brazilian_zip_code: true
end
