class User < ActiveRecord :: Base

  def initialize(full_name, address, city, state, postal_code, country, email_address, user_id, password)
    @full_name = full_name
    @address = address
    @city = city
    @state = state
    @postal_code = postal_code
    @country = country
    @email_address = email_address
    @user_id = user_id
    @password = password
  end

  def full_name=(full_name)
    @full_name = full_name
  end

  def address=(address)
    @address = address
  end

  def city=(city)
    @city = city
  end

  def state=(state)
    @state = state
  end

  def postal_code=(postal_code)
    @postal_code = postal_code
  end

  def country=(country)
    @country = country
  end

  def email_address=(email_address)
    @email_address = email_address
  end

  def user_id=(user_id)
    @user_id = user_id
  end

  def password=(password)
      @password = password
  end

  def full_name
    @full_name
  end

  def address
    @address
  end

  def city
    @city
  end

  def state
    @state
  end

  def postal_code
    @postal_code
  end

  def country
    @country
  end

  def email_address
    @email_address
  end

  def user_id
    @user_id
  end

  def password
    @password
  end

end
