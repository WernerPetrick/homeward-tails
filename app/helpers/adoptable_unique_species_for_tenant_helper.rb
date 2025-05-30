# Used in the navbar since the navbar isn't scoped to a specific tenant, requiring us to set a tenant to use the existing scope.
module AdoptableUniqueSpeciesForTenantHelper
  def adoptable_unique_species(organization)
    ActsAsTenant.with_tenant(organization) do
      Pet.adoptable_unique_species
    end
  end
end
