class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :carretes, through: :ofert
  has_many :oferts, dependent: :destroy

  has_many :servicios,  dependent: :destroy
  has_many :carretes, dependent: :destroy

  has_many :assist, dependent: :destroy
  has_many :valoracion_carretes, dependent: :destroy
  has_many :comentarios_carretes, dependent: :destroy
  has_many :valoracion_servicios, dependent: :destroy
  has_many :comentarios, dependent: :destroy
  has_many :favoritos, dependent: :destroy
end
