class Organizations::PetPolicy < ApplicationPolicy
  pre_check :verify_record_organization!

  alias_rule :index?, :create?, :new?, :attach_files?, :attach_images?,
    to: :manage?

  def manage?
    permission?(:manage_pets)
  end
end
