class BrazilianZipCodeValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless Cep.find_by(codigo: value)
      record.errors.add(:cep, :cep) # atributo :cep, chave do locale :cep
    end
  end
end
