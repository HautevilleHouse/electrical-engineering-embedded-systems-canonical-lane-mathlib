import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EmbeddedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse