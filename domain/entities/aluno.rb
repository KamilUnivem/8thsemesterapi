require 'date'

class Aluno
  attr_accessor :id
  attr_accessor :cpf
  attr_accessor :name
  attr_accessor :email
  attr_accessor :date_of_birth # format 21/05/2016
  attr_accessor :ra

  class InitializationError < RuntimeError; end

  def initialize(args)
    raise InitializationError unless args

  end

  def is_valid?(args)
    return false unless args[:cpf].size == 11 ||
                        get_age(args[:date_of_birth]) >= 18 ||
                        args[:ra].size == 6
    return true
  end

  def get_age(date_of_birth)
    dob = Date.parse(date_of_birth)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end