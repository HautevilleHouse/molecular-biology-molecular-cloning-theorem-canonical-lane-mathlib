import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure VectorInsertPackage where
  vectorSequence : String
  insertSequence : String
  restrictionSites : List String
  ligationEfficiency : Prop
  successfulCloning : Prop

structure PrimerDesignPackage where
  forwardPrimer : String
  reversePrimer : String
  meltingTemp : Float
  gcContent : Float
  specificity : Prop

structure PcrAmplificationPackage where
  templateDna : String
  primers : PrimerDesignPackage
  polymeraseType : String
  cycleConditions : List String
  amplificationSuccess : Prop

structure TransformationPackage where
  hostStrain : String
  plasmidVector : String
  selectionMarker : String
  transformationEfficiency : Prop
  colonyGrowth : Prop

structure ScreeningPackage where
  colonyPcr : Prop
  restrictionDigest : Prop
  sequencingResult : String
  insertConfirmed : Prop

structure ExpressionPackage where
  promoter : String
  inductionCondition : String
  proteinExpression : Prop
  purificationTag : String
  yield : Prop

structure MolecularCloningEvidence where
  vectorPrepared : VectorInsertPackage
  primersDesigned : PrimerDesignPackage
  pcrPerformed : PcrAmplificationPackage
  transformationDone : TransformationPackage
  screeningDone : ScreeningPackage
  expressionVerified : ExpressionPackage

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse