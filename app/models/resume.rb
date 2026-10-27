class Resume < ApplicationRecord
  has_many :diplomes
  has_many :spokenlanguages
  has_many :jobs
  has_many :resumeassets
  has_many :computerskills
end
