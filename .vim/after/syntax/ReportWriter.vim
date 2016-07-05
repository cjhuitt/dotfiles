
"syn keyword reportwriterFunction 
"syn keyword reportwriterTypedef 
"syn keyword reportwriterConstant 
"syn keyword reportwriterStruct 
syn keyword reportwriterClass BinaryOperation ContainerComponent EquationComponent EquationEnvironment Equations FigureComponent IntroductionComponent ListComponent ReportComponent ReportWriter SectionComponent SubSectionComponent TableComponent TextComponent UnaryOperation SubSubSectionComponent
syn keyword reportwriterClass Addition Adjacent Arccos Arcsin Arctan BinOps Cos Cosh Cot Coth Csc CurlyBrackets Division DivSlash FontBF FontIT FontSF Fraction Ln Log Max Min Multiplication NthRoot Parenth Sec Sin Sinh SizedCurlyBrackets SizedParenth SizedSquareBrackets Sqrt SquareBrackets Stackrel Subscript Subtraction Superscript Tan Tanh UnOps WideHat
syn keyword reportwriterClass Angle Approx CDot CDots Cong Equal EquationSymbols Equiv Exists Forall GreaterEqual Greek GrkAlpha GrkBeta GrkChi GrkDelta GrkDeltaUC GrkEpsilon GrkEta GrkGamma GrkGammaUC GrkIota GrkKappa GrkLambda GrkLambdaUC GrkMu GrkNu GrkOmega GrkOmegaUC GrkPhi GrkPhiUC GrkPi GrkPiUC GrkPsi GrkPsiUC GrkRho GrkSigma GrkSigmaUC GrkTau GrkTheta GrkThetaUC GrkUpsilon GrkUpsilonUC GrkXi GrkXiUC GrkZeta IMath Infty InSet Integral JMath LDots LessEqual Letter Lim MapsTo MediumSpace NegThinSpace NotEqual NotInSet Parallel Perp PlusMinus Prod RealNumberSet RightArrow Sim SimEqual Subset SubsetEqual Sum Superset SupersetEqual ThickSpace ThinSpace
"syn keyword reportwriterMacro 
"syn keyword reportwriterEnum 
"syn keyword reportwriterDefine 
syn keyword reportwriterNamespace Report

" Default highlighting
if version >= 508 || !exists("did_reportwriter_syntax_inits")
  if version < 508
    let did_reportwriter_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
"  HiLink reportwriterFunction Function
"  HiLink reportwriterTypedef Type
"  HiLink reportwriterConstant Constant
"  HiLink reportwriterStruct Type
  HiLink reportwriterClass Class
"  HiLink reportwriterUnion Type
"  HiLink reportwriterMacro Macro
"  HiLink reportwriterEnum Type
"  HiLink reportwriterDefine Constant
  HiLink reportwriterNamespace Namespace
  delcommand HiLink
endif

