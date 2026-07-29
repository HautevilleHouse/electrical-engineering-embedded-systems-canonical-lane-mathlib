import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibSchedulabilityStatement where
  system : EmbeddedSystem
  schedulable : Prop
  proof : schedulable

def mathlibSchedulabilityStatement (M : EmbeddedSystem) : Prop :=
  M.constraints ∧ ∀ t, t ∈ M.tasks → True

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
