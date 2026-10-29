class Joboffer < ApplicationRecord
  belongs_to :company
  accepts_nested_attributes_for :company
  before_validation :hey
  def hey
    mydesc=company.description
    mycompany=Company.find_or_initialize_by(name: company.name)
    if !mycompany.id
      mycompany.description=mydesc
    end
    self.company=mycompany
  end
end
