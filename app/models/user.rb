class User < ApplicationRecord

  has_many :articles, foreign_key: 'author_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def get_email
    self.email
  end

  def get_name
    self.name
  end
  
  def get_articles
    self.articles
  end
  

end
