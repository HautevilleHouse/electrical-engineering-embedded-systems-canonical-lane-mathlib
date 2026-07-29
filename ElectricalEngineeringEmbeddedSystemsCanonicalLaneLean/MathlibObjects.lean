import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EmbeddedSystem where
  processor : Type
  tasks : Type
  scheduler : Type
  memory : Type
  constraints : Prop
  constraintsTerm : constraints

structure EmbeddedAdmittedObject where
  system : EmbeddedSystem
  timingGuaranteed : Prop
  resourceGuaranteed : Prop
  schedulabilityDecidable : Prop
  conclusion : schedulabilityDecidable

def EmbeddedWitnessClosed (O : EmbeddedAdmittedObject) : Prop :=
  O.schedulabilityDecidable

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
