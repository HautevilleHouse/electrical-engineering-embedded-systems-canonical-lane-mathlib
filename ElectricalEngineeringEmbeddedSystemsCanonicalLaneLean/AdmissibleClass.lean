import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure EmbeddedSystemObject where
  carrier : Type
  specification : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : EmbeddedSystemObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EmbeddedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse