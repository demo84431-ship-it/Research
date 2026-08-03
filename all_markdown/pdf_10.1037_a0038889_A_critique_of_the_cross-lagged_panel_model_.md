UvA-DARE (Digital Academic Repository)
A critique of the cross-lagged panel model
Hamaker, E.L.; Kuipers, R.M.; Grasman, R.P.
DOI
10.1037/a0038889
Publication date
2015
Document Version
Final published version
Published in
Psychological Methods
License
Article 25fa Dutch Copyright Act (https://www.openaccess.nl/en/policies/open-access-in-
dutch-copyright-law-taverne-amendment)
Link to publication
Citation for published version (APA):
Hamaker, E. L., Kuipers, R. M., & Grasman, R. P. (2015). A critique of the cross-lagged panel
model. Psychological Methods, 20(1), 102-116. https://doi.org/10.1037/a0038889
General rights
It is not permitted to download or to forward/distribute the text or part of it without the consent of the author(s)
and/or copyright holder(s), other than for strictly personal, individual use, unless the work is under an open
content license (like Creative Commons).
Disclaimer/Complaints regulations
If you believe that digital publication of certain material infringes any of your rights or (privacy) interests, please
let the Library know, stating your reasons. In case of a legitimate complaint, the Library will make the material
inaccessible and/or remove it from the website. Please Ask the Library: https://uba.uva.nl/en/contact, or a letter
to: Library of the University of Amsterdam, Secretariat, P.O. Box 19185, 1000 GD Amsterdam, The Netherlands.
You will be contacted as soon as possible.
UvA-DARE is a service provided by the library of the University of Amsterdam (https://dare.uva.nl)
Download date:01 Aug 2026

A Critique of the Cross-Lagged Panel Model
Ellen L. Hamaker and Rebecca M. Kuiper Raoul P. P. P. Grasman
UtrechtUniversity UniversityofAmsterdam
Thecross-laggedpanelmodel(CLPM)isbelievedbymanytoovercometheproblemsassociatedwith
theuseofcross-laggedcorrelationsasawaytostudycausalinfluencesinlongitudinalpaneldata.The
current article, however, shows that if stability of constructs is to some extent of a trait-like, time-
invariantnature,theautoregressiverelationshipsoftheCLPMfailtoadequatelyaccountforthis.Asa
result,thelaggedparametersthatareobtainedwiththeCLPMdonotrepresenttheactualwithin-person
relationshipsovertime,andthismayleadtoerroneousconclusionsregardingthepresence,predomi-
nance,andsignofcausalinfluences.Inthisarticlewepresentanalternativemodelthatseparatesthe
within-person process from stable between-person differences through the inclusion of random inter-
cepts, and we discuss how this model is related to existing structural equation models that include
cross-lagged relationships. We derive the analytical relationship between the cross-lagged parameters
fromtheCLPMandthealternativemodel,andusesimulationstodemonstratethespuriousresultsthat
mayarisewhenusingtheCLPMtoanalyzedatathatincludestable,trait-likeindividualdifferences.We
alsopresentamodelingstrategytoavoidthispitfallandillustratethisusinganempiricaldataset.The
implicationsforbothexistingandfuturecross-laggedpanelresearcharediscussed.
Keywords:cross-laggedpanel,reciprocaleffects,longitudinalmodel,trait–statemodels,within-person
dynamics
In 1980, Rogosa’s seminal article A Critique of the Cross- cally,itiscommonpracticetostandardizethecross-laggedregres-
Lagged Correlation was published, which successfully conveyed sion coefficients and compare their relative strength with deter-
themessagethatcomparingcross-laggedcorrelationsfromlongi- mine which variable has a stronger causal influence on the other
tudinal panel data is an inappropriate basis for making causal (Bentler&Speckart,1981).
inferences.1 One of the key insights stemming from Rogosa’s The current article forms a sequel to the warning given by
article is that, if two constructs are characterized by different Rogosa (1980), in that it will be argued that not only should we
degrees of stability, the comparison of cross-lagged correlations accountforstability,butwealsoneedtoaccountfortherightkind
mayleadtospuriousconclusionsregardingthecausalmechanism. ofstability.Itwillbeshownthatifstabilityoftheconstructsisto
Since then, most researchers interested in causality in panel data some extent of a trait-like, time-invariant nature, the inclusion of
haveabandonedcross-laggedcorrelationsandendorsedthecross- autoregressive parameters will fail to adequately control for this.
lagged panel model (CLPM)—also known as the cross-lagged Asaresulttheestimatesofthecross-laggedregressioncoefficients
willbebiased,whichmayleadtoerroneousconclusionsregarding
pathmodelorthecross-laggedregressionmodel—instead.Inthe
theunderlyingcausalpattern.Thismessageisnotnovelinitself:
CLPM, stability of the constructs is controlled for through the
Infact,ithasbeenrecognizedrepeatedlythatthe“omittedvariable
inclusion of autoregressive relationships, and it is therefore often
problem” may affect the estimation of the cross-lagged coeffi-
believedthatthecross-laggedregressionparametersobtainedwith
cients (e.g., Allison, 2009; Dwyer, 1983; Finkel, 1995; Heise,
thismodelarethemostappropriatemeasuresforstudyingcausal-
1970), and diverse modeling strategies have been proposed to
ity in longitudinal correlational data (e.g., Deary, Allerhand, &
Der, 2009; Soenens, Luyckx, Vansteekiste, Duriez, & Goossens,
2008; Wood, Maltby, Gillett, Linley, & Joseph, 2008). Specifi-
1While the omitted variable problem implies that we cannot make
strongcausalstatementsbasedoncorrelationaldata,itdoesnotprohibitthe
useoftheconceptofGrangercausality(Granger,1969).However,many
researchers using cross-lagged regression refrain from using the term
causal,andusetermslikereciprocalrelationship(Erickson,Wolfe,King,
EllenL.HamakerandRebeccaM.Kuiper,MethodologyandStatistics, King, & Sharkansky, 2001; Lindwall, Larsman, & Hagger, 2011), role
Faculty of Social and Behavioural Sciences, Utrecht University; Raoul (Ribeiroet al., 2011), cross-domain effects (Burt, Obradovic´, Long, &
Masten, 2008), exposure (Cole et al., 2006), impact (Gault-Sherman,
P.P.P.Grasman,PsychologicalMethodology,UniversityofAmsterdam.
2012),orinfluence(Green,Furrer,&McAllister,2011),instead.Itmaybe
ThisstudywassupportedbytheNetherlandsOrganizationforScientific
argued however, that these alternative terms also imply a causal mecha-
Research(NWO;VIDIGrant452-10-007).
nism,andevenmoreso,thataninterestincausalityisactuallythedriving
CorrespondenceconcerningthisarticleshouldbeaddressedtoEllenL. forcebehindthesestudies.Therefore,wedecidedtousethetermscausal
Hamaker,MethodologyandStatistics,FacultyofSocialandBehavioural andcausalityinthecurrentarticle,althoughweacknowledgingthatstrong
Sciences, Utrecht University, P.O. Box 80140, 3508 TC, Utrecht, The causal statements can only be based on experimental designs, and we
Netherlands.E-mail:e.l.hamaker@uu.nl shouldconfineourselvestotheconceptofGrangercausality.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
PsychologicalMethods ©2015AmericanPsychologicalAssociation
2015,Vol.20,No.1,102–116 1082-989X/15/$12.00 http://dx.doi.org/10.1037/a0038889
102

accountforunobservedvariablesthatinfluencetheobservedvari- In this section the traditional CLPM is presented, which is the
ables. However, given the popularity of the CLPM, it seems that most typical modeling approach for this kind of research. In
either this warning has been lost on a large group of substantive addition, an alternative model is presented, which we refer to as
researchers,ormanyresearchersaresimplynotconvincedthatthis therandominterceptscross-laggedpanelmodel(RI-CLPM),that
couldformaseriousproblem. accounts for trait-like, time-invariant stability through the inclu-
In the current article, we therefore present a closely related sion of a random intercept (i.e., a factor with all loadings con-
alternative structural equation modeling (SEM) approach that is strained to 1). This random intercept partials out between-person
inspiredbyconsideringcross-laggedpaneldatafromamultilevel variancesuchthatthelaggedrelationshipsintheRI-CLPMactu-
perspective,implyingweneedtodistinguishbetweenthewithin- ally pertain to within-person (or within-dyad) dynamics. We dis-
personandthebetweenpersonlevel.Weshowthatthisalternative cuss how these models predict change, how many measurement
SEM approach can lead to very different conclusions than the waves are needed for identification, and how they are related to
traditionalCLPMwhenconsideringthethreemajorobjectivesof eachother.
cross-lagged panel research, that is: (a) whether or not variables
influence each other; (b) which of the variables is causally dom- The CLPM
inant;and(c)whatthesignofinfluenceis.Indoingsowehopeto
The CLPM can be used if two or more variables have been
raiseawarenessaboutthelimitationsofthetraditionalCLPM,and
measured at two or more occasions, and if the interest is in their
tostimulateresearcherstoconsideralternativeSEMapproaches.
influencesoneachotherovertime.Letxandydenotetwodistinct
This article is organized as follows. In the first section, two
variableswhichweremeasuredmultipletimes,andwhichwillbe
models for investigating cross-lagged effects are presented: the
analyzedwiththeCLPM.Whilethisapproachtypicallyconsistsof
traditionalCLPMandanextensionofthismodelbasedontaking
modeling the covariance structure only, the means are included
a multilevel perspective. We discuss the meaning of each model,
hereaswellforthesakeofcompleteness.Westress,however,that
thewaytheypredictchange,andtheminimumnumberofwaves
noconstraintsareimposedonthesemeans,whichisequivalentto
needed for identification. In the second section, we discuss four
analyzing the centered data. A graphical representation of this
otherSEMapproachesthatincludecross-laggedrelationshipsand
modelisgivenintheleftpanelofFigure1(seeAppendixAforthe
discusshowthesearerelatedtothemodelwepropose.Indoingso,
correspondingSEMspecification).
wesketchthebroadercontextofthecurrentaccountandpointthe
The measurement equations for the CLPM with means can be
reader in the direction of other alternatives. The third section
expressedas
consists of a more in-depth comparison of the traditional CLPM
and the proposed alternative. In the fourth section, a modeling x (cid:2)(cid:3) (cid:4)p (1a)
it t it
strategy is proposed to ensure that—if present—both forms of
stabilityareaccountedforandweillustratethisusinganempirical y it (cid:2)(cid:5) t (cid:4)q it (1b)
data set. The article ends with summarizing the most important where(cid:2) and(cid:3) representthegrandmeansatoccasiontforthetwo
findingsofthepresentstudy,discussingtheimplicationsforlon- t t
variablesrespectively.Ifthedataarecenteredfirst(or,whenonly
gitudinal research, and providing guidelines for future cross-
laggedpanelresearch.
Two Models for Studying Reciprocal Influences
Cross-laggedpanelresearchisconcernedwiththeeffectoftwo
ormorevariablesoneachotherovertime.Togiveanimpression
ofthekindsofquestionsresearchershavetriedtotackleusingthe
CLPM, consider the following anthology: Do maternal warmth
and praise reduce internalizing and externalizing problems in
childrenwithautism(Smith,Greenberg,MailickSeltzer,&Hong,
2008)? Is the relationship between parenting and adolescent de-
linquency bidirectional (Gault-Sherman, 2012)? Does gratitude
fostersocialsupportorviceversa(Woodetal.,2008)?Whatisthe
directionofcausalitybetweenintelligenceandacademicachieve-
ment (Watkins, Lei, & Canivez, 2007)? Is processing speed a
foundation for successful cognitive aging (Deary et al., 2009)?
Whatistheroleofapessimisticexplanatorystyleondeveloping
andmaintainingsocialsupportnetworksinadolescents(Ciarrochi
&Heaven,2008)?Whatisthedirectionalnatureoftherelationship
betweenthequalityoftheparent–childrelationshipandachild’s
Figure 1. Two bivariate models for three waves of data: the standard
ADHDsymptoms(Lifford,Harold,&Thapar,2008)?And—ata
CLPM, and the alternative RI-CLPM. Triangles represent constants (for
macro social-economic level—what is the direction of causality
the mean structure); squares denote observed variables; circles represent
between intelligence and economic welfare of nations (Rinder- “latent”variables.NotethatintheCLPMontheleft,the“latent”variables
mann,2008)? pandqaresimplythecenteredobservedvariables.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 103

thecovariancematrixisanalyzed),(cid:3) (cid:2)(cid:5) (cid:2)0,suchthatp (cid:4)x variesovertimearoundthesamemeans(cid:2) and(cid:3),andthatthere
t t it it t t
and q (cid:4) y . When the means are included, however, p and q arenotrait-likeindividualdifferencesthatendure.Atclosercon-
it it it it
represent the individuals’ temporal deviations from the time- sideration,thisisaratherproblematicassumption,asitisdifficult
varyinggroupmeans.Notethat,althoughwerefertoEquations1a toimagineapsychologicalconstruct—whetherbehavioral,cogni-
and 1b as the measurement equations, this is not a true measure- tive,emotional,orpsychophysiological—thatisnottosomeextent
mentmodel,aswehavenotspecifiedanymeasurementerrors.2 characterizedbystableindividualdifferences(ifnotfortheentire
The temporal deviations p and q (or—when the data are lifespan,thenatleastforthedurationofthestudy).
it it
centered first—the observed scores), are modeled with the struc- Longitudinaldatacanactuallybethoughtofasmultileveldata,
turalequations inwhichoccasionsarenestedwithinindividuals(orothersystems,
like dyads). When considering this perspective, it becomes clear
p it (cid:2)(cid:6) t p i,t(cid:7)1 (cid:4)(cid:8) t q i,t(cid:7)1 (cid:4)u it (1c) thatweneedtoseparatethewithin-personlevelfromthebetween-
personlevel.Thisideamotivatedthedevelopmentofthealterna-
q it (cid:2)(cid:9) t q i,t(cid:7)1 (cid:4)(cid:10) t p i,t(cid:7)1 (cid:4)v it . (1d) tive model we present here, which can be thought of as an
Theautoregressiveparameter(cid:5) and(cid:6) areincludedtoaccount extension of the CLPM that accounts not only for temporal sta-
t t forthestabilityoftheconstructs:Theclosertheseautoregressive bility, but also for time-invariant, trait-like stability through the
parametersaretoone,themorestabletherankorderofindividuals inclusion of a random intercept. This alternative model can be
isfromoneoccasiontothenext.However,evenwhenthestability expressedas
coefficientsareveryhigh,whenenoughtimepasses,theoriginal
rank order will be lost. Hence, it is not stability of a trait-like x it (cid:2)(cid:3) t (cid:4)(cid:11) i (cid:4)p i * t (3a)
nature, and it is therefore often referred to as temporal stability
y (cid:2)(cid:5) (cid:4)(cid:12) (cid:4)q* (3b)
instead(e.g.,Heise,1970). it t i it
Thecross-laggedparameters(cid:7) t and(cid:8) t formthekeytoinvesti- where (cid:2) and (cid:3) are again the temporal group means. The addi-
gating reciprocal causal effects in this model (Rogosa, 1980): tionalter t ms(cid:10) an t d(cid:11) aretheindividual’strait-likedeviationsfrom
Throughstandardizingtheseparameters,acomparisonoftherel- i i
thesemeans:Theycanbethoughtofaslatentvariablesorfactors
ativeeffectsofxandyoneachothercanbemade,whichcanthen
whosefactorloadingsareallconstrainedto1,asincaseofrandom
be used to determine causal predominance (Bentler & Speckart,
intercepts in latent growth curve (LGC) modeling (with the dif-
1981).Theseparametersareofteninterpretedintermsofpredict-
ferencethatherethegroupmeansareallowedtovaryfreelyover
ingchange(e.g.,Finkel,1995;Ribeiroetal.,2011;Rindermann,
time).Wehaveaddedanasterisktothetemporaldeviationterms
2008).Toshowthereasoningbehindthisinterpretation,wewrite p* and q*, to emphasize these terms are different from the indi-
it it
y it (cid:7)y i,t(cid:7)1 (cid:2)((cid:5) t (cid:4)q it )(cid:7)((cid:5) t(cid:7)1 (cid:4)q i,t(cid:7)1 ) v m id o u d a e l l t d h e e v y ia r ti e o p n re t s e e r n m t s th i e n i t n h d e iv t i r d a u d a it l i ’ o s n t a e l m C p L o P ra M l : de I v n ia t t h io e n c s u f r r r o en m t
(cid:2)((cid:5) t (cid:7)(cid:5) t(cid:7)1 )(cid:4)((cid:9) t (cid:7)1)q i,t(cid:7)1 (cid:4)(cid:10) t p i,t(cid:7)1 (cid:4)v it , theirexpectedscores(i.e.,(cid:3) (cid:4)(cid:11) and(cid:5) (cid:4)(cid:12)),ratherthanfrom
t i t i
(2) thegroupmeans(i.e.,(cid:2) t and(cid:3) t ).
Subsequentlythesedeviationsaremodeledas
which shows that the cross-lagged parameter (cid:8) indicates the
t
extent to which the change in y can be predicted from the indi- p*(cid:2)(cid:6)*p* (cid:4)(cid:8)*q* (cid:4)u* (3c)
it t i,t(cid:7)1 t i,t(cid:7)1 it
vidual’s prior deviation from the group mean on x (i.e., p (cid:4)
x i,t(cid:9)1- (cid:2) t(cid:9)1 ). In this expression, we also control for the str i u ,t c (cid:9) t 1 ural q i * t (cid:2)(cid:9) t *q i * ,t(cid:7)1 (cid:4)(cid:10) t *p i * ,t(cid:7)1 (cid:4)v i * t , (3d)
change in y (i.e., (cid:5) t (cid:7) (cid:5) t(cid:7)1 ), and one’s prior deviation from the where the autoregressive and cross-lagged regression parameters
groupmeanony(i.e.,q (cid:4)y (cid:3) ).Includingthepersons’
i,t(cid:9)1 i,t(cid:9)1- t(cid:9)1 differ from the ones in the CLPM, as indicated by the asterisks.
prior deviation from the group mean in this representation is
That is, the autoregressive parameters (cid:6)* and (cid:9)* do not represent
sometimesconsideredawaytocontrolforbiasduetoregression t t
thestabilityoftherankorderofindividualsfromoneoccasionto
towardthemean(Liker,Augustyniak,&Duncan,1985).
thenext,butrathertheamountofwithin-personcarry-overeffect
TheCLPMisjustidentifiedwithonlytwowavesofdata,which
(cf., Hamaker, 2012; Kuppens, Allen, & Sheeber, 2010; Suls,
makesitanappealingmodelingapproachfromapracticalpointof
Green,&Hillis,1998):Ifitispositive,itimpliesthatoccasionson
view:Infact,wefoundthat45%ofthedatasetspublishedin2012,
which were used to estimate this model, consisted of only two
waves of data.3 This is noteworthy, because it implies that in 2Relatedtothis,wepointoutthatwhilep andq arerepresentedin
it it
almost half of the applications, the parameters of the CLPM and Figure 1 using circles (as opposed to squares, which indicate observed
their standard errors can be estimated, but it is not possible to variables), these are not truly latent variables in the sense of being cor-
rectedformeasurementerror:However,thecurrentrepresentationcorre-
evaluate whether the model provides a proper description of the
spondswiththewaythismodelwouldbedefinedintheLISRELframe-
actual underlying mechanism, as the model is just identified and
work,whichalsoformsthebasisforMplus.Furthermore,itmakesiteasier
willyieldaperfectfit,whichisreallynotmeaningful. toseehowthealternativewepresentlaterisanextensionofthistraditional
cross-laggedmodel.
3We used PsycINFO and searched for peer reviewed articles that
The RI-CLPM
appearedin2012andwhichmadereferencetotheterm“cross-lagged”in
eitherthetitle,theabstractorthekeywords.Wefound115peerreviewed
As described above, the CLPM only accounts for temporal
publicationsofwhichtwowereontimeseriesanalysis,oneonmultilevel
stability through the inclusion of autoregressive parameters. This modeling, and one did not include an application. The 111 remaining
impliesthatinthismodelitisimplicitlyassumedthateveryperson publicationsreportedon117datasets.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
104 HAMAKER,KUIPER,ANDGRASMAN

whichapersonscoredabovehisorherexpectedscorearelikelyto WhiletheCLPMrequiresonlytwowavesofdata,theRI-CLPM
befollowedbyoccasionsonwhichheorshestillscoresabovethe requiresatleastthreewavesofdata,inwhichcasethereis1degree
expectedscoreagain,andviceversa.4 of freedom (df).5 If the intervals (i.e., lags) between occasions 1
The main interest here is however in the cross-lagged parame- and 2 and between occasions 2 and 3 are the same (i.e., the
ters(cid:8)*and(cid:10)*,whichindicatetheextenttowhichthetwovariables observationsareequallyspacedintime),thanwecantestwhether
t t
influenceeachother.Specifically,(cid:10)*indicatesthedegreebywhich theeffectsthatthevariableshaveoneachotherremainstableover
t
deviations from an individual’s expected score on y (i.e., q* (cid:2) timebyconstrainingthelaggedparametersovertime,anddoinga
it
y (cid:7)(cid:2)(cid:5) (cid:4)(cid:12)(cid:3))canbepredictedfromprecedingdeviationsfrom chi-square difference test. The latter model would give us an
it t i
one’sexpectedscoreonx(i.e., p i * ,t(cid:7)1 (cid:2)x i,t(cid:7)1 (cid:7)(cid:2)(cid:3) t (cid:4)(cid:11) i (cid:3)),while additional 4 df (i.e., 5 df in total). Furthermore, we may want to
controllingfortheindividual’sdeviationoftheprecedingexpected investigatewhetherthemeanscanbeconstrainedovertime,such
score on y (i.e., q i * ,t(cid:7)1 (cid:2) y i,t(cid:7)1 (cid:7) (cid:2)(cid:5) t(cid:7)1 (cid:4) (cid:12) i (cid:3)). The cross-lagged thatweobtainanother4df(resultingin9dfintotal).
If these constraints are not tenable (for instance, because the
relationships pertain to a process that takes place at the within-
intervalsbetweentheobservationsvaryovertime,orbecausethe
personlevelandtheyarethereforeofkeyinterestwhentheinterest
underlying process changes over time), and we are not sure
isinreciprocalinfluencesovertimewithinindividualsordyads.A
whether the effect of the time-invariant stability components (cid:10)
graphicalrepresentationofthismodelisgivenintherightpanelof i
and(cid:11) areequalovertime,wemaywishtoremovetheconstraint
Figure 1 (see Appendix A for the corresponding SEM specifica- i
onthefactorloadings.Thisrelaxationmayespeciallybeofinterest
tion).
when the observations are made further apart in time, and we
ExpressingchangeintheRI-CLPM,wecanwrite
expectthatwearealsomeasuringsomestructuralchanges.How-
y it (cid:7)y i,t(cid:7)1 (cid:2)(cid:4)(cid:5) t (cid:4)(cid:12) i (cid:4)q i * t (cid:5)(cid:7)(cid:4)(cid:5) t(cid:7)1 (cid:4)(cid:12) i (cid:4)q i * ,t(cid:7)1 (cid:5) i e n v t e e r r , c t e h p i t s s w (a o s ul i d n i m m u p l l t y ile th v a e t l (cid:10) m i o a d n e d li (cid:11) ng i ) n , o b l u o t ng ra e t r h r e e r p r r e e p s r e e n s t e s n r t an la d t o e m nt
(cid:2)((cid:5) t (cid:7)(cid:5) t(cid:7)1 )(cid:4)(cid:4)(cid:9) t *(cid:7)1 (cid:5) q i * ,t(cid:7)1 (cid:4)(cid:10) t *p i * ,t(cid:7)1 (cid:4)v i * t , variables or traits (as common in SEM). Even more so, it would
implyweneedmorewavesofdatatoestimatethismodel.
(4)
which shows that the cross-lagged parameter indicates the extent
Conclusion
to which the change in y can be predicted from the individual’s
priordeviationfromhisorherexpectedscoreontheothervariable The CLPM is nested under the RI-CLPM. The latter is an
(i.e.,p i * ,t(cid:7)1 (cid:2)x i,t(cid:7)1 (cid:7)(cid:2)(cid:3) t (cid:4)(cid:11) i (cid:3)),whilecontrollingforthestructural attempt to disentangle the within-person process from stable
change in y (i.e., (cid:5) t (cid:7) (cid:5) t(cid:7)1 ), and the prior deviation from one’s between-persondifferenceswhiletheformerdoesnotdifferentiate
expectedscoreony(i.e.,q i * ,t(cid:7)1 (cid:2) y i,t(cid:7)1 (cid:7)(cid:2)(cid:5) t(cid:7)1 (cid:4)(cid:12) i (cid:3)).Through betweenthesetwolevelsthatarelikelytobepresentinthedata.
taking the difference, Equation 4 no longer includes the stable, Thequestionthusriseswhathappensifthedataweregeneratedby
trait-like individual component (cid:11). This illustrates the fact that theRI-CLPM,butareanalyzedusingtheCLPM:Mostlikelythis
i
difference scores are a way to eliminate the effect of stable, willleadtoacontaminationoftheestimatedwithin-personrecip-
unobserved variables, which is sometimes considered a major rocaleffects,buttoobtainmoreinsightintothismatter,weneed
advantageofdifferencescoremodelingoverotherapproaches(cf. to take a closer look at the relationship between the cross-lagged
parametersfrombothmodels.
Allison,2009;Likeretal.,1985).
Notehoweverthatboth(cid:11) and(cid:10) arestillimplicitlypresentin However, before doing this, we consider how the RI-CLPM is
the expression in Equation 4 i , throu i gh the inclusion of q* and connected to other longitudinal SEM approaches that include
p* .Hence,despitethesimilaritybetweenEquation2(b i, a t(cid:7) se 1 don cross-laggedrelationships:Indoingsoweaimtopresentabroader
i,t(cid:7)1
context for the current exposition and provide some reference
theCLPM)andinEquation4(basedontheRI-CLPM),thesetwo
models predict change from other aspects, unless (cid:10) and (cid:11) are points for readers already familiar with (some of) these SEM
i i approaches.
zero.Infact,itiseasytoseethatthetraditionalCLPMisnested
under the current model, as it can be obtained from the latter by
fixingthevariancesandcovarianceof(cid:10) and(cid:11) tozero.However, Relatedness to Other Existing SEM Approaches
i i
comparingthesemodelsusingachi-squaredifferencetestiscom-
ThereareseveralotherlongitudinalSEMapproachesthatcanbe
plicatedbythefactthatitrequiresustofixtwoparametersatthe
used for bivariate data, which include cross-lagged relationships.
boundariesoftheparameterspace(i.e.,thetwovariancesarefixed
to zero): As a result the log likelihood difference of these two
nestedmodelsdoesnothavearegularchi-squaredistribution,but 4One could also say these autoregressive parameters indicate the sta-
followsachi-bar-squaredistribution,whichisaweightedsumof bilityoftherank-orderofindividualdeviations,butthisislessappealing
differentchi-squaredistributions(Stoel,GalindoGarre,Dolan,& fromasubstantiveviewpoint.
5Thenumberofobservedstatisticsinthecovariancematrixisequalto
van den Wittenboer, 2006). The computation of the required
(6(cid:2)7)/2(cid:4)21,whilethenumberofparametersforthecovariancestructure
weights,andsubsequentlydeterminingtheactualpvalues,canbe equals20,thatis:twovarianceandonecovarianceforthebetween-person
troublesome(Silvapulle&Sen,2004;Stoeletal.,2006).However, structure(i.e.,therandomintercepts),twovariancesandonecovariancefor
wecanmakeuseofthefactthattheregularchi-squaredifference thefirstoccasionatthewithin-personlevel,fourlaggedparametersforthe
firstinterval,fourlaggedparametersforthesecondinterval,tworesidual
testisconservativeinthiscontext,meaningthat,ifitissignificant,
variancesandoneresidualcovarianceatthesecondoccasionatthewithin-
wearecertainthatthecorrect(i.e.,chi-bar-squaredifference)test
personlevel,andtworesidualvariancesandoneresidualcovarianceatthe
willbesignificanttoo. thirdoccasionatthewithin-personlevel.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 105

Here we consider four of these, that is: (a) the Stable Trait It allows people to be characterized by their own trajectory over
Autoregressive Trait and State (STARTS) model (Kenny & Zau- time (as in the LGC model), while their observations may also
tra, 1995; Kenny & Zautra, 2001); (b) the Autoregressive Latent exhibitsomecarry-overeffectfromoneoccasiontothenext(asin
Trajectory(ALT)model(Bollen&Curran,2006;Curran&Bol- theautoregressiveorsimplexmodel).Inthebivariateextensionof
len,2001);(c)theLatentChangeScore(LCS)model(Hamagami the ALT model presented by Curran and Bollen (2001), the ran-
& McArdle, 2001; McArdle & Hamagami, 2001); and (d) a domeffectsthatdescribetheindividualtrajectoriesmaybecorre-
modification of the Latent State-Trait (LST) model (Schmitt &
latedtoeachotheracrossthevariables(asisthecaseinabivariate
Steyer, 1993; Steyer, Schwenkmezger, & Auer, 1990). In this
LGC model), and there may also be cross-lagged influences be-
sectionwediscusstherelatednessbetweentheRI-CLPMandthese
tweentheobservations(asintheCLPM).
fouralternatives,focusingonthesubstantiveandmethodological
While this hybrid model seems to have a lot of potential,
similaritiesanddifferences.Notethatthissectionisdecidedlynot
applyingandinterpretingtheALTmodelisnotasstraightforward
meantasanindepthevaluationofthesediversealternatives:The
as one may be inclined to think at first: Because the lagged
interested reader is referred to the included citations for further
relationships are included between the observations, there is a details.
recursivenessinthemodel,whichhassomeadverseeffects.First,
STARTS Model by Kenny and Zautra it implies the process needs to be “started up,” for which Curran
andBollen(2001)proposetwosolutions:Eitherthefirstobserva-
TheSTARTSmodelbyKennyandZautra(2001),isalsoknown tionistreatedasexogenous,ornonlinearconstraintsareimposed
as the Trait State Error (TSE) model (Kenny & Zautra, 1995). It
on the loadings for the first occasion. While treating the first
allows the user to decompose observed variance into three com-
occasionasexogenousisrelativelyeasy,JongerlingandHamaker
ponents: (a) the stable trait, which does not change; (b) the au-
(2011) show that this may lead to rather unexpected growth
toregressive trait, which changes according to an autoregressive
curves: For instance, in an ALT model with a random constant
process;and(c)thestateorerror,whichisuniquetotheoccasion.
only(i.e.,nolineartrendparameter),onemayactuallybemodel-
Originally, Kenny and Zautra (1995) included constraints over
inganincreasingordecreasingtrendovertime.Suchundesirable
time in their model, such that the relative contributions of these
effectsarenotencounteredwhenusingthenonlinearconstraintsto
three components remains stable over time, but these constraints
start up the process, but these require the assumption that the
may be relaxed if enough measurement waves are available (cf.
lagged effects are constant over time,6 and are more difficult to
Lucas&Donnellan,2007).
impose,especiallyinthebivariatecase.
Mostapplicationsofthismodelarebasedonunivariaterepeated
measurements,butKennyandZautra(1995)andZautra,Marbach, Second, the recursiveness in the ALT model implies that the
Raphael,Lennon,andKenny(1995)considerbivariateextensions randomconstantandtherandomchangeparameternolongerhave
ofthismodelaswell.TheRI-CLPMproposedinthecurrentarticle the original role of individuals’ intercepts and slopes (Hamaker,
differs from the bivariate STARTS model in that it does not 2005). For instance, the random constant not only affects an
includemeasurementerror:TheRI-CLPMcanthusbethoughtof observation directly, but also indirectly through (all) previous
asaspecialcaseoftheSTARTSmodel(withouttheconstraintson occasions. Hamaker (2005) has shown that under the assumption
thelaggedrelationshipsovertime),inwhichtheobservationsare thatthelaggedeffectsareinvariantovertime,theALTmodelcan
modeledwithoutmeasurementerror. be rewritten as a LGC model with autoregressive residuals, with
Clearly, the inclusion of measurement error in itself is recom- theadvantagethattherandomparametersinthisreparametrization
mendable, as we know that measurement error is likely to be serveastherandominterceptandslopethatdescribetheunderly-
presentinpsychologicalmeasurements.However,KennyandZau- ing individuals’ deterministic trends. This result has also been
tra(2001)indicatethatthemodelisoftendifficulttoestimate,and extendedtomultivariateprocesses,meaningthatthebivariateALT
that it may require 10 or more waves of data. Cole, Martin, and
modelscanberewrittenasabivariateLGCmodelwithresiduals
Steiger (2005) performed a simulation study and concluded that
that are characterized by autoregressive and cross-lagged regres-
the (univariate) STARTS model frequently led to improper solu-
siverelationships(Hamaker,2005).
tions that were difficult to interpret (i.e., negative variance esti-
Consideringthislatterparametrization,theRI-CLPMisrelated
mates,orproblemswithconvergenceintheformofsingularityof
to a bivariate ALT model with only random intercepts and no
the approximate Hessian matrix). They also discuss some of the
randomslopes.However,intheRI-CLPMwedonotconstrainthe
reasonsforthis:Forinstance,whentheautoregressiveparameteris
meanstructure,meaningthattheremaybechanges—possibly,but
very close to zero, it becomes difficult to distinguish between
not necessarily linear—over time, which are identical for all
variancethatisduetomeasurementerror,andvariancethatisthe
individuals.Ifthegroupmeanscanbeconstrainedtobeequalover
stochasticinputoftheautoregressiveprocess.Thus,whileextend-
time, the RI-CLPM is nested under the ALT model with only a
ing the model with measurement error may be preferable from a
theoretical point of view, the practical consequences (i.e., having randominterceptandnoslope(usingtheparametrizationproposed
tohavemanymoremeasurementwaves),makeitalessattractive byHamaker,2005,toavoidtherecursivenessinthemodel).
alternativeforthetraditionalCLPM.
ALT Model by Curran and Bollen 6Actually,oneonlyhastoassumethelaggedrelationshipswereinvari-
antbeforetheobservationsstarted,whichisratherabstractwhenconsid-
TheALTmodelwasdevelopedbyCurranandBollen(2001;see eringthemodelasalocaldescriptioninsteadofaneverlastingtruth;hence,
alsoBollen&Curran,2006),to“combinethebestoftwoworlds:” thisisnotaveryrestrictiveassumptioninpractice.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
106 HAMAKER,KUIPER,ANDGRASMAN

LCS Model by McArdle and Hamagami whichisthendecomposedintoatrait-likepartandanoccasion-
specific part: Although there are some alternatives (see Geiser
The LCS model, also known as the Latent Difference Score
& Lockhart, 2012; Schmukle, Egloff, Burns, 2002; Vecchione
(LDS) model, was proposed by McArdle and Hamagami (2001;
& Alessandri, 2013), the trait-like part is often included as a
Hamagami&McArdle,2001),andformsarathergeneralmodel-
second-order factor relating the states—which are represented
ing framework that includes many longitudinal SEM approaches
bythefirst-orderfactors—toeachother.Theoccasion-specific
as special cases. What is characteristic of the LCS model is that
part is the residual part of the state factor, which was not
latent changes (i.e., the differences scores corrected for measure-
accounted for by the trait.
ment error), from one occasion to the next are modeled as a
TheLSTmodelhasbeenextendedwithautoregressiverelation-
function of a constant change parameter and a proportional
shipseitherbetweenthestatefactors(introducingasimilarrecur-
change parameter that depends on the preceding score: For this
siveness as exists in the ALT model and the LCS model), or
reason the model is also referred to as the Dual Change Score
betweentheoccasion-specificcomponents(toavoidthedetrimen-
model(McArdle,2009).
talrecursivenessinthemodel):ThelatterhasbeencoinedtheTrait
In the bivariate extension of this model, change is not only a
StateOccasion(TSO)model(Coleetal.,2005).Recently,theTSO
function of a constant change parameter and the proportional
has been modified by Luhmann, Schimmack, and Eid (2011) to
change parameter, but also of the preceding score on the other
handlesingleindicatordata.Inthismodifiedmodel,themeasure-
variable. The cross-lagged paths, going from one variable to the
menterrortermisomitted,thetraitfactorismodeledasaseparate
changeintheother,arereferredtoascouplingparameters,rather
factor with free factor loadings over time (rather than a second-
thancross-laggedregressionparameters.Theinterpretationisthe
order factor), and second-order autoregressive relationships are
same,however,inthatsignificantcouplingparametersimplythat
included. Note that if the measurement error term had been kept
one variable has the tendency to impact changes in the other
(andthesecond-orderautoregressiverelationshipswereomitted),
variable (McArdle & Grimm, 2010). But instead of comparing
themodelwouldbeidenticaltotheSTARTSmodel.
standardized coefficients in order to determine which variable is
Luhmann et al. (2011) also propose a bivariate version of the
causally dominant, the coupling parameters are used to set up a
model,whichincludescross-laggedregressionpathsbetweenthe
vectorfieldwhichdepictstheexpectedchangesfromoneoccasion
occasion-specificcomponents(andnosecond-orderautoregressive
tothenextonbothvariablesasafunctionofthecurrentstate(see
relationships).TheRI-CLPMcanbeseenasaspecialcaseofthis
Boker & McArdle, 1995; McArdle, 2009; McArdle & Grimm,
bivariatesingleindicatorLSTmodel,inwhichthefactorloadings
2010). This plot is then used to make statements like: “The
forthetraitsareconstrainedto1overtime.Inapplyingthismodel
resulting flow shows a dynamic process, where scores on Non-
Verbal abilities have a tendency to impact score changes on the to empirical data, Luhmann et al. focus on decomposing the
Verbal scores, but there is no notable reverse effect” (p. 348, variance into separate parts, as is also the goal in applying the
McArdle,2005). STARTS model and the original LST model. Furthermore, they
TheLCSmodelhasbeenextendedwithwhathasbeenreferred decompose the covariance between the two variables into a part
to as “dynamic error,” to distinguish it from measurement error accountedforbythetraits,apartaccountedforbytheautoregres-
(seeforinstanceMcArdle,2001):Whilemeasurementerroronly siveandcross-laggedregressiverelationships,andapartduetothe
affectstheobservationatthecurrentoccasion,dynamicerrorfeeds relationshipbetweentheresidualsoftheoccasion-specificfactors.
forward through the lagged relationships, affecting the trajectory
ofthesystemandmakingitastochasticratherthandeterministic
Conclusion
process.TheRI-CLPMcanbethoughtofascloselyrelatedtothe
LCSmodelwithdynamicerror,butwithoutmeasurementerroror Clearly, the models discussed above show some overlap with
aconstantchangeparameter.However,theLCSmodelischarac- eachotherandwiththeRI-CLPMpresentedinthecurrentarticle.
terizedbyasimilarrecursivenessasispresentintheALTmodel, Whenconsideringthesediversemodelingstrategies,twoobserva-
andthereforetherandominterceptterm,whichdirectlyaffectsthe tionsseemofkeyimportance.First,ifresearchersarespecifically
first latent score, also influences future occasions indirectly. Be- interestedindecomposingthevarianceintotrait-likeandstate-like
causetheprocessisnot“startedup”asisdoneinALTmodeling, componentsandthemeansarenotofinterest,theSTARTSmodel
therecursivenessisnotdealtwithinsuchawaythatwecanensure and the models based on the LST model are most relevant. In
theprocessisstableintheabsenceofaconstantchangeparameter. contrast,iftheinterestisinindividualdevelopmentaltrajectories,
Asaresult,theRI-CLPMisnotaspecialcaseoftheLCSmodel, theALTmodelandtheLCSmodelaremoreappropriate,asthey
althoughtheymaybecloselyrelatedincertainsituations. arebasedonmodelingboththemeanstructureandthecovariance
structure and allow for individuals to have their own growth
The LST Model by Steyer and Colleagues
curves.Second,theSTARTSmodel,theALTmodelandtheLST
TheLSTmodelwasoriginallydevelopedtodistinguishbetween modelaremosttypicallyappliedtounivariatedata(eventhough
measurementerrorandthetruescore(i.e.,alatentvariable),andto the original LST model uses multiple indicators); while bivariate
further decompose the true score into a trait-like and a state-like (ormultivariate)extensionsarepossible,theydonotformthecore
part (Schmitt & Steyer, 1993; Steyer, Mayer, Geiser, & Cole, focus and the cross-lagged regression parameters are not of key
2015; Steyer, Schwenkmezger, & Auer, 1990). In practice this interest. In contrast, the LCS model is most typically used to
typically implies that it is assumed that there is an underlying investigate how two variables influence each other (based on the
construct, which is measured by multiple indicators. This under- expected change described with the vector field), although it can
lyingconstructataparticularoccasionisreferredtoasthe state, alsobeappliedtounivariatedata.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 107

the T R he I-C ab L o P v M e o a b g s a e i r n v s a t ti t o h n e s se ar a e lte re rn le a v ti a v n e t s , . b T e h c e au m se ai t n he i y ns h p e ir l a p ti p o i n tti f n o g r (cid:10) t S S D D (x ( i y ,t(cid:7) ) 1 ) (cid:2)(cid:6) 1(cid:7)(cid:2) cov((cid:12) i ,(cid:11) i )(cid:4)cov (cid:4) q i * ,t(cid:7)1 ,p i * ,t(cid:7)1 (cid:5)(cid:3)2(cid:7)(cid:7)1
it
proposing the RI-CLPM is that we want to obtain estimates of (cid:13)(cid:6) cov((cid:12),(cid:11))(cid:4)(cid:9)*cov (cid:4) q* ,p* (cid:5)(cid:4)(cid:10)*var (cid:4) p* (cid:5)
cross-laggedregressionparametersthattrulyreflecttheunderlying i i t i,t(cid:7)1 i,t(cid:7)1 t i,t(cid:7)1
reciprocalprocessthattakesplaceatthewithin-personlevel.The (cid:7)(cid:2) cov((cid:12) i ,(cid:11) i )(cid:4)cov (cid:4) q i * ,t(cid:7)1 ,p i * ,t(cid:7)1 (cid:5)(cid:3)
model thus requires bivariate (or multivariate) data, the mean (cid:13)(cid:2) var((cid:12))(cid:4)(cid:9)*var (cid:4) q* (cid:5)(cid:4)(cid:10)*cov (cid:4) q* ,p* (cid:5)(cid:3)(cid:7),
i t i,t(cid:7)1 t i,t(cid:7)1 i,t(cid:7)1
structure is not (necessarily) of interest, and the focus is on how
(5)
(i.e.,positiveornegativecross-laggedcoefficients),andhowmuch
(i.e., compare standardized absolute values of cross-lagged coef-
whichshowsthatitisacomplexfunctionof:(a)thecross-lagged
ficients) the variables influence each other. Hence, because the regressioncoefficientfromvariablextovariabley,thatis(cid:10)*;(b)
t
focus is on the covariance structure rather than the mean and thewithin-personautoregressiveparameterofvariabley,thatis(cid:9)*;
t
covariance structures, we could say that the RI-CLPM is more (c) the covariance between the within-person deviations at the
closely related to the STARTS model and the LST and TSO previous time point, that is cov(cid:4)q* ,p* (cid:5); (d) the variance of i,t(cid:7)1 i,t(cid:7)1
models. However, the goal is not to decompose the variance and the within-person deviation at the preceding occasion, that is
covarianceintotrait-likeandstate-likeparts,buttodeterminehow var(cid:4)q* (cid:5); (e) the variance of the trait-like component, that is
i,t(cid:7)1
the variables influence each other through the cross-lagged rela- var((cid:11));and(f)thecovariancebetweenthetrait-likecomponents,
i
tionships at the within-person, state-like level, while controlling thatiscov((cid:12),(cid:11)).
i i
fortrait-likedifferencesatthebetween-personlevel.Withthisgoal Considering the first objective of cross-lagged panel research,
inmind,theRI-CLPMcanbethoughtofasmorecloselyrelated thatis,isthereasignificanteffectofonevariableontheother,the
tothebivariateALTmodelortheLCSmodel,althoughthereisno relationshipinEquation5isnotveryinformative,althoughitmay
inherentinterestinindividualdevelopmentaltrajectories. beexpectedthatthetwomodelswillnotnecessarilyleadtosame
Insum,itcanbestatedthatallmodelsdiscussedinthissection conclusionregardingthepresenceofacross-laggedrelationship.
could serve as alternatives to the CLPM: Each model forms an Withrespecttothesecondobjective,thequestioniswhetherthe
attempttoseparatebetween-persontrait-likedifferencesfromthe difference in absolute values of the standard cross-lagged coeffi-
within-person reciprocal process. While some of these models cients is of the same sign across the two models. That is, the
questioniswhether
include desirable properties such as measurement error and/or
differences in developmental trajectories, the advantage of the (cid:8) (cid:8) (cid:8) (cid:8) (cid:8) (cid:8) (cid:8) (cid:8)
RI-CLPM is that it is most closely related to the CLPM and (cid:10) SD(x i,t(cid:7)1 ) (cid:7) (cid:8) SD(y i,t(cid:7)1 ) and (cid:10)* SD(p i * ,t(cid:7)1 ) (cid:7) (cid:8)* SD(q i * ,t(cid:7)1 ) .
requiresonlythreewavesofdata.Becausetwoorthreewavesof SD(y it ) SD(x it ) SD(q i * t ) SD(p i * t )
data are currently the norm in cross-lagged panel research, the
areeitherbothpositive,leadingtotheconclusionthatxiscausally
RI-CLPM is more likely to be considered by researchers as a
dominant, or both negative, leading to the conclusion that y is
feasible alternative than models that require (many) more waves.
causally dominant. If these differences are not of the same sign,
In the following sections we focus on the CLPM and the RI-
thisimpliesthatusingonemodelleadstotheconclusionthatxis
CLPM, but we return to the issue of other alternatives in the
causallydominant,whiletheothermodelleadstotheconclusion
discussion.
that y is causally dominant. Clearly, that is not a desirable situa-
tion.Forinstance,wheninvestigatingthereciprocalinfluencesof
mothers’ harshness and children’s behavioral problems, the RI-
Comparing the Cross-Lagged Parameters
CLPMmayindicatedthatthemothersarecausallydominantand
Cross-lagged panel research is characterized by three major formthedrivingforceinthispotentiallynegativespiral,whilethe
objectives: First, the aim is to determine whether the variables CLPM may point to the children as being the instigator of mal-
have a significant effect on each other; second, the question is adaptive patterns. While it is difficult to evaluate when these
whichvariableiscausallydominant;andthird,researcherswantto models will lead to conflicting conclusions (due to the rather
knowwhetheravariablehasapositiveornegativeinfluenceonthe complexrelationshipsbetweenthemodels’differencesofabsolute
other variable. If researchers use the CLPM when the data were standardized cross-lagged parameters), we may expect that in
actually generated by the RI-CLPM, the question is whether this general larger trait-like differences are likely to have a stronger
alters their conclusions with respect to these three objectives. In distortingeffectthansmallbetween-persondifferences.
this section we focus on these issues through considering the The third objective concerns the sign of the cross-lagged pa-
rameters. Thus, the question is: If (cid:8)(cid:2) (cid:12) 0, will (cid:8) (cid:12) 0, and when
cross-laggedregressionparametersfrombothmodelsanalytically
(cid:8)(cid:2)(cid:13)0,will(cid:8)(cid:13)0?Naturally,thesamequestionappliesto(cid:7)(cid:2)and
andinsimulations.
(cid:7).Althoughthisisnotimmediatelyapparentfromtheexpression
in Equation 5, the many unrelated terms from the two levels
Analytical Comparison
stronglysuggestthat(cid:8)(cid:2)and(cid:8)notnecessarilyhavethesamesign.
Thisisagainquitedisturbing,asitsuggeststhatusingtheCLPM
In Appendix B we show that the standardized cross-lagged mayleadtotheconclusionthatmothers’harshnesshasadamping
regression parameter in the CLPM from variable x to variable y effectonchildren’sbehavioralproblems,whiletheRI-CLPMmay
canbeexpressedasafunctionoftheparametersoftheRI-CLPM, indicate that mothers’ harshness actually exacerbates the chil-
thatis dren’sbehavioralproblems.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
108 HAMAKER,KUIPER,ANDGRASMAN

Simulations
In order to further investigate the effect of using the CLPM
instead of the RI-CLPM with respect to the three objectives of
cross-lagged panel research identified above, we performed a
seriesofsimulationsbasedonfourmodels.Themodelsusedhere
werehandpickedinordertoillustrateseveralspecificsituationsin
which the CLPM may lead to contradictory results to the actual
underlying dynamics (in a similar vein as was done by Rogosa,
1980whencomparingthecross-laggedcorrelationstotheunder-
lying CLPM): Hence, we do not claim that these are necessarily
reflectingrealisticscenarios,althoughtheymay.Characteristicof
eachscenariohereisthatthecovarianceatthewithin-personlevel
is of a different sign than the covariance at the between-person
level,whichcanbeseenasaninstanceofSimpson’sparadox(cf.,
Kievit, Frankenhuis, Waldorp, & Borsboom, 2013).7 In all four
scenarios the within-person variances were set to 1, whereas the
between-personvarianceswere2or3.Asonemayexpect,moredramatic
(i.e., contradictive) results are obtained when the between-person
variancesaresubstantialincomparisontothewithin-personvari-
ances. Furthermore, in each scenario we set the autoregressive
parametersforbothvariablesto.5,becauseautoregressiveparam-
eters have to lie between (cid:9)1 and 1 and typically (although not
necessarily) will be larger than 0. The cross-lagged parameters
werechosentoreflectdiversescenarios(e.g.,noeffects,astrong
Figure 2. Standardized cross-lagged parameter estimates obtained with
vs.asmalleffectetc.),butinallcasestheirvaluesweresmaller(in
thetraditionalCLPM.GeneratingvaluesfromtheRI-CLPMaredenoted
absolutevalue)thantheautoregressiveparameters,andtheywere
bythediamond.AreasAindicatesolutionsinwhich|(cid:8)|(cid:14)|(cid:10)|suchthat
chosen such that the bivariate process was covariance stationary variablexiscausallydominant;areasBindicatesolutionsinwhich(cid:8)|(cid:15)|(cid:10)|
(cf.Hamilton,1994). suchthatvariableyiscausallydominant.Only250estimates(ofthe1000
We used Mplus (Muthén & Muthén, 1998–2012), to simulate replications)permodelareplottedforreasonsofclarity.
two-wave bivariate data according to a RI-CLPM, which were
subsequently used to estimate the traditional CLPM. For each
model,1,000replicationsweregeneratedtoensurestableresults. The second model is characterized by cross-lagged regression
WeusedasamplesizeofN(cid:4)200,whichseemstobeanaccepted parameters of .3. The within-person covariance was set to .5
samplesizeforatwo-waveCLPM.Savingtheparameterestimates (implying that the innovation variances were .51 and the covari-
inaseparatefile,whichwethenimportedintoR(RCoreTeam, ancebetweentheinnovationswas.03).Thebetween-personvari-
2012),wecomputedthestandardizedcross-laggedparameters(as ances were set to 2, and the between-person covariance was set
Mplusdoesnotallowforthecomputationofstandardizedparam- to (cid:9)1. In the upper-right panel of Figure 2 the standardized
etersincaseofMonteCarlosimulations). cross-lagged parameter estimates are plotted. Based on 1,000
The first model is characterized by an absence of reciprocal replications, the average (cid:7) estimate was (cid:9).003 (SD (cid:4) .032,
averageSE(cid:4).034),andtheaverage(cid:8)estimatewas(cid:9).003(SD(cid:4)
effects. The covariance between the two variables at the within-
.034,averageSE(cid:4).034).Coverageratesforthe95%confidence
person level was .4 (implying that the residual variances at the
intervalcontainingzerowere.951and.945,respectively,indicat-
secondwavewere.75andtheresidualcovariancewas.3,basedon
ingthatinabout95%ofthecasesitwouldbeconcludedthatthese
stationarityconstraints).Thebetween-personvariancesweresetto
3foreachvariable,andthecovarianceatthislevelwassetto(cid:9)2. parametersarenotsignificantlydifferentfromzero,althoughthere
weresubstantialcross-laggedrelationshipsinthemodelthatgen-
Intheupper-leftpanelofFigure2,thestandardizedcross-lagged
eratedthedata.
parameterestimatesofthismodelareplotted.Itclearlyshowsthat
Thethirdmodelisbasedonanasymmetryintheacross-lagged
thepointestimatesarefarfromthegeneratingvalues(indicatedby
relationships:(cid:7)wassetto(cid:9).3(fromvariableytovariablex),and
the diamond). The average (cid:7) estimate was (cid:9).118 (SD (cid:4) .036,
(cid:8)wassetto.1(fromxtoy).Thewithin-personcovariancewasset
averageSE(cid:4).036),andtheaverage(cid:8)estimatewas(cid:9).120,(SD(cid:4)
to (cid:9).5 (implying that the innovation variances were .51 for the
.037, average SE (cid:4) .036). Considering whether the 95% confi-
x-variable and .79 for the y-variable, while their covariance
dence intervals of these parameter estimates contained zero, we
obtainedcoverageratesof.105forthe(cid:7)parameter,.103forthe(cid:8)
parameter, which implies that in about 90% of the cases, the 7Apossibleexamplecouldbetherelationshipbetweennumberofwords
CLPM would lead to the conclusion that there is at least one typedperminuteandthenumberoftypos:Atthewithin-personlevelthere
isapositiverelationship,asapersontendstomakemoremistakeswhen
significant negative cross-lagged parameter, although no cross-
(s)he types faster, while at the between-person level there is a negative
laggedrelationshipswerepresentinthemodelthatgeneratedthe
relationshipaspeoplewhohavemoreexperiencetendtotypefasterwhile
data. makingfewermistakes,andviceversa.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 109

was(cid:9).29).Thebetween-personvariancesweresetto2andtheir between-person variance was relatively large (i.e., two or three
covariancewassetto1.Thestandardizedcross-laggedparameter timesaslargeasthewithin-personvariance),andingeneralitcan
estimates are given in the lower-left panel of Figure 2. It shows bestatedthattheresultsfromtheCLPMdeviatedmorefromthe
that while the original combination of parameter values is in the generating RI-CLPM when the between-person variances in-
areathatischaracterizedbyastandardized|(cid:10)|thatissmallerthan creased. Furthermore, the correlation at the between-person level
thestandardized|(cid:8)|,indicatingthatvariableyiscausallydominant, alsoinfluencestheresults,especiallyifitisoftheoppositesignof
mostpointestimatesfallintheareainwhichthestandardized|(cid:10)| the correlation that exists at the within-person level (i.e., in the
isactuallylargerthanthestandardized|(cid:8)|,leadingtotheopposite presenceofSimpson’sparadox,Kievitetal.,2013).Finally,sam-
conclusionthatvariablexiscausallydominant.Theaverageesti- plesizeaffectsthevariabilityinestimatesandtheirstandarderrors
matefor(cid:7)is.002(SD(cid:4).039,averageSE(cid:4).040),andfor(cid:8)itis (i.e., both are inversely related to sample size), but the bias
.151(SD(cid:4).034,averageSE(cid:4).033).For(cid:7)(whichequaled(cid:9).3 resulting from estimating a model that does not distinguish be-
inthegeneratingmodel),thecoveragerateofthe95%confidence tween within-person dynamics and between-person trait-like dif-
intervalcontainingzerowas.958,whichimpliesthatinabout95% ferencesdoesnotvanishwhensamplesizeincreases.
ofthecasestheconclusionwouldbethatthereisanonsignificant
relationshipfromytox.Thecoveragerate(cid:8)(wheretrue(cid:8)is.1)
Modeling Strategy
was .010, which implies that in 90% of the cases a significant
relationship from variable x to y would be detected. This further To avoid the pitfall exposed above, we propose a modeling
shows that the CLPM may result in the wrong variable being strategy that allows us to investigate whether there are trait-like,
identifiedasbeingcausallydominant. time-invariantindividualdifferencespresentintheconstructsthat
Finally,thefourthmodelisalsocharacterizedbyanasymmetry, arestudied,whichshouldbeaccountedforthroughtheinclusionof
inthat(cid:7)(fromvariableytox)wassetto.3and(cid:8)wassetto.1. a random intercept. This strategy is based on the fact that the
The within-person covariance was set to .5 (implying that the CLPM is nested under the RI-CLPM, such that if three or more
innovationvariancesofvariablesxandywere.72and.60,respec- wavesofdataareavailable,bothmodelscanbefittedtothedata
tively, and the covariance between the innovations was (cid:9).056). andcanbecomparedusingachi-bar-squaretestforthedifference
The between-person variances ware set to 3 and their covariance inchi-squares(Stoeletal.,2006).Weillustratethisstrategyusing
to (cid:9)2. The standardized point estimates of the cross-lagged pa- data that are reported in Soenens Luyckx, Vansteekiste, Duriez,
rametersarepresentedinthelower-rightpanelofFigure2,show- and Goossens (2008), concerning the effect of diverse aspects of
ingthat,whilethegeneratingcross-laggedparametersimpliedthat parenting style on depressive symptoms of adolescents and vice
variableywascausallydominant,theparameterestimatesalmost versa. The data were obtained from 396 students and consist of
alwaysleadtotheconclusionthatvariablexiscausallydominant. three waves, with intervals of one year, starting in the fall of the
Theaveragepointestimatefor(cid:7)was(cid:9).023(SD(cid:4).037,average firstyearincollege.
SE (cid:4) .036), and for (cid:8) it was (cid:9).093 (SD (cid:4) .033, average SE (cid:4) We begin with considering the relationship between Parental
.033). The 95% confidence intervals included zero with a rate of Psychological Control (based on items like “My parents are less
.897for(cid:7),and.192for(cid:8),meaningthatinalmost90%ofthecases friendlytomeifIdon’tseethingsliketheydo”),andAdolescents’
wewouldfailtodetecttherelationshipfromvariableytox(which Depressive Symptomatology. First, we fit a model in which the
inrealitywas.3),whileinmorethan80%ofthecaseswewould meansofeachvariableareconstrainedovertime(i.e.,(cid:3) (cid:2)(cid:3)and
t
detect a significant negative relationship from variable x to y (cid:5) (cid:2)(cid:5)),whilethecovariancestructureisunconstrained:Models
t
(which in reality was .1). This illustrates another disturbing fact: in which the group means do not change over time facilitate
The CLPM may result in a significant estimate of a cross-lagged interpretation, although time-invariant means are no prerequisite
parameterthatactuallyhasadifferentsignthanthecorresponding for the models considered here. The fit of this model is not
cross-laggedparameterinthegeneratingmodel. satisfactory,accordingtosomemeasures(chi-squareis13.75,4df,
p(cid:4).008;RMSEA(cid:4).078),whereasothermeasuresindicatethis
is a good model (CFI (cid:4) .990; SRMR (cid:4) .024). Inspection of the
Conclusion
meansshowsthatespeciallythemeanofAdolescents’Depressive
While the algebraic relationship in Equation 5 shows that the Symptomatology at the first wave is higher than at the other two
cross-lagged parameters from the two models are not necessarily waves: This measurement is from the first semester that the par-
identical,itisnoteasytoseehowtheywilldiffer,especiallyinthe ticipantsareincollege,andtheelevatedaveragemaythusreflect
light of the three objectives of cross-lagged panel research. The the difficulties associated with getting adjusted to these new
simulationswepresentedhereshowhoweverthattheCLPMcan circumstances. Freeing this mean leads to appropriate model fit
leadtospuriousresultsregardingallthreeobjectivesinthislineof ((cid:16)2(cid:4)3(cid:5)(cid:2)3.33,p(cid:4).344;RMSEA(cid:4).017;CFI(cid:4)1.000;SRMR(cid:4)
research, that is, it can be misleading with respect to: (a) the .011). Although constraining this first mean does not affect our
presenceofcausalrelationships(Models1and2);(b)thecausal resultsforthelaggedparametersinasubstantiveway,theresults
priorityoftwovariables(Models3and4);and(c)thesignofthe reportedbelowarebasedonthemodelinwhichthisfirstmeanfor
causalrelationship(Model4). Adolescents’DepressiveSymptomatologyisnotconstrainedtobe
The simulations here were designed to illustrate these specific equaltothemeansatsubsequentwaves.
situations,withouttheintentiontorepresenttypicalpsychological Second,wemodelthecovariancestructureusingtheRI-CLPM,
processes.Thefactisthatwedonotknowwhatwouldbetypical while keeping the constraints on the means (except for the first
values for the parameter of the RI-CLPM, because this is not a mean of Adolescents’ Depressive Symptomatology), and time-
modelthatiscurrentlyusedinpractice.Inthesimulationsherethe invariant lagged parameters. This model fits well (chi-square is
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
110 HAMAKER,KUIPER,ANDGRASMAN

9.85,8df,p(cid:4).276;RMSEA(cid:4).024;CFI(cid:4).998;SRMR(cid:4).025). Comparing the standardized lagged parameter estimates from
Finally,wefittheCLPM,withthesameconstraintsonthemeans bothmodelsgiveninFigure3,theRI-CLPMleadstotheconclu-
andlaggedparametersasusedinthepreviousmodel.Thismodel sion that there are no reciprocal influences between Parental
doesnotfitwellaccordingtosomemeasures(chi-squareis66.18, Responsiveness and Adolescents’ Depressive Symptomatology,
11df,p(cid:13).001;RMSEA(cid:4).113),althoughothermeasuresleadto whereastheCLPMleadstotheconclusionthatthereisasignifi-
the conclusion that the model fits approximately (CFI (cid:4) .943; cant negative effect from Parental Responsiveness to subsequent
SRMR(cid:4).042).Notethatbecausethenull-modelhereconsistsof Adolescents’ Depressive Symptomatology (and while there is no
fixingtwoparametersontheboundaryoftheparameterspace(i.e., significant effect from adolescents to parents, it would be con-
twovariancesfixedtozero),thestandardchi-squaredifferencetest cludedthatparentsarecausallydominanthere).
will be too conservative (see Stoel et al., 2006). The chi-square In conclusion, the modeling strategy illustrated above shows
differenceis66.18(cid:9)9.85(cid:4)56.33,with3df,whichissignificant thatitispossibletoinvestigatewhethertheconstructsarecharac-
atan(cid:5)of.05(thatis,p(cid:13).01). terizedbytime-invariant,trait-likeindividualdifferences,andthat
To show that the substantive interpretation of the underlying using the traditional CLPM can lead to erroneous conclusions
processdependsonthemodeloneuses,weconsiderthestandard- regarding the pattern of mutual influences. Hence, researchers
izedcross-laggedregressionparameterestimatesfrombothmod- should make sure to use an alternative that decomposes the vari-
els presented in Figure 3. It shows that both models lead to ance into between-person differences and the within-person pro-
significant positive cross-lagged parameters. However, while the cess. If the constructs are not characterized by time-invariant,
RI-CLPMindicatesthattheeffectofParentalPsychologicalCon- trait-like individual differences, running the RI-CLPM will not
trol on Adolescents’ Depressive Symptomatology is only slightly affecttheresultssubstantially,althoughinthatcaseonecanalso
largerthanthereverseeffect(i.e.,.240vs..212and.265vs..205 usethesimplerCLPMinstead.
betweenWave1andWave2),theCLPMleadstotheconclusion
thattheeffectofparentsonadolescentsismuchlargerthanthatof
Discussion
adolescents on their parents (i.e., .239 vs. .139 and .248 vs. .134
betweenWave1andWave2).Hence,usingtheCLPMwouldlead Rogosasummarizedhiscritiqueonthecross-laggedcorrelation
to the conclusion that parents are causally dominant, while the methodology—whichhereferredtoasCLC—saying:“CLCmay
RI-CLPM leads to the conclusion that the reciprocal process is indicate the absence of direct causal influence when important
muchmoresymmetric. causalinfluences,balancedorunbalanced,arepresent.Also,CLC
We apply the same procedure for the variables Parental Re- may indicate a causal predominance when no causal effects are
sponsiveness(basedonitemslike“Myparentsmakemefeelbetter present. Moreover, CLC may indicate a causal predominance
after I discussed my worries with them”), and Adolescents’ De- oppositetothatoftheactualstructureofthedata;thatis,CLCmay
pressiveSymptomatology.Here,boththefirstmeanoftheadoles- indicatethatXcausesYwhenthereverseistrue”(p.246,Rogosa,
cents’ variable, and the last mean of the parents’ variable were 1980).Inthecurrentarticle,similarproblemshavebeenexposed
estimated freely, in order to obtain a fitting model (chi-square is inthecontextoftheCLPM.Thatis,theCLPMmayindicatethere
.933, 2 df, p (cid:4) .627; RMSEA (cid:4) .000; CFI (cid:4) 1.000; SRMR (cid:4) arereciprocaleffectswhenthesedonotexist(Model1),andmay
.006):ThelastmeanofParentalResponsivenesswassignificantly failtodetectthemwhentheydoexist(Model2).Furthermore,the
lower than that at the other two measurement waves, which may CLPM may identify one variable as being causally dominant,
reflecttheincreasingindependenceoftheadolescentsinthethird when in fact the other variable is (Models 3 and 4). Finally, the
yearofcollege.TheRI-CLPMfittedwellaccordingtoallfourfit CLPM may indicate a negative influence from one variable on
measures (chi-square is 11.86, 7 df, p (cid:4) .105; RMSEA (cid:4) .042; another,whileinrealitytheeffectispositive(Model4).
CFI(cid:4).996;SRMR(cid:4).031),whiletheCLPMgavemixedresults Thesourceoftheseproblemsisthefailuretoadequatelysepa-
(chi-squareis76.01,10df,p(cid:13).001;RMSEA(cid:4).129;CFI(cid:4).939; rate the within-person and the between-person level in the pres-
SRMR (cid:4) .048). The chi-square difference is 76.01 (cid:9) 11.86 (cid:4) enceoftime-invariant,trait-likeindividualdifferences.Asaresult,
64.15, with 3 df, which is significant at an (cid:5) of .05 (that is, p (cid:13) theestimatesoflaggedparametersareconfoundedbytherelation-
.01). shipthatexistsatthebetween-personlevel(seeHamaker,2012for
Figure3. StandardizedparameterestimatesforSoenensdataobtainedwiththeRI-CLPM(abovethearrows)
andtheCLPM(belowthearrows).Standarderrorsaregivenbetweenparentheses.(cid:2)indicatessignificantat(cid:5)(cid:4)
.05;(cid:2)(cid:2)indicatessignificantat(cid:5)(cid:4).01;(cid:2)(cid:2)(cid:2)indicatessignificantat(cid:5)(cid:4).001.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 111

other situations in which this confounding may occur). As it is Despite our emphasis on the RI-CLPM as an alternative to the
reasonable to assume that most psychological constructs that are traditionalCLPMinthisarticle,wewanttostressthatitiscertainly
studied with cross-lagged panel designs are to some extent char- notourintentiontotrytoconvincethereaderthattheRI-CLPMis
acterizedbytime-invariantstabilityreflectingatrait-likeproperty necessarilythebestalternativefortheCLPM:Withoutadoubt,there
(atleastforthedurationofthestudy),itfollowsthatmanylagged willbemanyinstanceswhereanotherapproachismoresuited,some
parameters reported in the literature will not reflect the actual ofwhichwerealreadydiscussedinthisarticle.Here,webrieflytouch
within-person(causal)mechanism. uponfouradditionalissuesthatresearchersofreciprocallongitudinal
This is especially problematic if one wishes to use the results effectsareadvisedtoconsider.
from cross-lagged panel research as a basis for future interven- First,itisonlyreasonabletoexpectthatourmeasurementscontain
tions.Forinstance,theresultsobtainedwiththetraditionalCLPM some measurement error, and the relative contribution of measure-
foradolescentdepressionandparentalresponsivenessinthisarti- menterrorchangeswhenwedistinguishbetweenthewithin-person
cle,wouldleadtheresearchertoconcludethatincreasingparental and between-person levels. That is, after we have partialed out the
responsiveness should result in a reduction in depressive symp- stable between-person differences, the measurement error will ac-
tomsonpartoftheadolescent;however,theRI-CLPMshowsthat countformoreoftheremainingvariancethanofthetotalvariance.
thisresultisanartifact,andthatthereisactuallynolaggedeffect Consequently, the distorting effects of measurement error on our
fromparentalresponsivenesstoadolescents’depression.Notethat results will increase once we adequately separate the within-person
thisdoesnotimplythatthetwovariablesareunrelated:Infact,the fluctuations from the stable between-person differences. Measure-
trait-like individual differences are negatively correlated (esti- ment error can be handled either by obtaining a relatively large
matedcorrelationis(cid:9).443,SE(cid:4).067,p(cid:13).001),indicatingthat number of repeated measurements (say (cid:12) 10) such that a bivariate
parentswhotendtobemoreresponsiveonaverage,tendtohave STARTSmodelcanbeused,orbyhavingmultipleindicators(e.g.,
adolescents who suffer less from depressive symptomatology on testhalves)suchthatabivariateTSOmodelcanbeestimated;inboth
average. However, we cannot derive a causal mechanism from cases,theresearcherwillbeabletodistinguishbetweenthewithin-
theseresults,whichexplainsthisrelationshipandthatcanbeused personprocessandstabletrait-likebetween-persondifferences,while
as the foundation for an intervention. This shows that “getting it controllingformeasurementerror.
right”withrespecttothecross-laggedrelationshipsisnotjustan Second,thereisagrowingbodyofliteratureonapplyingcontin-
academicconcern. uous time modeling using SEM (see Oud, 2007; Oud & Delsing,
We found that 45% of the studies that we examined estimated 2010;Voelkle,Oud,Davidov,&Schmidt,2012),andthisapproach
the CLPM based on only two waves of data. In these cases, the has several important advantages over discrete time modeling as
CLPM is saturated, and hence no statements regarding model fit discussedinthecurrentarticle.Thatis,continuoustimemodeling—
canbemade:Thatis,themodelwillalwaysfitperfectly,andthe which is based on (stochastic) differential equations—can easily
interestinestimatingthismodelissimplyinobtainingestimatesof account for varying lags (i.e., intervals between the observations),
thecross-laggedregressionparameterswhicharecorrectedforthe bothovertimeandacrossindividuals.Hence,thisapproachismore
temporalstabilityoftheconstructs.Thisimpliesthattodate,itis appropriate for diverse kinds of longitudinal data with unequally
impossible to tell what portion of the results reported in the spaced observations, either by design or as the result of practical
literature based on the CLPM provide truthful reflections of the issues.Additionally,itcircumventstheproblemofhavingtodecide
actualreciprocalmechanisms,andwhatportionisflawedandifso, onthe“right”lagforaparticulareffect.Ashasbeenpointedoutby
howserioustheseerrorsare. Gollob and Reichardt (1987), the effect variables have on each
Researchers interested in studying lagged relationships are there- other—asquantifiedbythecross-laggedparameters—changewhen
forewelladvisedtoemploythefollowingapproach.First,aminimum anotherlagisconsidered,meaningthatresultsarehighlydependent
ofthreemeasurementwavesarerequired:Onlythencanthewithin- onthelagoneuses.Anadvantageofcontinuoustimemodelingisthat
person process be controlled for stable between-person differences itactuallyallowsustorepresenttheautoregressiveandcross-lagged
throughtheinclusionofarandomintercept.Note,however,thattobe effects as a function of the lag length (e.g., Oud & Delsing, 2010;
able to consider some of the other alternatives, more measurement Voelkleetal.,2012).
wavesareneeded.Second,startwithamodelinwhichonlythemeans Third, researchers may wish to consider models that allow for
areconstrainedovertime,whilethecovariancestructureisestimated individual differences in cross-lagged (and autoregressive) effects,
freely: This allows one to determine whether there are structural especiallyiftheyhaveintensivelongitudinaldata(saymorethan30
changesovertime.Ifthismodelprovestenable,subsequentmodels measurementoccasionsperperson).Tothisend,onecanusemulti-
canbespecifiedforthecovariancestructure,whileleavingthemeans level modeling, in which the lagged variables (either centered per
constrainedovertime.Ifthefirstmodelprovesuntenablehowever, person or not) are included as predictors (Bringmann et al., 2013).
the researcher should identify the source of misfit, and consider However, standard multilevel software typically does not allow for
freeingcertainmeans(aswedidintheempiricalapplicationsincluded morethanoneoutcomevariable,suchthatseparateanalysesneedto
inthisarticle),oruseanalternativemodelingapproachsuchasLGC be run for a multivariate system. Moreover, this approach does not
orALTmodeling(Hamaker,2005).Ifthereisnoneedforanalter- allowforvaryingintervalsbetweentheobservations,whileunequally
nativemodelbasedonthemeanstructure,theresearchercancontinue spacedobservationsarenotuncommoninintensivelongitudinaldata
withcomparingtheCLPMwiththeRI-CLPMinordertodetermine (for instance, as the result of experience method sampling). If one
whethertheconstructsarecharacterizedbytrait-likebetween-person wishesto:(a)considerrandomlaggedeffects;(b)allowforvarying
differences,orthatitcanbeassumedthatallindividualsvaryaround intervalsbetweenobservations(bothwithinandacrossindividuals);
the same mean (or trend when the means could not be constrained and(c)accountformeasurementerrorinabivariatesystem,onecan
overtime). make use of the free software package BHOUM (Oravecz, Tuer-
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
112 HAMAKER,KUIPER,ANDGRASMAN

linckx,&Vandekerckhove,2009).8Thismethodovercomesmanyof Cole, D. A., Martin, N. C., & Steiger, J. H. (2005). Empirical and
thelimitationsassociatedwithstandardmultilevelsoftwareforinves- conceptualproblemswithlongitudinaltrait-statemodels:Introducinga
tigatingrandomreciprocaleffects.Adrawbackofthecurrentversion trait-state-occasionmodel.PsychologicalMethods,10,3–20.
ofBHOUMishoweverthatitdoesnotallowforasymmetriccross- Cole, D. A., Nolen-Hoeksma, S., Girgus, J., & Paul, G. (2006). Stress
exposure and stress generation in child and adolescent depression: A
laggedeffectswithinaperson.Hence,whilethecross-laggedparam-
latent trait-state-error approach to longitudinal analyses. Journal of
eters may differ across individuals, for any particular person the
AbnormalPsychology,115,40–51.
influenceofx ony isidenticaltotheeffectofy onx.Another
t(cid:9)1 t t(cid:9)1 t Curran,P.J.,&Bollen,K.A.(2001).Thebestofbothworlds:Combining
issuethatneedstobeconsideredhereishowtocomparetherelative
autoregressiveandlatentcurvemodels.InL.M.Collins&A.G.Sayer
strengthofrandomcross-laggedparameters,asstandardizingparam- (Eds.),Newmethodsfortheanalysisofchange(pp.105–136).Wash-
etersinmultilevelmodelsisnotstraightforward(Nezlek,2001). ington,DC:AmericanPsychologicalAssociation.
Finally,onemayalsowanttoconsiderhowtheunderlyingprocess Deary,I.J.,Allerhand,M.,&Der,G.(2009).Smarterinmiddleage,faster
itselfchangesovertime.Forinstance,theeffectofthetime-invariant inoldage:Across-laggedpanelanalysisofreactiontimeandcognitive
individual differences may change over time, such that instead of ability over 13 years in the West of Scotland Twenty-07 Study. Psy-
havingarandomintercept,wewillsimplyhaveatrait(i.e.,alatent chologyandAging,24,40–47.
deHaan-Rietdijk,S.,Gottman,J.M.,Bergeman,C.S.,&Hamaker,E.L.
variablewithunconstrainedfactorloadingsovertime).Wemayalso
(2014). Get over it! A multilevel threshold autoregressive model for
expect developmental changes that are reflected by changes in the
state-dependentaffectregulation.Psychometrika.Advanceonlinepub-
autoregressiveorcross-laggedregressionparametersovertime(even
lication.
when the observations are equally spaced over time): Such nonsta-
Dwyer, J. H. (1983). Statistical models for the social and behavioral
tionarity is not uncommon when larger time spans are considered. sciences.Oxford,UK:OxfordUniversityPress.
Alternatively,theautoregressiveandcross-laggedparametersmaybe Erickson,D.J.,Wolfe,J.,King,D.W.,King,L.A.,&Sharkansky,E.J.
characterizedbyrecurrentchanges,reflectingswitchesbetweendif- (2001).Posttraumaticstressdisorderanddepressionsymptomatologyin
ferentstatesorregimes(e.g.,deHaan-Rietdijk,Gottman,Bergeman, a sample of Gulf War veterans: A prospective analysis. Journal of
& Hamaker, 2014). While some kind of heterogeneity over time— ConsultingandClinicalPsychology,69,41–49.
whether across years or second-to-second—is often more realistic Finkel,S.E.(1995).Causalanalysiswithpaneldata.ThousandOaks,CA:
Sage.
than assuming a stationary process that is in equilibrium, such in-
Gault-Sherman, M. (2012). It’s a two-way street: The bidirectional rela-
creasedcomplexityalwayscomesatthecostofrequiringmorewaves
tionship between parenting and delinquency. Journal of Youth and
ofdata.
Adolescence,41,121–145.
Inconclusion,theRI-CLPMpresentedhereisbutonealternative
Geiser, C., & Lockhart, G. (2012). A comparison of four approaches to
fortheCLPM:Infact,itisaratherrestrictivemodel,thatmaynot accountformethodfactorsinLatentState-Traitanalyses.Psychological
representthetruthverywellinmostcases.However,bypittingthese Methods,17,255–283.
twomodelsagainsteachother,weaimtoincreaseawarenessregard- Gollob,H.F.,&Reichardt,C.S.(1987).Takingaccountoftimelagsin
ingtheseriouslimitationsoftheCLPMforuncoveringwithin-person causalmodels.ChildDevelopment,58,80–92.
reciprocalprocesses,andindoingsowehopetoconvinceresearchers Granger, C. W. J. (1969). Investigating causal relations by econometric
toconsideralternativeapproaches,whateverthesemaybe. modelsandcross-spectralmethods.Econometrica,37,424–438.
Green,B.L.,Furrer,C.J.,&McAllister,C.L.(2011).Doesattachment
styleinfluencesocialsupportortheotherwayaround?Alongitudinal
studyofearlyHeadStartmothers.Attachment&HumanDevelopment,
8Theprogramanditsdocumentationcanbefoundathttp://www.cogsci
13,27–47.
.uci.edu/zoravecz/bayes/BOUM.php
Hamagami, F., & McArdle, J. J. (2001). Advanced studies of individual
differences: Linear dynamic models for longitudinal data analysis. In
References G.A.Marcoulides&R.E.Schumacker(Eds.),Newdevelopmentsand
techniquesinstructuralequationmodeling(p.203–246).Mahwah,NJ:
Allison, P. D. (2009). Fixed effects regression models. Thousand Oaks, ErlbaumAssociations.
CA:Sage. Hamaker,E.L.(2005).Conditionsfortheequivalenceoftheautoregres-
Bentler, P. M., & Speckart, G. (1981). Attitudes “cause” behaviors: A sive latent trajectory model and a latent growth curve model with
structuralequationanalysis.JournalofPersonalityandSocialPsychol- autoregressive disturbances. Sociological Methods and Research, 33,
ogy,40,226–238. 404–418.
Boker, S. M., & McArdle, J. J. (1995). Statistical vector field analysis Hamaker, E. L. (2012). Why researchers should think “within-person” a
applied to mixed cross-sectional and longitudinal data. Experimental paradigmaticrationale.InM.R.Mehl&T.S.Conner(Eds.),Handbook
AgingResearch,21,77–93. ofresearchmethodsforstudyingdailylife(p.43–61).NewYork,NY:
Bollen, K. A., & Curran, P. (2006). Latent curve models: A structural GuilfordPressPublications.
equationapproach.Hoboken,NJ:WileyandSons. Hamilton, J. D. (1994). Time series analysis. Princeton, NJ: Princeton
Bringmann, L. F., Vissers, N., Wichers, M., Geschwind, N., Kuppens, P., UniversityPress.
Peeters,F.,...Tuerlinckx,F.(2013).Anetworkapproachtopsychopa- Heise,D.R.(1970).Causalinferencefrompaneldata.SociologicalMeth-
thology:Newinsightsintoclinicallongitudinaldata.PLoSONE,8,e60188. odology,2,3–27.
Burt,K.B.,Obradovic´,J.,Long,J.D.,&Masten,A.S.(2008).Theinterplay Jongerling,J.,&Hamaker,E.L.(2011).Onthetrajectoriesoftheprede-
ofsocialcompetenceandpsychopathologyover20years:Testingtransac- terminedALTmodel:Whatarewereallymodeling?StructuralEqua-
tionalandcascademodels.ChildDevelopment,79,359–374. tionModeling,184,370–382.
Ciarrochi,J.,&Heaven,P.C.L.(2008).Learnedsocialhopelessness:The Kenny,D.A.,&Zautra,A.(1995).Thetrait-state-errormodelformulti-
roleofexplanatorystyleinpredictingsocialsupportduringadolescence. wavedata.JournalofConsultingandClinicalPsychology,63,52–59.
JournalofChildPsychologyandPsychiatry,49,1279–1286. Kenny,D.A.,&Zautra,A.(2001).Trait-statemodelsforlongitudinaldata.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 113

InL.M.Collins&A.G.Sayer(Eds.),Newmethodsfortheanalysisof R Core Team. (2012). R: A language and environment for statistical
change(p.243–263).Washington,DC:AmericanPsychologicalAsso- computing [Computer software manual]. Vienna, Austria. Retrieved
ciation. fromhttp://www.R-project.org/(ISBN3-900051-07-0)
Kievit,R.A.,Frankenhuis,W.E.,Waldorp,L.J.,&Borsboom,D.(2013). Ribeiro, L. A., Zachrisson, H. D., Schjolberg, S., Aase, H., Rohrer-
Simpsonsparadoxinpsychologicalscience:Apracticalguide.Frontiers Baumgartner, N., & Magnus, P. (2011). Attention problems and lan-
inPsychology,4,513. guagedevelopmentinpretermlow-birth-weightchildren:Cross-lagged
Kuppens,P.,Allen,N.B.,&Sheeber,L.B.(2010).Emotionalinertiaand relationsfrom18to36months.BMCPediatrics,11,59–70.
psychologicalmaladjustment.PsychologicalScience,21,984–991. Rindermann,H.(2008).Relevanceofeducationandintelligenceatthenational
Lifford,K.J.,Harold,G.T.,&Thapar,A.(2008).Parent–childrelation- levelfortheeconomicwelfareofpeople.Intelligence,36,127–142.
shipsandADHDsymptoms:Alongitudinalanalysis.JournalofAbnor- Rogosa,D.R.(1980).Acritiqueofcross-laggedcorrelation.Psychological
malChildPsychology,36,285–296. Bulletin,88,245–258.
Liker, L. K., Augustyniak, S., & Duncan, G. J. (1985). Panel data and Schmitt,M.J.,&Steyer,R.(1993).Thelatentstate-traitmodel(notonly)for
models of change: A comparison of first difference and conventional socialdesirability.PersonalityandIndividualDifferences,14,519–529.
two-wavemodels.SocialScienceResearch,14,80–101. Schmukle, S. C., Egloff, B., & Burns, L. R. (2002). The relationship
Lindwall, M., Larsman, P., & Hagger, M. S. (2011). The reciprocal betweenpositiveandnegativeaffectinthePositiveandNegativeAffect
relationshipbetweenphysicalactivityanddepressioninolderEuropean Schedule.JournalofResearchinPersonality,36,463–475.
adults: A prospective cross-lagged panel design using SHARE data. Silvapulle,M.J.,&Sen,P.K.(2004).Constrainedstatisticalinference:
HealthPsychology,30,453–462. Order,inequality,andshapeconstraints.Hoboken,NJ:Wiley.
Lucas,R.E.,&Donnellan,M.B.(2007).Howstableishappiness?Using Smith, L. E., Greenberg, J. S., Mailick Seltzer, M., & Hong, J. (2008).
theSTARTSmodeltoestimatethestabilityoflifesatisfaction.Journal Symptomsandbehaviorproblemsofadolescentsandadultswithautism:
ofResearchinPersonality,41,1091–1098. Effectsofmother–childrelationshipquality,warmth,andpraise.Amer-
Luhmann,M.,Schimmack,U.,&Eid,M.(2011).Stabilityandvariability icanJournalofMentalRetardation,113,387–402.
intherelationshipbetweensubjectivewell-beingandincome.Journalof Soenens, B., Luyckx, K., Vansteekiste, M., Duriez, B., & Goossens, L.
ResearchinPersonality,45,186–197. (2008).Clarifyingthelinkbetweenparentalpsychologicalcontroland
McArdle,J.J.(2001).Alatentdifferencescoreapproachtolongitudinal adolescents’ depressive symptoms: Reciprocal versus unidirectional
dynamic structural analysis. In R. Cudeck, S. du Toit, & D. Sórbom models.Merrill-PalmerQuarterly,54,411–444.
(Eds.),Structuralequationmodeling:Presentandfuture(p.342–380). Steyer,R.,Mayer,A.,Geiser,C.,&Cole,D.(2015).Atheoryofstatesand
Lincolnwood,IL:ScientificSoftwareInternational. traits–revised.AnnualReviewofClinicalPsychology.Advanceonline
McArdle,J.J.(2005).Fivestepsinlatentcurvemodelingwithlongitudinal publication.
life-spandata.AdvancesinLifeCourseResearch,10,315–357. Steyer, R., Schwenkmezger, P., & Auer, A. (1990). The emotional and
McArdle,J.J.(2009).Latentvariablemodelingofdifferencesandchanges cognitive components of trait anxiety: A latent state-trait model. Per-
withlongitudinaldata.AnnualReviewofPsychology,60,577–605. sonalityandIndividualDifferences,11,125–134.
McArdle,J.J.,&Grimm,K.J.(2010).Fivestepsinlatentcurveandlatent Stoel,R.,GalindoGarre,F.,Dolan,C.,&vandenWittenboer,G.(2006).
change score modeling with longitudinal data. In K. van Montfort, J. On the likelihood ratio test in structural equation modelling when
Oud,&A.Satorra(Eds.),Longitudinalresearchwithlatentvariables(p. parametersaresubjecttoboundaryconstraints.PsychologicalMethods,
245–274).Heidelberg,Germany:Springer-Verlag. 11,439–455.
McArdle,J.J.,&Hamagami,F.(2001).Latentdifferencescorestructural Suls,J.,Green,P.,&Hillis,S.(1998).Emotionalreactivitytoeveryday
modelsforlineardynamicanalyseswithincompletelongitudinaldata.In problems, affective inertia, and neuroticism. Personality and Social
L.Collins&A.Sayer(Eds.),Newmethodsfortheanalysisofchange(p. PsychologyBulletin,24,127–136.
139–175).Washington,DC:AmericanPsychologicalAssociation. Vecchione, M., & Alessandri, G. (2013). Disentangling trait from state
Muthén,L.K.,&Muthén,B.O.(1998–2012).Mplususer’sguide.7thed. components in the assessment of egoistic and moralistic self-
LosAngeles,CA:Muthén&Muthén. enhancement.PersonalityandIndividualDifferences,54,884–889.
Nezlek,J.B.(2001).Multilevelrandomcoefficientanalysesofevent-and Voelkle,M.C.,Oud,J.H.L.,Davidov,E.,&Schmidt,P.(2012).AnSEM
interval-contingentdatainsocialandpersonalitypsychologyresearch. approachtocontinuoustimemodelingofpaneldata:Relatingauthori-
PersonalityandSocialPsychologyBulletin,27,771–785. tarianismandanomia.PsychologicalMethods,17,176–192.
Oravecz,Z.,Tuerlinckx,F.,&Vandekerckhove,J.(2009).Ahierarchical Watkins, M. W., Lei, P.-W., & Canivez, G. L. (2007). Psychometric
Ornstein-Uhlenbeckmodelforcontinuousrepeatedmeasurementdata. intelligence and achievement: A cross-lagged panel analysis. Intelli-
Psychometrika,74,395–418. gence,35,59–68.
Oud,J.H.L.(2007).Continuoustimemodelingofreciprocalrelationships Wood,A.M.,Maltby,J.,Gillett,R.,Linley,P.A.,&Joseph,S.(2008).
inthecross-laggedpaneldesign.InS.M.Boker&M.J.Wenger(Eds.), Theroleofgratitudeinthedevelopmentofsocialsupport,stress,and
Dataanalytictechniquesfordynamicsystemsinthesocialandbehav- depression:Twolongitudinalstudies.JournalofResearchinPersonal-
ioralsciences(pp.87–129).Mahwah,NJ:Erlbaum. ity,42,854–871.
Oud,J.H.L.,&Delsing,M.J.M.H.(2010).Continuoustimemodeling Zautra,A.J.,Marbach,J.J.,Raphael,K.G.,Dohrenwend,B.P.,Lennon,
ofpaneldatabymeansofSEM.InK.vanMontefort,J.H.L.Oud,& M.C.,&Kenny,D.A.(1995).Theexaminationofmyofascialfacepain
A. Satorra (Eds.), Longitudinal research with latent variables (pp. and its relationship to psychological distress among women. Health
201–244).NewYork,NY:Springer. Psychology,14,223–231.
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
114 HAMAKER,KUIPER,ANDGRASMAN

Appendix A
Model Specifications of a CLPM and a RI-CLPM
Specifying a CLPM for three occasions can be done with the
p*
measurementequation 1i
(cid:9) (cid:10) (cid:9) (cid:10) (cid:9) (cid:10)
x (cid:3) 1 0 0 0 0 0 1 0 q*
i1 1 1i
(cid:9) (cid:10) (cid:9) (cid:10) (cid:9) (cid:10) y (cid:5) 0 1 0 0 0 0 0 1 p*
x (cid:3) p i1 1 2i
y x i i 1 1 (cid:3) (cid:5) 1 1 q p 1 1 i i y x i i 2 2 (cid:2) (cid:5) (cid:3) 2 2 (cid:4) 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 q p 2 * 3 * i i , (7a)
y i2 (cid:2) (cid:5) 2 (cid:4) q 2i , (6a) x i3 (cid:3) 3 0 0 0 0 1 0 1 0 q 3 * 1
i2 2 2i y (cid:5) 0 0 0 0 0 1 0 1 (cid:11)
x (cid:3) p i3 3 i i3 3 3i
(cid:12)
y (cid:5) q i
i3 3 31
andstructuralequation
andstructuralequation
p* 0 0 0 0 0 0 0 0 p* q*
1i 1i 1i
(cid:9) (cid:10) (cid:9) (cid:10)(cid:9) (cid:10) (cid:9) (cid:10) q 1 * i 0 0 0 0 0 0 0 0 q 1 * i p 1 * i
p 0 0 0 0 0 0 p p
1i 1i 1i p* (cid:6)* (cid:8)* 0 0 0 0 0 0 p* u*
2i 2 2 2i 2i
q 0 0 0 0 0 0 q q
1i 1i 1i q* (cid:10)* (cid:9)* 0 0 0 0 0 0 q* v*
p (cid:6) (cid:8) 0 0 0 0 p u 2i (cid:2) 2 2 2i (cid:4) 2i , (7b)
2i (cid:2) 2 2 2i (cid:4) 2i , p* 0 0 (cid:6)* (cid:8)* 0 0 0 0 p* u*
q (cid:10) (cid:9) 0 0 0 0 q v 3i 3 3 3i 3i
2i 2 2 2i 2i q* 0 0 (cid:10)* (cid:9)* 0 0 0 0 q* v*
p 0 0 (cid:6) (cid:8) 0 0 p u 3i 3 3 3i 3i
3i 3 3 3i 3i (cid:11) 0 0 0 0 0 0 0 0 (cid:11) (cid:11)
q 0 0 (cid:10) (cid:9) 0 0 q v i i i
31 3 3 31 31 (cid:12) 0 0 0 0 0 0 0 0 (cid:12) (cid:12)
i i i
(6b)
wherethecovariancematrixofthelatterresidualvectoris
wherethecovariancematrixofthelatterresidualvectoris ⎡(cid:18)2 ⎤
p*
1
(cid:18) (cid:18)2
(cid:9) (cid:18)2 (cid:10) ⎢ p 1 *q 1 * q 1 * ⎥
(cid:18)
x1
(cid:18)2 0 0
(cid:18)2
u*
(cid:17)(cid:2) x 0
0
1y1 0
0
y1
(cid:18)
(cid:18)
u
2 u
2v
2
2 (cid:18)2 v2
. (6c) (cid:17)(cid:2)
⎢
⎢
0
0
0
0 (cid:18) u
0
2 *v 2 2 * (cid:18)
0
2 v 2 * (cid:18)2
u 3 * ⎥
⎥ .
0 0 0 0 (cid:18)2 u3 0 0 0 0 (cid:18) u 3 *v 3 * (cid:18)2 v 3 *
0 0 0 0 (cid:18) (cid:18)2 ⎣ 0 0 0 0 0 0 (cid:18)2 ⎦
u3v3 v3 (cid:11)
0 0 0 0 0 0 (cid:18) (cid:11),(cid:12) (cid:18) (cid:12) 2
Notethatthevariancesandcovariancebetweenp andq are (7c)
i1 i1
identicaltothoseofx andy inthismodel. Note that in contrast to the previous model, here the variances
i1 i1
Specifying the RI-CLPM for three waves of data in SEM soft- andcovarianceofp* andq* arenotidenticaltothoseofx andy
1i 1i i1 i1
wareisbasedonthemeasurementequationunits (unless(cid:11) (cid:2)(cid:12) (cid:2)0foralli).
i i
(Appendicescontinue)
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
CROSS-LAGGEDPANELMODEL 115

Appendix B
The Standardized Cross-Lagged Regression Coefficient of the CLPM as a Function of the
Parameters of the RI-CLPM
Thestandardizedcross-laggedparametersinthetraditionalCLPMcanbeexpressedaspartialcorrelations
(e.g.,Heise,1970).Focusingonthecross-laggedparameter(cid:8) fromp toq ,andmakinguseofthefactthat
t i,t-1 it
p andq arethegroupmeancenteredvariablesx andy ,wecanwrite
i,t it it it
(cid:10) (cid:18)(x i,t(cid:7)1 ) (cid:2) (cid:19)(x i,t(cid:7)1 y it )(cid:7)(cid:19)(y i,t(cid:7)1 x i,t(cid:7)1 )(cid:19)(y i,t(cid:7)1 y it ) . (8)
t (cid:18)(y it ) 1(cid:7)(cid:19)(y i,t(cid:7)1 x i,t(cid:7)1 )2
Inordertoseehowthecross-laggedparameter(cid:8)fromthetraditionalCLPMisrelatedtothecross-lagged
parameters(cid:8)(cid:2)oftheRI-CLPM,weneedtoexpressthecorrelationsusedontheright-handsideofEquation
8intermsoftheparametersofthelattermodel.Ifweassumethatalltheobservedvariablesarestandardized,
thecorrelationbetweeny andy canbeexpressedas
i,t-1 it
(cid:19)(y i,t(cid:7)1 y it )(cid:2)E[ (cid:2)(cid:12) i (cid:4)q i * ,t(cid:7)1 (cid:3)(cid:2)(cid:12) i (cid:4)q i * t (cid:3) ]
(cid:2)E (cid:6)(cid:12)2(cid:7)(cid:4)E (cid:6) q* q*(cid:7)
i i,t(cid:7)1 it
(cid:2)var((cid:12) i )(cid:4)E (cid:6) q i * ,t(cid:7)1 (cid:2)(cid:9) t *q i * ,t(cid:7)1 (cid:4)(cid:10) t *p i * ,t(cid:7)1 (cid:4)v i * t (cid:3)(cid:7) (9)
(cid:2)var((cid:12))(cid:4)E (cid:6)(cid:9)*q*2 (cid:7)(cid:4)E (cid:6)(cid:10)*q* p* (cid:7)
i t i,t(cid:7)1 t i,t(cid:7)1 i,t(cid:7)1
(cid:2)var((cid:12))(cid:4)(cid:9)*var (cid:4) q* (cid:5)(cid:4)(cid:10)*cov (cid:4) q* ,p* (cid:5) ,
i t i,t(cid:7)1 t i,t(cid:7)1 i,t(cid:7)1
whilethecorrelationbetweeny andx canbeexpressedas
i,t(cid:9)1 i,t(cid:9)1
(cid:19) (cid:2)E (cid:6)(cid:2)(cid:12) (cid:4)q* (cid:3)(cid:2)(cid:11) (cid:4)p* (cid:3)(cid:7)
y1x1 i i,t(cid:7)1 i i,t(cid:7)1
(cid:2)E[(cid:12) i (cid:11) i ](cid:4)E (cid:6) q i * ,t(cid:7)1 p i * ,t(cid:7)1 (cid:7) (10)
(cid:2)cov((cid:12),(cid:11))(cid:4)cov (cid:4) q* ,p* (cid:5) ,
i i i,t(cid:7)1 i,t(cid:7)1
andthecorrelationbetweeny andx canbeexpressedas
it i,t(cid:9)1
(cid:19)(x i,t(cid:7)1 y it ) (cid:2)E[ (cid:2)(cid:11) i (cid:4)p i * ,t(cid:7)1 (cid:3)(cid:2)(cid:12) i (cid:4)q i * t (cid:3) ]
(cid:2)E[(cid:11)(cid:12)](cid:4)E (cid:6) p* q*(cid:7)
i i i,t(cid:7)1 it
(cid:2)cov((cid:12) i ,(cid:11) i )(cid:4)E (cid:6) p i * ,t(cid:7)1 (cid:2)(cid:9) t *q i * ,t(cid:7)1 (cid:4)(cid:10) t *p i * ,t(cid:7)1 (cid:4)v i * t (cid:3)(cid:7) (11)
(cid:2)cov((cid:12),(cid:11))(cid:4)E (cid:6)(cid:9)*p* q* (cid:7)(cid:4)E (cid:6)(cid:10)*p*2 (cid:7)
i i t i,t(cid:7)1 i,t(cid:7)1 t i,t(cid:7)1
(cid:2)cov((cid:12),(cid:11))(cid:4)(cid:9)*cov (cid:4) q* ,p* (cid:5)(cid:4)(cid:10)*var (cid:4) p* (cid:5)
i i t i,t(cid:7)1 i,t(cid:7)1 t i,t(cid:7)1
UsingtheseexpressionsforthecorrelationsinEquation8,wecannowwrite
(cid:10) SD(x i,t(cid:7)1 ) (cid:2) cov((cid:12) i ,(cid:11) i )(cid:4)(cid:9) t *cov(q i * ,t(cid:7)1 ,p i * ,t(cid:7)1 )(cid:4)(cid:10) t *var(p i * ,t(cid:7)1 )
t SD(y ) 1(cid:7)(cid:2) cov((cid:12),(cid:11))(cid:4)cov(q* ,p* ) (cid:3)2
it i i i,t(cid:7)1 i,t(cid:7)1
(cid:2) cov((cid:12),(cid:11))(cid:4)cov (cid:4) q* ,p* (cid:5)(cid:3)(cid:2) var((cid:12))(cid:4)(cid:9)*var (cid:4) q* (cid:5)(cid:4)(cid:10)*cov (cid:4) q* ,p* (cid:5)(cid:3)
(cid:7) i i i,t(cid:7)1 i,t(cid:7)1 i t i,t(cid:7)1 t i,t(cid:7)1 i,t(cid:7)1 .
1(cid:7)(cid:2) cov((cid:12),(cid:11))(cid:4)cov (cid:4) q* ,p* (cid:5)(cid:3)2
i i i,t(cid:7)1 i,t(cid:7)1
Similarly,therelationshipbetween(cid:7) and(cid:8)*canbederived.
t t
ReceivedSeptember21,2012
RevisionreceivedJanuary14,2015
AcceptedJanuary20,2015 (cid:2)
.srehsilbupdeillastifoenoronoitaicossAlacigolohcysPnaciremAehtybdethgirypocsitnemucodsihT
.yldaorbdetanimessidebottonsidnaresulaudividniehtfoesulanosrepehtrofylelosdednetnisielcitrasihT
116 HAMAKER,KUIPER,ANDGRASMAN