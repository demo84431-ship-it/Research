REVIEWARTICLE
published:26November2013
doi:10.3389/fpsyg.2013.00863
Calculating and reporting effect sizes to facilitate
cumulative science: a practical primer for t-tests and
ANOVAs
DaniëlLakens*
HumanTechnologyInteractionGroup,EindhovenUniversityofTechnology,Eindhoven,Netherlands
Editedby: Effectsizesarethemostimportantoutcomeofempiricalstudies.Mostarticlesoneffect
BernhardHommel,Leiden sizes highlight their importance to communicate the practical significance of results. For
University,Netherlands scientists themselves, effect sizes are most useful because they facilitate cumulative
Reviewedby: science. Effect sizes can be used to determine the sample size for follow-up studies,
MarjanBakker,Universityof
or examining effects across studies. This article aims to provide a practical primer on
Amsterdam,Netherlands
BrunoBocanegra,Erasmus how to calculate and report effect sizes for t-tests and ANOVA’s such that effect sizes
UniversityRotterdam,Netherlands can be used in a-priori power analyses and meta-analyses. Whereas many articles about
*Correspondence: effectsizesfocusonbetween-subjectsdesignsandaddresswithin-subjectsdesignsonly
DaniëlLakens,HumanTechnology briefly, I provide a detailed overview of the similarities and differences between within-
InteractionGroup,Eindhoven
and between-subjects designs. I suggest that some research questions in experimental
UniversityofTechnology,IPO1.24,
POBox513,5600MBEindhoven, psychology examine inherently intra-individual effects, which makes effect sizes that
Netherlands incorporatethecorrelationbetweenmeasuresthebestsummaryoftheresults.Finally,a
e-mail:d.lakens@tue.nl supplementaryspreadsheetisprovidedtomakeitaseasyaspossibleforresearchersto
incorporateeffectsizecalculationsintotheirworkflow.
Keywords:effectsizes,poweranalysis,cohen’sd,eta-squared,samplesizeplanning
Effectsizesarethemostimportantoutcomeofempiricalstudies. thatresearchersareeitherverypassionateaboutunnecessarysub-
Researchers want to know whether an intervention or experi- script letters, or rely too much on the effect sizes as they are
mental manipulation has an effect greater than zero, or (when providedbystatisticalsoftwarepackages.
it is obvious an effect exists) how big the effect is. Researchers This practical primer should be seen as a complementary
are often reminded to report effect sizes, because they are use- resource for psychologists who want to learn more about effect
fulforthreereasons.First,theyallowresearcherstopresentthe sizes (for excellent books that discuss this topic in more detail,
magnitudeofthereportedeffectsinastandardizedmetricwhich seeCohen,1988;MaxwellandDelaney,2004;GrissomandKim,
canbeunderstoodregardlessofthescalethatwasusedtomea- 2005; Thompson, 2006; Aberson, 2010; Ellis, 2010; Cumming,
surethedependentvariable.Suchstandardizedeffectsizesallow 2012;Murphyetal.,2012).Asupplementaryspreadsheetispro-
researchers to communicate the practical significance of their videdtofacilitateeffectsizecalculations.Reportingstandardized
results (what are the practical consequences of the findings for effectsizesformeandifferencesrequiresthatresearchersmakea
daily life), instead of only reporting the statistical significance choiceaboutthestandardizerofthemeandifference,orachoice
(how likely is the pattern of results observed in an experiment, abouthowtocalculatetheproportionofvarianceexplainedbyan
given the assumption that there is no effect in the population). effect.Inthisarticle,thesechoiceswillbehighlightedforCohen’s
Second,effectsizesallowresearcherstodrawmeta-analyticcon- d andetasquared(η2),twoofthemostwidelyusedeffectsizes
clusions by comparing standardized effect sizes across studies. in psychological research, with a special focus on the difference
Third,effectsizesfrompreviousstudiescanbeusedwhenplan- between withinand between-subjects designs. I point out some
ning a new study. An a-priori power analysis can provide an caveatsforresearcherswhowanttoperformpower-analysesfor
indicationoftheaveragesamplesizeastudyneedstoobservea within-subjectsdesigns,andproviderecommendationsregarding
statisticallysignificantresultwithadesiredlikelihood. theeffectsizesthatshouldbereported.
The aim of this article is to explain how to calculate and Knowledge about the expected size of an effect is important
reporteffectsizesfordifferencesbetweenmeansinbetweenand information when planning a study. Researchers typically rely
within-subjectsdesignsinawaythatthereportedresultsfacilitate on null hypothesis significance tests to draw conclusions about
cumulativescience.Therearesomereasonstoassumethatmany observeddifferencesbetweengroupsofobservations.Theprob-
researchers can improve their understanding of effect sizes. For abilityofcorrectlyrejectingthenullhypothesisisknownasthe
example,researcherspredominantlyreporttheeffectsizepartial powerofastatisticaltest(Cohen,1988).Statisticalpowerdepends
etasquared(η2
p
),whichisprovidedbystatisticalsoftwarepack-
onthesamplesizeofthestudy(throughitsinfluenceonthereli-
agessuchasSPSS.Thefactthatη2isoftenreportedforOne-Way abilityofthesamplevalues,andspecificallytheextenttowhich
p
ANOVAs(wherepartialetasquaredequalsetasquared),indicates sample values can be expected to be an approximation of the
www.frontiersin.org November2013|Volume4|Article863|1

Lakens Calculatingandreportingeffectsizes
populationvalues),thesizeoftheeffect,andthesignificancecri- et al., 1996; Olejnik and Algina, 2003; Maxwell and Delaney,
terion(typicallyα=0.05).Ifthreeareknown(orestimated),the 2004).
fourthparametercanbecalculated.Inana-prioripoweranalysis, A second perspective, which I will refer to as the statistical
researcherscalculatethesamplesizeneededtoobserveaneffectof significance viewpoint, focusses on the statistical test of a pre-
aspecificsize,withapre-determinedsignificancecriterion,anda dictedeffect,andregardsindividualdifferencesasirrelevantfor
desiredstatisticalpower. the hypothesis that is examined. The goal is to provide statis-
Agenerallyacceptedminimumlevelofpoweris0.80(Cohen, tical support for the hypothesis, and being able to differentiate
1988). This minimum is based on the idea that with a signifi- between variance that is due to individual differences and vari-
cance criterion of 0.05 the ratio of a Type 2 error (1-power) to ance that is due to the manipulation increases the power of the
aType1erroris0.20/.05,soconcludingthereisaneffectwhen study. Researchers advocating the statistical significance view-
there is no effect in the population is considered four times as pointregardthedifferenteffectsizes(e.g.,η2)inawithin-com-
p
seriousasconcludingthereisnoeffectwhenthereisaneffectin paredtobetween-subjectsdesignasabenefitofamorepowerful
thepopulation.SomeresearchershavearguedthatType2errors design. The focus on the outcome of the statistical test in this
canpotentiallyhavemuchmoreseriousconsequencesthanType perspective can be illustrated by the use of confidence inter-
1errors,however(Fiedleretal.,2012).Thus,althoughapower vals. As first discussed by Loftus and Masson (1994), the use
of0.80istherecommendedminimum,higherpower(e.g.,0.95) of traditional formulas for confidence intervals (developed for
is more desirable, as long as it is practically feasible. Effect size between-subjects designs) can result in a marked discrepancy
estimates have their own confidence intervals [for calculations betweenthestatisticalsummaryoftheresultsandtheerrorbars
for Cohen’s d, see Cumming (2012), for F-tests, see Smithson usedtovisualizethedifferencesbetweenobservations.Toresolve
(2001)], which are often very large in experimental psychology. this inconsistency, Loftus and Masson (1994, p. 481) suggest
Therefore,researchersshouldrealizethattheconfidenceinterval that:“Giventheirrelevanceofintersubjectvarianceinawithin-
around a sample size estimate derived from a power analysis is subjects design, it can legitimately be ignored for purposes of
oftenalsoverylarge,andmightnotprovideaveryaccuratebasis statisticalanalysis.”
todeterminethesamplesizeofafuturestudy.Meta-analysescan Tosummarize,researcherseitherfocusongeneralizableeffect
provide more accurate effect size estimates for power analyses, size estimates, and try to develop effect size measures that are
and correctly reporting effect size estimates can facilitate future independent from the research design, or researchers focus on
meta-analyses [although due to publication bias, meta-analyses thestatisticalsignificance,andprefereffectsizes(andconfidence
mightstilloverestimatethetrueeffectsize,seeBrandetal.(2008); intervals)toreflecttheconclusionsdrawnbythestatisticaltest.
Bakkeretal.(2012)]. Although these two viewpoints are not mutually exclusive, they
do determine some of the practical choices researchers make
STATISTICALSIGNIFICANCEANDGENERALIZABILITYOF when reporting their results. Regardless of whether researchers
EFFECTSIZEESTIMATES focus on statistical significance or generalizability of measure-
Consider two sets of observations with M =7.7, SD =0.95, ments, cumulative science will benefit if researchers determine
1 1
andM =8.7,SD =0.82.Dependingonwhetherthedatawere theirsamplesizea-priori,andreporteffectsizeswhentheyshare
2 2
collected in a between or within-subjects design, the effect size their results. In the following sections, I will discuss how effect
partial eta squared (η2) for the difference between these two sizes to describe the differences between means are calculated,
p
observations (for details, see the illustrative example below) is withaspecialfocusonthesimilaritiesanddifferencesinwithin
either0.26or0.71,respectively.Giventhatthemeandifferenceis andbetween-subjectsdesigns,followedbyanillustrativeexample.
thesame(i.e.,1)regardlessofthedesign,whichofthesetwoeffect
sizesisthe“true”effectsize?Therearetwodiverginganswersto DIFFERENCESANDSIMILARITIESBETWEENEFFECTSIZES
this question. One viewpoint focusses on the generalizability of As Poincaré (1952, p. 34) has said: “mathematics is the art of
theeffectsizeestimateacrossdesigns,whiletheotherviewpoint giving the same name to different things.” Unfortunately, in
focusses on the statistical significance of the difference between the domain of effect size calculations statisticians have failed
themeans.Iwillbrieflydiscussthesetwoviewpoints. Poincare. Effect sizes have either different names although they
AsMaxwellandDelaney(2004,p.548)remark:“amajorgoal arebasicallythesameentity(suchasreferringtor2asη2),orthey
ofdevelopingeffectsizemeasuresistoprovideastandardmet- havereceivedthesamename,despitebeingcalculatedindifferent
ricthatmeta-analystsandotherscaninterpretacrossstudiesthat ways(suchasreferringtoaneffectsizeasCohen’sd,regardlessof
vary in their dependent variables as well as types of designs.” thewayitiscalculated).Effectsizescanbegroupedintwofam-
Thisfirstviewpoint,whichIwillrefertoasthegeneralizableeffect ilies(Rosenthal,1994):Thedfamily(consistingofstandardized
sizeestimateviewpoint,assumesthatitdoesnotmatterwhether meandifferences)andtherfamily(measuresofstrengthofasso-
you use a within-subjects design or a between-subjects design. ciation).Conceptually,thed familyeffectsizesarebasedonthe
Although you can exclude individual variation in the statisti- difference betweenobservations,dividedbythestandard devia-
cal test if you use a pre- and post-measure, and the statistical tion of these observations. The r family effect sizes describe the
power of a test will often substantially increase, the effect size proportion of variance that is explained by group membership
(e.g.,η2)shouldnotdifferdependingonthedesignthatwasused. [e.g., a correlation (r) of 0.5 indicates 25% (r2) of the variance
p
Therefore,manyresearchersregardeffectsizesinwithin-subjects isexplainedbythedifferencebetweengroups].Theseeffectsizes
designsasanoverestimationofthe“true”effectsize(e.g.,Dunlap are calculated from the sum of squares (the difference between
FrontiersinPsychology|Cognition November2013|Volume4|Article863|2

Lakens Calculatingandreportingeffectsizes
individualobservationsandthemeanforthegroup,squared,and oft-valuesforspecificsamplesizes(butcouldalsobeexpressed
summed)fortheeffectdividedbythesumsofsquaresforother intermsofwhetherthe95%confidenceintervalaroundCohen’s
factorsinthedesign. d includes0ornot),whereasCohen’sd istypicallyusedinana-
s s
A further differentiation between effect sizes is whether they prioripoweranalysisforbetween-subjectsdesigns(eventhougha
correctforbiasornot(e.g.,Thompson,2007).Populationeffect poweranalysiscouldalsobebasedonthet-valueandnpercondi-
sizesarealmostalwaysestimatedonthebasisofsamples,andall tion).Formula2underlinesthedirectrelationbetweentheeffect
populationeffectsizeestimatesbasedonsampleaveragesoveres- sizeandthestatisticalsignificance.
timatethetruepopulationeffect(foramoredetailedexplanation, Thestandardizedmeandifferencecanalsobecalculatedwith-
see Thompson, 2006). Therefore, corrections for bias are used out Bessel’s correction, in which case it provides the maximum
(eventhoughthesecorrectionsdonotalwaysleadtoacompletely likelihoodestimateforasample,asnotedbyHedgesandOlkin
unbiasedeffectsizeestimate).Inthed familyofeffectsizes,the (1985).ThedifferencebetweenCohen’sd andCohen’sd (for
s pop
correctionforCohen’sdisknownasHedges’g,andintherfam- the population) is important to keep in mind when converting
ilyofeffectsizes,thecorrectionforetasquared(η2)isknownas Cohen’sd tothepointbiserialcorrelationr (whichwillsimply
s pb
omegasquared(ω2).Theseeffectssizeswillbediscussedinmore be referred to as r in the remainder of this text). Many text-
detailinthefollowingparagraphs. books provide the formula to convert Cohen’s d to r, while
pop
theformulatoconvert Cohen’s d tor (whichcan onlybeused
s
COHEN’SdINBETWEEN-SUBJECTSDESIGNS forbetween-subjectsdesigns)isprovidedbyMcGrathandMeyer
Cohen’sdisusedtodescribethestandardizedmeandifferenceof (2006):
aneffect.Thisvaluecanbeusedtocompareeffectsacrossstud- d
ies,evenwhenthedependentvariablesaremeasuredindifferent r= (cid:4) s (3)
d2
+N2−2N
ways,forexamplewhenonestudyuses7-pointscalestomeasure s n1n2
dependent variables, while the other study uses 9-point scales,
or even when completely different measures are used, such as Asmentionedearlier,theformulaforCohen’sd,whichisbased
s
whenonestudyusesself-reportmeasures,andanotherstudyused on sample averages gives a biased estimate of the population
physiologicalmeasurements.Itrangesfrom0toinfinity.Cohen effect size (Hedges and Olkin, 1985), especially for small sam-
(1988) uses subscripts to distinguish between different versions ples(n<20).Therefore,Cohen’sd issometimesreferredtoas
s
of Cohen’s d, a practice I will follow because it prevents confu- the uncorrected effect size. The corrected effect size, or Hedges’s g
sion(withoutanysubscript,Cohen’sddenotestheentirefamily (whichisunbiased,seeCumming,2012),is:
ofeffectsizes).Cohenreferstothestandardizedmeandifference
(cid:5) (cid:6)
betweentwogroupsofindependentobservationsforthesample Hedges (cid:4) sg =Cohen (cid:4) sd × 1− 3 (4)
asd s whichisgivenby: s s 4(n +n )−9
1 2
X −X
d = (cid:2) 1 2 (1) I use the same subscript letter in Hedges’s g to distinguish dif-
s
(n1 −1)SD2
1
+(n2 −1)SD2
2
ferentcalculationsofCohen’sd.Althoughthedifferencebetween
n1 +n2 −2 Hedges’sg
s
andCohen’sd
s
isverysmall,especiallyinsamplesizes
above20(Kline,2004),itispreferable(andjustaseasy)toreport
Inthisformula,thenumeratoristhedifferencebetweenmeansof
Hedges’sg.Therearealsobootstrappingprocedurestocalculate
s
the two groups of observations. The denominator is the pooled
Cohen’sd whenthedataarenotnormallydistributed,whichcan
s
standarddeviation.Rememberthatthestandarddeviationiscal-
provide a less biased point estimate (Kelley, 2005). As long as
culatedfromthedifferencesbetweeneachindividualobservation
researchersreportthenumberofparticipantsineachcondition
andthemeanforthegroup.Thesedifferencesaresquaredtopre-
forabetween-subjectscomparisonandthet-value,Cohen’sdand
ventthepositiveandnegativevaluesfromcancellingeachother
Hedges’ g can be calculated. Whenever standard deviations dif-
out, and summed (also referred to as the sum of squares). This fersubstantiallybetweenconditions,Glass’s(cid:2)shouldbereported
valueisdividedbythenumberofobservationsminusone,which
(seebelow).
isBessel’scorrectionforbiasintheestimationofthepopulation
variance,andfinallythesquarerootistaken.Thiscorrectionfor
INTERPRETINGCOHEN’Sd
biasinthesampleestimateofthepopulationvarianceisbasedon
How should researchers interpret this effect size? A commonly
theleastsquaresestimator(seeMcGrathandMeyer,2006).Note used interpretation is to refer to effect sizes as small (d=0.2),
thatCohen’sd s issometimesreferredtoasCohen’sg,whichcan medium (d=0.5), and large (d=0.8) based on benchmarks
beconfusing.Cohen’sd forbetween-subjectsdesignsisdirectly
s suggested by Cohen (1988). However, these values are arbitrary
relatedtoat-test,andcanbecalculatedby:
and should not be interpreted rigidly (Thompson, 2007). Small
(cid:3)
effectsizescanhavelargeconsequences,suchasanintervention
1 1
d =t + (2) thatleadstoareliablereductioninsuiciderateswithaneffectsize
s n
1
n
2
ofd=0.1.Theonlyreasontousethesebenchmarksisbecause
√ findingsareextremelynovel,andcannotbecomparedtorelated
If only the total sample size is known, Cohen’s d ≈2×t/ N. findings in the literature (Cohen, 1988). Cohen’s d in between-
s
Statisticalsignificanceistypicallyexpressedintermsoftheheight subjectdesignscanbereadilyinterpretedasapercentageofthe
www.frontiersin.org November2013|Volume4|Article863|3

Lakens Calculatingandreportingeffectsizes
standarddeviation,suchthataCohen’sdof0.5meansthediffer- wherethenumeratoristhedifferencebetweenthemean(M)of
ence equals half a standard deviation. However, the best way to the difference scores and the comparison value μ (e.g., 0), and
interpretCohen’sdistorelateittoothereffectsintheliterature, thedenominatoristhestandarddeviationofthedifferencescores
and if possible, explain the practical consequences of the effect. (S ).TheeffectsizeestimateCohen’sd canalsobecalculated
diff z
Regrettably,therearenoclearrecommendationofhowtodoso directlyfromthet-valueandthenumberofparticipantsusingthe
(Fidler,2002). formulaprovidedbyRosenthal(1991):
Aninteresting,thoughnotoftenused,interpretationofdiffer-
encesbetweengroupscanbeprovidedbythecommonlanguage Cohen (cid:4) sd = √ t (7)
z
effectsize(McGrawandWong,1992),alsoknownastheproba- n
bility of superiority (Grissom and Kim, 2005), which is a more
Given the direct relationship between the t-value of a paired-
intuitively understandable statistic than Cohen’s d or r. It can
samples t-test and Cohen’s d , it will not be surprising that
be calculated directly from Cohen’s d, converts the effect size z
softwarethatperformspoweranalysesforwithin-subjectsdesigns
intoapercentage,andexpressestheprobabilitythatarandomly
∗
(e.g.,G Power,(Fauletal.,2009))reliesonCohen’sd asinput.
sampled person from one group will have a higher observed z
Toallowresearcherstoperform ana-prioripoweranalysis,itis
measurement than a randomly sampled person from the other
therefore enough to report the t-value and the number of pairs
group (for between designs) or (for within-designs) the proba-
ofobservations(orthedegreesoffreedom,n−1).Cohen’sd is
bilitythatanindividualhasahighervalueononemeasurement z
onlyrarelyusedinmeta-analyses,becauseresearchersoftenwant
than the other. It is based on the distribution of the difference
tobeabletocompareeffectsacrosswithinandbetween-subject
scores, with a mean that is estimated from the mean differ-
designs. One solution (which is not generally recommended) is
ences between the samples, and a standard deviation that is the
to use Cohen’s d , where the subscript is used by Morris and
square root of the sum of the sample variances divided by two. rm
DeShon (2002) to indicate this is the equivalent of Cohen’s d
Mathematically, the common language effect size is the proba-
for repeated measures. Cohen’s d controls for the correlation
bility of a Z-score greater than the value that corresponds to a rm
betweenthetwosetsofmeasurements,asexplainedbelow.
differencebetweengroupsof0inanormaldistributioncurve.Z
An alternative formula to calculate the standard deviation of
canbecalculatedby:
thedifferencescoresfromthestandarddeviationsofbothgroups
|X −X | andtheircorrelationisgivenbyCohen(1988)as:
Z = (cid:4) 1 2 (5) (cid:4)
SD2+SD2
1 2 2 S diff = SD2 1 +SD2 2 −2×r×SD 1 ×SD 2 (8)
after which the common language effect size is the percentage whereristhecorrelationbetweenmeasures,andSisthestandard
associatedwiththeuppertailprobabilityofthisvalue.Thesup- deviationwithineachofthetwosetsofobservations.Asthecor-
plementary spreadsheet provides an easy way to calculate the relationbetweenmeasuresincreases,thestandarddeviationofthe
commonlanguageeffectsize. differencescoresdecreases.Inexperimentalpsychology,correla-
tions between measures are typically a positive non-zero value.
COHEN’SdINONE-SAMPLEORCORRELATEDSAMPLES This has two consequences. First, within-subjects designs typi-
COMPARISONS callyhavemorestatisticalpowerthanbetween-subjectsdesigns,
Conceptually,calculatingCohen’sdforcorrelatedmeasurements
becausethestandarddeviationofthedifferencescoresissmaller
is the same as calculating Cohen’s d for independent groups,
thanthestandarddeviationsofthetwogroupsofobservations.
where the differences between two measurements are divided
Second, under the assumption of equal variances (for unequal
by the standard deviation of both groups of measurements. variances, Glass’s (cid:2) should be calculated, see below), the mean
However,inthecaseofcorrelatedmeasurementsthedependent
standardized difference between the two√correlated measure-
t-testusesthestandarddeviationofthedifferencescores.Testing mentsisstandardizedbyavaluewhichis 2(1−r)largerthan
whetherobservationsfromtwocorrelatedmeasurementsaresig-
thestandarddeviationforindependentobservations(seeCohen,
nificantlydifferentfromeachotherusingapairedsamplest-testis
1988),andthus:
mathematicallyidenticaltotestingwhetherthedifferencescores
(cid:8)
of the correlated measurements is significantly different from 0 Cohen (cid:4) sd = (cid:4) M diff × 2(1−r)
usingaone-samplet-test.Similarly,calculatingtheeffectsizefor rm
SD2+SD2−2×r×SD ×SD
thedifferencebetweentwocorrelatedmeasurementsissimilarto 1 2 1 2
(9)
theeffectsizethatiscalculatedforaonesamplet-test.Thestan-
When r=0.5 and the standard deviations in both groups of
dardizedmeandifferenceeffectsizeforwithin-subjectsdesignsis
measurementsarethesame,Cohen’sd fromabetween-subjects
referredtoasCohen’sd ,wheretheZalludestothefactthatthe s
z
designandCohen’sd fromawithin-subjectsdesignareidenti-
unit of analysis is no longer X or Y, but their difference, Z, and rm
cal, but differences in the standard deviations between the two
canbecalculatedwith:
groups will introduce differences between the two effect sizes,
Cohen (cid:4) sd z = (cid:4) (cid:7) M diff (6) wh A ic n h o b t e h c e o r m so e l m ut o io re n p t r o on c o al u c n u c la e t d e w C h o e h n en r ’ a s p d pr f o o a r ch w e i s th 0 in o - r s 1 u . bjects
(Xdiff −Mdiff )2
N−1 designs is to simply use the average standard deviation of both
FrontiersinPsychology|Cognition November2013|Volume4|Article863|4

Lakens Calculatingandreportingeffectsizes
repeated measures as a standardizer (which ignores the corre- effect size is the best representation of the effect they are inter-
lation between the measures). Cumming (2012) refers to this estedin.Table1summarizeswhendifferentversionsofeffectsize
approachasCohen’sd ,whichissimply: measuresinthedfamilyareused.Thecommonlanguageeffect
av
size can be reported in addition to Cohen’s d to facilitate the
Cohen (cid:4) sd = M diff (10) interpretationoftheeffectsize.
av SD1 +SD2
2
ETA-SQUAREDINBETWEENANDWITHIN-SUBJECTSCOMPARISONS
When the standard deviations of both groups of observations Etasquaredη2 (partoftherfamilyofeffectsizes,andanexten-
are equal, Cohen’s d , and Cohen’s d are identical, and the sionofr2thatcanbeusedformorethantwosetsofobservations)
av rm
effect size equals Cohen’s d for the same means and standard measures the proportion of the variation in Y that is associated
s
deviations in a between subject design. In general, Cohen’s d withmembershipofthedifferentgroupsdefinedbyX,orthesum
av
will be more similar to Cohen’s d (compared to Cohen’s d ), ofsquaresoftheeffectdividedbythetotalsumofsquares:
s rm
exceptwhencorrelationsbetweenmeasuresarelow,andthedif-
ference between the standard deviations is large. Cohen’s d rm is η2 = SS effect (11)
always more conservative, but with high correlations between
SS
total
observations,sometimesunreasonablyconservative.
When r is larger than 0.5, Cohen’s d will be larger than
z An η2 of 0.13 means that 13% of the total variance can be
Cohen’s d and Cohen’s d , and when r is smaller than 0.5,
rm av accountedforbygroupmembership.Althoughη2 isanefficient
Cohen’s d will be smaller than Cohen’s d and Cohen’s d
z rm av waytocomparethesizesofeffectswithinastudy(giventhatevery
(Morris and DeShon, 2002). Dunlap et al. (1996) argue against
effectisinterpretedinrelationtothetotalvariance,allη2froma
reporting Cohen’s d based on the idea that the correlation
z singlestudysumto100%),etasquaredcannoteasilybecompared
between measures does not change the size of the effect, but
between studies, because the total variability in a study (SS )
merelymakesitmorenoticeablebyreducingthestandarderror, total
dependsonthedesignofastudy,andincreaseswhenadditional
andthereforerefertoCohen’sd asanoverestimationoftheeffect
z variablesaremanipulated.Keppel(1991)hasrecommendedpar-
size.AlthoughCohen’sd israrelyreportedasaneffectsize,there
z tialetasquared(η2)toimprovethecomparabilityofeffectsizes
are some situations when I believe it to be perfectly defensible p
betweenstudies,whichexpressesthesumofsquaresoftheeffect
(see the General Discussion). However, I would in general rec-
in relation to the sum of squares of the effect and the sum of
ommend to report effect sizes that cannot be calculated from
squaresoftheerrorassociatedwiththeeffect.Partialetasquared
otherinformationinthearticle,andthatarewidelyusedsothat
iscalculatedas:
most readers should understand them. Because Cohen’s d can
z SS
be calculated from the t-value and the n, and is not commonly η2 = effect (12)
p SS +SS
used, my general recommendation is to report Cohen’s d or effect error
rm
Cohen’sd .
av
BecauseCohen’sd andCohen’sd arebasedonsampleesti-
rm av
mates, and these are positively biased, we should apply Hedges’ Table1|Summaryofdfamilyeffectsizes,standardizers,andtheir
correction.However,unlikeHedges’sg,Hedges’sg Hedges’sg recommendeduse.
s av rm
arenotcompletelyunbiased(Cumming,2012).Afterenteringthe
ES Standardizer Use
requiredinformationinthesupplementaryspreadsheet,itrecom-
mendseitherHedges’sg av orHedges’sg rm basedonwhichofthese Cohen’sdpop σ(population) Independentgroups,useinpower
two values is most similar to Cohen’s d
s
in a between subjects analyseswhenpopulationσis
design(inlinewiththegoaltoreportaneffectsizeestimatethat known,σcalculatedwithn
iscomparableacrosswithinandbetweenparticipantdesigns). Cohen’sds PooledSD Independentgroups,useinpower
Insomedesignstherearegoodreasonstobelievethemanip- analyseswhenpopulationσis
ulation did not only influence the mean between observations,
unknown,σcalculatedwithn-1
but also influenced the standard deviation. For example, pre- Hedges’g PooledSD Independentgroups,correctsfor
and post-measurements in a study that examines an interven- biasinsmallsamples,reportfor
useinmeta-analyses
tionmightdifferintheirstandarddeviationasaconsequenceof
Glass’s(cid:2) SDpre Independentgroups,usewhen
theintervention.Insuchdesigns,Glassetal.(1981)recommends
measurementor experimentalmanipulationmight
to use either the standard deviation of the pre-measurement
controlcondition affecttheSD
as a standardizer (often recommended, and used in the sup-
Hedges’gav (SD1 +SD2)/2 Correlatedgroups,reportforusein
plementary spreadsheet) or the standard deviation of the post-
meta-analyses(generally
measurement.ThisisreferredtoasGlass’s(cid:2)(andsubscriptscan
recommendedoverHedges’grm)
beusedtoindicatewhetherthepre-orpost-measurementstan-
Hedges’grm SDdifference Correlatedgroups,reportforusein
darddeviationwasused).Theseoptionshighlighttheimportance scorescorrected meta-analyses(moreconservative
ofspecifyingwhichversionoftheeffectsizediscalculated,and forcorrelation thenHedges’gav)
the use of subscript letters might be an efficient way to com- Cohen’sdz SDdifference Correlatedgroups,useinpower
municate the choices made. Researchers have to choose which scores analyses
www.frontiersin.org November2013|Volume4|Article863|5

Lakens Calculatingandreportingeffectsizes
For designs with fixed factors (manipulated factors, or factors or blocking factors between experimental designs (for exam-
that exhaust all levels of the independent variable, such as alive ple, including the gender of participants in the analysis as a
vs. dead), but not for designs with measured factors or covari- between-subjectsfactor,whichwillaccountforsomeofthevari-
ates,partialetasquaredcanbecomputedfromtheF-valueand ance)caninfluencethesizeofη2.Theyproposegeneralizedeta
p
itsdegreesoffreedom(e.g.,Cohen,1965): squared(η2),whichexcludesvariationfromotherfactorsfrom
G
the effect size calculation (to make the effect size comparable
F×df
with designs in which these factors were not manipulated), but
η2 = effect (13)
p F×df +df includesvarianceduetoindividualdifferences(tomaketheeffect
effect error
size comparable with between-subjects designs where this indi-
For example, for an F(1,38) =7.21, η2
p
=7.21×1/(7.21×1+ v
m
id
an
u
i
a
p
l
u
v
l
a
a
r
te
ia
d
nc
b
e
et
c
w
an
ee
n
n
ot
p
b
ar
e
ti
c
c
o
ip
n
a
tr
n
o
t
l
s
le
η
d
2
fo
a
r
n
)
d
. W
η2
he
a
n
re
al
i
l
d
f
e
a
n
c
t
t
i
o
c
r
a
s
l.
a
I
r
n
e
38)=0.16.Thisrelationshipbetweenη2andFillustrateshowη2 G p
p p other experimental designs, η2 can be computed from the out-
canbeusedinpoweranalysestoestimatethedesiredsamplesize G
∗ put of an ANOVA, and the supplementary spreadsheet allows
forafutureexperiment,andsoftwareprogramssuchasG Power
require η2 as input for this reason. If researchers want to facili- researchers to easily calculate η2 G for the most commonly used
p
experimentaldesigns.
tatepoweranalyses,theyshouldreportη2,especiallyfordesigns
p Asmentionedbefore,etasquaredisanuncorrectedeffectsize
wherenotallfactorsaremanipulated.
Users of G ∗ Power should be aware that the default η2 for estimate that estimates the amount of variance explained based
∗ p on the sample, and not based on the entire population. Omega
within designs as used by G Power does not correspond to the
squared(ω2)hasbeensuggestedtocorrectforthisbias(Hayes,
η2 asprovidedbySPSS.Whenusingη2 asprovidedbySPSSto
p ∗ p 1963),eventhoughitisatbestalessbiasedestimate(Winklerand
perform power calculations in G Power, one cannot simply use
Hays,1975).AswithHedges’correctionforCohen’sd,providing
the default settings of the program. Where SPSS provides a η2
p ω2 instead of η2 is formally correct. However, the difference is
thatalreadyincorporatesthecorrelationbetweenpairedmeasures
typicallysmall,andthebiasdecreasesasthesamplesizeincreases.
(hencethedifferenceinη2forthesametwomeansandstandard
p Inbetween-subjectsdesignswithfixedfactorsω2 andω2 canbe
deviationsdependingonwhethertheycomefromabetweenor p
within-subjectsdesigns),G ∗ Powerdefinesη2forwithin-subjects calculatedthroughtheformulasprovidedbyOlejnikandAlgina
p (2000)andBakeman(2005):
designs in exactly the same way as for between-subjects designs
(andincorporatesthecorrelationsbetweendependentmeasures df ×(MS −MS )
during the power calculations). A more formal description of ω2 = effect effect error (14)
SS +MS
thesedifferences,aswellasanexplanationhowtoconvertSPSS total error
η2 toG ∗ Powerη2 isprovidedintheAppendix.Themostrecent
ve p rsionofG ∗ Pow p er(3.1)allowsresearcherstoindicatethatthey ω2 = df effect ×(MS effect −MS error ) (15)
aredirectlyusinganSPSSη2 p intheircalculationsbyselectinga p df effect ×MS effect +(N−df effect )×MS error
radiobuttoninanoptionsmenu.Thisoptionisnotthedefault,
anditislikelythatresearcherswillcalculateawrongsampleesti- Forwithin-subjectsdesigns,ω2 iscalculatedinthesamewayas
p
mateiftheyarenotawareofthedifferencebetweenSPSSη2and forbetween-subjectsdesigns(seeabove),butω2iscalculatedby:
p
G ∗ Power η2. When η2 is used in the remainder of this docu-
p p
ment,theSPSSequivalentthatincludesthecorrelationbetween ω2 = df effect ×(MS effect −MS error ) (16)
dependentmeasuresismeant. SS +MS
total subjects
Althoughη2ismoreusefulwhenthegoalistocompareeffect
p
sizes across studies, it is not perfect, because η2 differs when Calculatinggeneralizedomegasquared(ω2)canbecomerather
p G
the same two means are compared in a within-subjects design complex, depending on the design (see the lists of formulas
or a between-subjects design. In a within-subjects ANOVA, the provided by Olejnik and Algina, 2003). Given this complexity,
error sum of squares can be calculated around the mean of andtherelativelysmalldifferencebetweenthebiasandlessbiased
each measurement, but also around the mean of each individ- estimate,Irecommendresearchersreportη2 and/orη2,atleast
G p
ualwhenthemeasurementsareaveragedacrossindividuals.This until generalized omega-squared is automatically provided by
allowsresearcherstodistinguishvariabilityduetoindividualdif- statistical software packages. For designs where all factors are
ferences from variability due to the effect in a within-subjects manipulated between participants, η2 and η2 are identical, so
p G
design,whereasthisdifferentiationisnotpossibleinabetween- eithereffectsizecanbereported.Forwithin-subjectsdesignsand
subjects design. As a consequence, whenever the two groups mixed designs where all factors are manipulated, η2 can always
p
of observations are positively correlated, η2 will be larger in a becalculatedfromtheF-valueandthedegreesoffreedomusing
p
within-subjectsdesignthaninabetween-subjectsdesign.Thisis formula13,butη2 cannotbecalculatedfromthereportedresults,
G
also the reason a within-subjects ANOVA typically has a higher and therefore I recommend reporting η2 for these designs (but
G
statisticalpowerthanabetween-subjectsANOVA. providingη2 inadditiontoη2 wouldbeacourtesytoreaders).
p G
Olejnik and Algina (2003) provide further reasons why η2 Thesupplementaryspreadsheetprovidesarelativelyeasywayto
p
canonlybeusedtocompareeffectsbetweenstudieswithsimilar calculateη2forcommonlyuseddesigns.Fordesignswithmeasured
G
experimental designs. Differences in the inclusion of covariates factorsorcovariates,neitherη2norη2 canbecalculatedfromthe
p G
FrontiersinPsychology|Cognition November2013|Volume4|Article863|6

Lakens Calculatingandreportingeffectsizes
reportedresults,andthusIrecommendreportingbothη2asη2, replicationstudywithα=0.05,power=0.95,andanallocation
p G
wherethefirstcanbeusedinpoweranalyses,andthesecondcan ratioofparticipantsof1betweenconditions.Foratwosidedtest,
beusedinmeta-analysesorinterpretedagainstthebenchmarks a power analysis indicates that the estimated sample size would
provided by Cohen (1988). Table2 summarizes when different be44participants.Finally,rememberthataCohen’sd s of1.13is
versionsofeffectsizemeasuresinther familyareused. apointestimate.The95%confidenceintervalaroundthiseffect
Cohen(1988)hasprovidedbenchmarkstodefinesmall(η2 = sizeestimatecanbecalculated usingabootstrappingprocedure
0.01), medium (η2 =0.06), and large (η2 =0.14) effects. As inESCI(CummingandFinch,2005)1,whichgives95%CI[0.16,
OlejnikandAlgina(2003)explain,thesebenchmarksweredevel- 2.06].Thisindicatesthatalthoughitmightbeunlikelythatpeople
oped for comparisons between unrestricted populations (e.g., likebothmoviesequallywell,wehardlyhaveanyideaofhowlarge
men vs. women), and using these benchmarks when interpret- the difference is. This level of uncertainty should be taken into
ingtheη2effectsizeindesignsthatincludecovariatesorrepeated accountwhenplanningthesamplesizeforastudy(foralternative
p
measures is not consistent with the considerations upon which approachestopoweranalysis,seeMaxwelletal.,2008).
the benchmarks were based. Although η2 can be compared Toreporttheeffectsizeforafuturemeta-analysis,weshould
G
against the benchmarks provided by Cohen (1988), this should calculate Hedges’s g =1.08, which differs slightly from Cohen’s
only be done as a last resort, and it is preferable to relate the d s duetothesmallsamplesize.Toreportthisstudy,researchers
effectsizetoothereffectsintheliterature(Thompson,2007).The could state in the procedure section that: “Twenty partici-
commonlanguageeffectsizecanbecalculatedforcontrastsfrom pants evaluated either Movie 1 (n=10) or Movie 2 (n=10).
the means and standard deviations of the twomeasurements as Participants reported higher evaluations of Movie 1 (M =8.7,
explainedforthedependentandindependentt-testsabove.This SD=0.82) than Movie 2 (M =7.7, SD=0.95), t(18) =2.52,
concludes the general summary of how to calculate and report p=0.022, 95% CI [0.17, 1.83], Hedges’s g s =1.08.” Note that
effect sizes. To highlight some more practical considerations, I weprovideallthenecessarystatisticalinformation(means,stan-
willprovideanexampleinwhichthesametwosetsofobserva- dard deviations, and number of participants in each between-
tionsareanalyzedusingpairedandindependentt-tests,aswellas subjectscondition).The95%confidenceintervalofthedifference
One-wayandrepeatedmeasuresANOVAs. betweenthemeansisprovided bydefault bystatisticalsoftware
packagessuchasSPSS,butalsocalculatedinthesupplementary
ANILLUSTRATIVEEXAMPLE spreadsheet. Alternatively, you could communicate the uncer-
In this example, I will address some practical considerations by tainty in the data by providing the 95% confidence interval
analyzingthedatasetinTable3,whichcontainstwosetsofobser- aroundtheeffectsizeestimatewhichcanbecalculatedwithESCI
vations.Thisdatawillbeanalyzedintwoways,eitherasabetween (Cumming, 2012). To interpret this effect, we can calculate the
design or as a within design. We will assume that Movie 1 and common language effect size, for example by using the supple-
Movie2aremovieevaluationsfortwodifferentmoviesonascale mentary spreadsheet, which indicates the effect size is 0.79. We
from1(verybad)to10(verygood).First,let’sconsiderasituation can therefore add the following interpretation of the effect size:
where these movie evaluations are collected from two different “Thechancethatforarandomlyselectedpairofindividualsthe
groups. An independent t-test would provide t(18) =2.52, p= evaluation of Movie 1 is higher than the evaluation of Movie
0.022(notethatthesupplementaryspreadsheetalsoprovidesthe
2is79%.”
outcomeofthestatisticaltest).WecancalculateCohen’sd using:
s
8.7−7.7 Table3|Artificialmovieevaluations.
d = (cid:4) =1.13 (17)
s
(10−1)0.822+(10−1)0.952
10+10−2 Movie1 Movie2 Difference
∗ 9.00 9.00 0.00
We can insert this value in G Power to retrieve the estimated
7.00 6.00 1.00
sample size needed to find a statistically significant effect in a
8.00 7.00 1.00
9.00 8.00 1.00
8.00 7.00 1.00
Table2|Summaryofrfamilyeffectsizesandtheirrecommended
9.00 9.00 0.00
use.
9.00 8.00 1.00
ES(Biased) ES(LessBiased) Use 10.00 8.00 2.00
9.00 8.00 1.00
etasquared(μ2) omegasquared Useforcomparisonsof
9.00 7.00 2.00
(ω2) effectswithinasinglestudy
etasquared(μ2 p ) omegasquared Useinpoweranalyses,and M 8.70 7.70 1.00
(ω2) forcomparisonsofeffect
p SD 0.82 0.95 0.67
sizesacrossstudieswiththe
sameexperimentaldesign.
Generalizedeta Generalized Useinmeta-analysesto
squared(μ2) omegasquared compareacrossexperimental 1ESCI can be downloaded from http://www.latrobe.edu.au/psy/research/
G
(ω2) designs projects/esci
G
www.frontiersin.org November2013|Volume4|Article863|7

Lakens Calculatingandreportingeffectsizes
Now, let’s consider a situation where the movie evaluations effectsizeη2 =0.26(whichisidenticaltoη2 inabetweensub-
p G
inTable3arecollectedfromthesamegroupofindividuals,and jectsANOVA).ThiseffectsizeisidenticaltotheCohen’sd of1.13,
s
eachparticipanthasevaluatedbothmovies.Bothobservationsare ascanbeseenwhenweconvertCohen’sd torusingformula3:
s
stronglycorrelated,withr=0.726.Asaconsequence,thestan-
darddeviationofthedifferencescoresismuchsmallerthanthe 1.13
r = (cid:4) =0.51 (19)
standard deviationsoftheevaluationsofeithermovieindepen- pb 1.132+202−2×20
dently.Adependentt-testwouldprovidet(9) =4.74,p=0.001. 10×10
WecancalculateCohen’sd usingformula6,butherewecalculate
z
thedenominator(S diff )usingformula8:
andsinceinaOne-WayANOVAr2 =η2
p
,0.512 =0.26.Inserting
η2 =0.26 into G ∗ Power to perform an a-priori power analysis
p
Cohen (cid:4) sd z = (cid:8)
1−0 f
s
o
am
rt
p
w
l
o
es
g
i
r
z
o
e
u
o
p
f
s
4
,
0
a
.
n
T
α
hi
=
ss
0
a
.
m
05
p
,
le
an
s
d
ize
a
e
p
s
o
ti
w
m
e
a
r
t
o
e
f
d
0
i
.
f
9
fe
5
r
w
sf
i
r
ll
o
y
m
iel
t
d
he
a
s
t
a
o
m
ta
-
l
0.822+0.952−2×0.726×0.82×0.95
plesizeof44thatwefoundforaCohen’sd of1.13.Ifwewould
s
=1.50 (18) have used Cohen’s d (which is 1.19) the two power analyses
pop
would have provided the same sample size estimate of 40. This
This is a markedly higher effect size than Cohen’s d from the example highlights a curious state of affairs where researchers
s
independent t-test. Some research questions can only be exam- (oftenimplicitly)correctforbiasintheeffectsizeestimatewhen
ined within subjects (see the general discussion), but in this theyuseCohen’sd s inpoweranalyses,buttheydonotcorrectfor
example you might want to be able to compare movie ratings thisbiaswhentheyuseη2 p .Tocorrectforbiasω2 p canbecalcu-
across movies, irrespective of whether all the people who eval- lated,andalthoughIrecommendreportingη2orη2 forpractical
p G
uate the movies saw all different movies. Therefore, Hedges’s reasons,calculatingω2forsimpledesignsisstraightforward.Ina
p
g rm orHedges’sg av wouldprovideamorerelevanteffectsizeto One-WayANOVAwithequalsamplesizesineachcell,ω2canbe
p
describetheeffectyouareinterestedin.Hedges’sg av isgenerally calculatedthroughtheformula:
recommended(andasthesupplementaryspreadsheetindicates,
also in this specific case), which is 1.08 (note that Hedges’s g
av ω2 =
1×(5−0.789)
(20)
rounds to the same value as Hedges’s g s in the independent p 1×5+(20−1)×0.789
t-testabove).
∗
WecaninsertCohen’sd z inG Powertoperformana-priori For the current difference, ω2 =0.21, but as explained above,
power analysis to find a statistically significant effect with α= calculating ω2 can become q p uite complex in more elaborate
0.05 and a power of 0.95. For a two sided test the power anal- p
designs, and therefore I recommend to report η2. To report
ysis would indicate a sample size estimate of 8 participants. p
this analysis, researchers could write in the procedure section
Thisclearlydemonstrates thedramatic increase inpowerthata
that:“TwentyparticipantsevaluatedeitherMovie1(n=10)or
repeatedmeasuresdesignprovidesiftheobservationsarestrongly
Movie 2 (n=10). Participants reported higher evaluations of
correlated. This is also reflected in a smaller 95% confidence
Movie 1 (M =8.7, SD=0.82) than Movie 2 (M =7.7, SD=
interval for Cohen’s d [0.42, 1.80] (for calculations, see ESCI,
Cumming and Finch,
z
2005). To report this study, researchers
0.95),F(1,18) =6.34,p=0.022,η2
p
=0.26,90%CI[0.02,0.48].”
Whereas in a t-test, we compare two groups, and can there-
couldwrite“TenparticipantsevaluatedbothMovie1andMovie
2.ParticipantsreportedhigherevaluationsofMovie1(M =8.7, fore calculate a confidence interval for the mean difference, we
SD=0.82)thanMovie2(M =7.7,SD=0.95),t(9) =4.74,p= can perform F-tests for comparisons between more than two
0.001,95%CI[0.52,1.48],Hedges’sg =1.08.”The95%con- groups. To be able to communicate the uncertainty in the data,
av
we should still report a confidence interval, but now we report
fidenceintervalofthedifferenceisagainbydefaultprovidedby
theconfidenceintervalaroundtheeffectsize.Anexcellentexpla-
statisticalsoftwarepackagessuchasSPSS,aswellasprovidedby
nation of confidence intervals around effect size estimates for
thesupplementaryspreadsheet.Notethatweclearlydistinguish
F-tests, which is accompanied by easy to use syntax files for a
thewayHedges’sgiscalculatedinthisstudyfromthewayitwas
range of statistical software packages (including SPSS) is pro-
calculated in the between-subjects analysis by the subscript. To
vided by Smithson (2001)2. The 90% confidence interval is
interpretthisresult,wecanagaincalculatethecommonlanguage
effectsize.Forcorrelatedsamples,Z =M /S (McGrawand reportedduetothefactthatanF-testisalwaysaone-sidedtest,
diff diff
and the 90% confidence interval always excludes 0 when the F-
Wong, 1992), and the percentage associated with the upper tail
test is statistically significant, while the 95% confidence interval
probability of this value is 0.93 (see the supplementary spread-
doesnot.
sheet). We can therefore add the interpretation “Controlling
Finally,let’slookattherepeatedmeasuresANOVAthatmir-
for individual differences in movie evaluations, the likelihood
that people who watch both movies prefer Movie 1 over Movie
rorsthedependentt-test,whichgivesF(1,9) =22.50,p=0.001.
StatisticalsoftwaresuchasSPSSwillprovideη2 =0.71,andusing
2is93%.” p
Insteadofusingt-tests,wecouldhaveanalyzedthedatausing the supplementary spreadsheet we find that η2 G = 0.26 (which
ananalysisofvariance(ANOVA).AOne-WayANOVAthatmir-
rors the independent samples t-test will provide F(1,18) =6.34, 2Thesefilescanbedownloadedfromhttp://dl.dropboxusercontent.com/u/
p=0.022,andstatisticalsoftwaresuchasSPSSwillprovidethe 1857674/CIstuff/CI.html
FrontiersinPsychology|Cognition November2013|Volume4|Article863|8

Lakens Calculatingandreportingeffectsizes
isidenticaltoη2 whenanalyzingthedataasabetween-subjects previousresultstoperformpoweranalyses.Consideringthesta-
G
design).Forthissimpledesign,wecanagaineasilycalculateω2: tisticalpowerofatestwhendesigningastudyisusefulforcumu-
p
lative science. As the sample size increases, sampling bias goes
1×(5−0.222) down(e.g.,Borensteinetal.,2011),andthereforehigh-powered
ω2 p = 1×5+(10−1)×0.222 =0.68 (21) studiesprovidebettereffectsizeestimatesformeta-analysesthan
studies with low power. Researchers should keep in mind that
We can use η2 to perform a power analysis. It was already observedeffectsizesinastudycandifferfromtheeffect sizein
p
thepopulation,andtherearereasonstobelieveoverestimations
explained that for within-subjects designs, η2 from SPSS dif-
p are common given current publication practices where journals
fersfromη2 fromG ∗ Power.G ∗ Powerprovidestwooptions,“as
p mainlyacceptstudiesthatobservestatisticallysignificanteffects
inSPSS”and“asinCohen(1988)—recommended.”Thediffer-
(Lane and Dunlap, 1978). Early publications of a given finding
ence between the two lies in how the non-centrality parameter
tendtooverestimatetheeffectsizeduetoregressiontothemean
(λ)iscalculated,whichisusedinthepowercalculations.Afull
(Fiedleretal.,2012).Forthesereasons,itisinadvisabletofocus
explanationofthenon-centralt-distributionisbeyondthescope
solely on an a-priori power analysis when the sample size for
of this article, but for an accessible introduction, see Cumming
a future study is determined (unless a very accurate effect size
(2012).TheformulaeitherusesN (Cohen,1988)orthedegrees
estimate is available), and researchers should pay attention to
offreedom(SPSS).Selectingthe“asinSPSS”optionwillthere-
alternative approaches to plan sample sizes (see Maxwell et al.,
forealwaysprovideamoreconservativeestimate.Ifweselectthe
2008).
∗
recommendedoption“asinCohen(1988)”G Powerreturnsthe
Becausepower-analysesareinherentlytiedtonull-hypothesis
estimatedsamplesizeofeightparticipants.Again,readersshould
significancetesting,someresearchersareambivalentaboutjusti-
beremindedthatpoweranalysisprovidesapointestimateofthe
fyingthesamplesizeofastudybasedonthelikelihoodtoobserve
minimalsamplesize,andthesecalculationsshouldbeinterpreted
asignificanteffect.Anoftenheardcriticismaboutnullhypothesis
whilekeepingthetypicaluncertaintyaboutthetrueeffectsizein
significancetestsisthatthenullhypothesisisnevertrue(Schmidt,
mind.
1992;TabachnickandFidell,2001).However,thenullhypothesis
To report this analysis, researchers could write: “Participants
isoftenagood(andsometimesextremelyaccurate)approxima-
reported higher evaluations for Movie 1 (M =8.7, SD=0.82)
tion(Murphyetal.,2012),andinstrictlycontrolledexperiments,
thanMovie2(M =7.7,SD=0.95),F(1,9) =22.50,p=0.001,
itispossibletomakethedirectionofthedifference,insteadofthe
η2 =0.71,90%CI[0.31,0.82],η2 =0.26.”NotethatI’vechosen
p G sizeoftheeffect,centraltothepurposeoftheresearch(Cohen,
toreportbothpartialetasquared(includingthe90%confidence
1995). On the other hand, one can reasonably argue that even
interval, using the scripts provided by Smithson, 2001) as gen-
when researchers are performing a null-hypothesis significance
eralized eta squared. By providing η2, researchers can perform
p test, they are in reality testing whether an effect is so small that
a-priori power analyses, and by providing η2, researchers can itcanbeconsiderednegligible(foradetaileddescriptionofsuch
G
easilyincludethestudyinafuturemeta-analysisthatcompares minimum-effecttests,seeMurphyandMyors,1999).Thisinturn
effects across different designs (see Olejnik and Algina, 2003). requires that researchers at least implicitly consider only effects
Providing two effect sizes is in line with the suggestion that thatarelargeenoughtobetheoreticallyinteresting.
reportingmultipleeffectsizescanyieldagreaterunderstanding The current article is limited to effect sizes for standardized
ofaspecificeffect(PreacherandKelley,2011). mean differences. Such comparisons are extremely common in
experimental psychology, but hardly cover all possible research
GENERALDISCUSSION designs. Instead of a complete overview of effect sizes in exper-
The aim of this article was to provide a practical primer on imental research (e.g., Grissom and Kim, 2005), I have tried to
how to calculate and report effect sizes to facilitate cumulative provide a practical primer that aims to be an time-efficient but
science, with a focus on t-tests and ANOVA’s. Current prac- complete overview of one specific type of research question. I
tices in the way researchers report effect sizes can be improved. thereforeseethelimitationasastrength,andthinksimilarded-
First, researchers should always report effect sizes. When using icated overviews for other types of analyses (e.g., risk ratios,
effectsizesbasedonCohen’sd,researchersshouldspecifywhich multi-level modeling) would be very useful for the scientific
standardizer is used (for example by using subscripts). When community, especially when they are openly accessible. When
reporting effect sizes for ANOVAs it is recommended to report possible,futurearticlesabouteffectsizecalculationsshouldpro-
generalizedetasquaredinsteadof(orinadditionto)partialeta vide software or spreadsheets to make it as easy as possible for
squared.Finally,effectsizesshouldbeinterpreted,preferablyby researcherstoimplementthesecalculationsintotheirworkflow.
comparing them to other effects in the literature or through For excellent examples, see ESCI (Cumming and Finch, 2005),
∗
the common language effect size, instead of using the bench- confidence interval software by Smithson (2001), and G Power
marks provided by Cohen (1988). This primer explained which (Faul et al., 2009). Note that the easiest way to facilitate cumu-
effect sizes should be reported and provides a supplementary lative science is to share the data of the studies you report. The
spreadsheetthatresearcherscanusetoeasilycalculatetheseeffect internet makes it incredibly easy to upload data files in order
sizes. to share them with the scientific community (for example, see
Correctly reporting effect sizes does not only facilitate meta- www.openscienceframework.org). Especially for mixed designs
analyses, but also makes it easier for researchers who build on oranalyseswithcovariates,wherecalculatingω2 becomesquite
G
www.frontiersin.org November2013|Volume4|Article863|9

Lakens Calculatingandreportingeffectsizes
complex,sharingthedatawillalwaysenableresearcherswhowant seesbothmovies(inawithin-subjectexperiment)prefersMovie
toperformameta-analysistocalculatetheeffectsizestheyneed. 1overMovie2is93%.TheCLof93%isnotanoverestimation,
A more fundamental question is whether effect sizes from butanaccuratedescriptionofthelikelihoodincorrelatedsamples
within-subjectsdesignsthatcontrolforintra-subjectsvariability wheremeasurementsarepaired.Wecancalculateeffectsizesfor
(η2 andω2),orthattakethecorrelationbetweenmeasurements within-subject designs (e.g., Cohen’s d and Cohen’s d ) that
p p rm av
intoaccount(Cohen’sd )areanaccuratedescriptionofthesize are generalizable to between-subjects designs, but if our goal is
z
oftheeffect,orwhethereffectsizesthatdonotcontrolforintra- tomakeastatementaboutwhetherindividualswhowatchboth
subjects variability (η2 and ω2), or that control for correlation movieswillpreferMovie1overMovie2,aneffectsizethatgen-
G G
betweenmeasurements(e.g.,Cohen’sd orCohen’sd )arepre- eralizestosituationswheretwodifferentgroupsofpeoplewatch
rm av
ferred.Ibelievethisdiscussioniscurrentlybiasedbywhatcould oneofthetwomoviesmightnotprovidethebestanswertoour
be called designism, a neologism to refer to the implicit belief question.
thatbetween-subjectsdesignsarethedefaultexperimentaldesign, Generalizationacrossdesigns(thatincludeordonotinclude
andthateffectsizescalculatedfrombetween-subjectsdesignsare blockingfactors,forexample)canstillbedesirable.Itwouldbe
morelogicalornatural.Thedefensefordesignismisasfollows. possible to develop a “within-subjects generalized eta squared”
It is desirable to be able to compare effect sizes across designs, equivalent that excludes variation due to individual differences
regardlessofwhethertheobservationsoriginatefromawithinor fromthedenominator(asη2)fortheeffectsizecalculation,but
p
between-subjectsdesign.Becauseitisnotpossibletocontrolfor includes variation due to manipulated factors (as η2), if one
G
individual differences in between-subject designs, we therefore was inclined to make a statement against “designism.” The cur-
shouldconsidertheeffectsizethatdoesnotcontrolforindividual rent article highlights that there is no single “true” definition
differencesasthenaturaleffectsize.Asaconsequence,effectsizes ofanstandardizedeffectsize.Researchersneedtochoosewhich
thatcontrolforindividualdifferencesare“inflated”comparedto effect size provides the best summary of the effect, and specify
the“default”(e.g.,Dunlapetal.,1996). whicheffectsizetheyreport(Thompson,2007;Cumming,2012).
Such a reasoning ignores the fact that many effects in psy- An efficient way to do so is the use of subscript letters, as used
chology are inherently contextual. For example, consider the throughoutthecurrentarticle.
investigation of how people slow down in a reaction time task Intheend,thechoiceofaneffectsizecalculationdependson
aftertheyhavemadeanerror(post-errorslowing;Rabbit,1966). the research question and the experimental design. It is impor-
Recently,Dutilhetal.(2012)havesuggestedthatthebestwayto tanttoexplicitlystatewhicheffectsizeiscalculated,andtomake
answer research questions about post-error slowing is to calcu- a motivated choice about which effect sizes to report. With the
late pairwise comparisons around each error, and analyze these current overview, I hope to have provided a practical primer to
differencescores(againstzero,oragainstthedifferencescorein assist researchers in choosing and calculating effect sizes, in the
other conditions), instead of averaging response times over all convictionthatmakingamoreinformedchoiceofaboutwhich
pre-errorandposterrorresponsesandcomparethesetwoaver- effectsizeestimatestoreportwillfacilitatecumulativescience.
ages in a paired-samples t-test. In other words, the difference
scoreisthemostnaturalunitofanalysisinsuchresearch.Because ACKNOWLEDGMENTS
a between-subjects design is not possible, there will never be a I would like to thank Edgar Erdfelder for his explanation of
meta-analysis that compares post-error slowing across between the differences between Cohen’s f in G ∗ Power and SPSS, Geoff
andwithin-subjectsdesigns.Becausedifferencescoresarethenat- Cumming for sharing his thoughts on standardizers, Job van
uralunitofanalysis,onecouldarguethatthelargereffectsizesare Wolferenforthesuggestiontocreateatreediagraminthespread-
notinflated,butwithin-subjectsanalysessimplyreflectadifferent sheet, and Iris Schneider and Ellen Evers for comments on a
researchquestion,examinedatadifferentlevelofanalysis(intra- previousdraftofthisarticle.
individual instead of inter-individual). There are clear parallels
with continuing discussions about measures for the proportion SUPPLEMENTARYMATERIAL
of variance explained in multilevel modeling, where it is much TheSupplementaryMaterialforthisarticlecanbefoundonline
morecommontoassumethatrepeatedmeasurementsofindivid- at: http://www.frontiersin.org/journal/10.3389/fpsyg.2013.
uals are the default unit of analysis (see Tabachnick and Fidell, 00863/abstract
2001).
When empirical questions can only be examined in within- REFERENCES
subjectsdesigns(suchasinthecaseofpost-errorslowing),effect Aberson,C.L.(2010).AppliedPowerAnalysisfortheBehavioralSciences.NewYork,
sizesthatcontrolforintra-subjectsvariability(η2andω2),orthat NY:Routledge.
p p
Bakeman, R. (2005). Recommended effect size statistics for repeated measures
takethecorrelationbetweenmeasurementsintoaccount(Cohen’s
designs.Behav.Res.Methods37,379–384.doi:10.3758/BF03192707
d )areareasonablestatistictoreport.Thisisnicelydemonstrated
z Bakker, M., van Dijk, A., and Wicherts, J. M. (2012). The rules of the
bythecommonlanguageeffectsize(whichcanbedirectlycalcu- game called psychological science. Perspect. Psychol. Sci. 7, 543–554. doi:
latedfromCohen’sd orCohen’sd ).Intheillustrativeexample 10.1177/1745691612459060
s z
presentedearlierinthisarticle,weconcludedthechancethatfor Borenstein, M., Hedges, L. V., Higgins, J. P., and Rothstein, H. R. (2011).
IntroductiontoMeta-Analysis.Hoboken,NJ:Wiley.
arandomlyselectedpairofindividualstheevaluationofMovie1
Brand,A.,Bradley,M.T.,Best,L.A.,andStoica,G.(2008).Accuracyofeffect
ishigherthantheevaluationofMovie2is79%(inthebetween-
sizeestimatesfrompublishedpsychologicalresearch.Percept.Mot.Skills106,
subjectexperiment),butthatthechancethatanindividualwho 645–649.doi:10.2466/pms.106.2.645-649
FrontiersinPsychology|Cognition November2013|Volume4|Article863|10

Lakens Calculatingandreportingeffectsizes
Cohen,J.(1965).Somestatisticalissuesinpsychologicalresearch,”inHandbookof McGraw,K.O.,andWong,S.P.(1992).Acommonlanguageeffectsizestatistic.
ClinicalPsychology,edB.B.Wolman(NewYork,NY:McGraw-Hill),95–121. Psychol.Bull.111,361–365.doi:10.1037/0033-2909.111.2.361
Cohen,J.(1988).StatisticalPowerAnalysisfortheBehavioralSciences.NewYork, Morris, S. B., and DeShon, R. P. (2002). Combining effect size estimates in
NY:RoutledgeAcademic. meta-analysiswithrepeatedmeasuresandindependent-groupsdesigns.Psychol.
Cohen,J.(1995).Theearthisround(p<.05):Rejoinder.Am.Psychol.50,1103. Methods7,105–125.doi:10.1037/1082-989X.7.1.105
doi:10.1037/0003-066X.50.12.1103 Murphy,K.,Myors,B.,andWolach,A.(2012).StatisticalPowerAnalysis:ASimple
Cumming, G. (2012). Understanding the New Statistics: Effect sizes, Confidence andGeneralModelforTraditionalandModernHypothesisTests.NewYork,NY:
Intervals,andMeta-Analysis.NewYork,NY:Routledge. RoutledgeAcademic.
Cumming,G.,andFinch,S.(2005).Inferencebyeye:confidenceintervalsand Murphy,K.R.,andMyors,B.(1999).Testingthehypothesisthattreatmentshave
how to read pictures of data. Am. Psychol. 60, 170–180. doi: 10.1037/0003- negligibleeffects:minimum-effecttestsinthegenerallinearmodel.J.Appl.
066X.60.2.170 Psychol.84,234–248.doi:10.1037/0021-9010.84.2.234
Dunlap,W.P.,Cortina,J.M.,Vaslow,J.B.,andBurke,M.J.(1996).Meta-analysis Olejnik,S.,andAlgina,J.(2000).Measuresofeffectsizeforcomparativestud-
ofexperimentswithmatchedgroupsorrepeatedmeasuresdesigns.Psychol. ies:applications,interpretations,andlimitations.Contemp.Educ.Psychol.25,
Methods1,170–177.doi:10.1037/1082-989X.1.2.170 241–286.doi:10.1006/ceps.2000.1040
Dutilh,G.,vanRavenzwaaij,D.,Nieuwenhuis,S.,vanderMaas,H.L.,Forstmann, Olejnik,S.,andAlgina,J.(2003).Generalizedetaandomegasquaredstatistics:
B. U., and Wagenmakers, E. J. (2012). How to measure post-error slow- measuresofeffectsizeforsomecommonresearchdesigns.Psychol.Methods8,
ing: a confound and a simple solution. J. Math. Psychol. 56, 208–216. doi: 434–447.doi:10.1037/1082-989X.8.4.434
10.1016/j.jmp.2012.04.001 Poincaré,H.(1952).ScienceandMethod.NewYork,NY:DoverPublications.
Ellis,P.D.(2010).Theessentialguidetoeffectsizes:Statisticalpower,meta-analysis, Preacher,K.J.,andKelley,K.(2011).Effectsizemeasuresformediationmodels:
and the interpretation of research results. Cambridge: Cambridge University quantitativestrategiesforcommunicatingindirecteffects.Psychol.Methods16,
Press.doi:10.1017/CBO9780511761676 93–115.doi:10.1037/a0022658
Faul,F.,Erdfelder,E.,Buchner,A.,andLang,A.-G.(2009).Statisticalpoweranaly- Rabbit,P.M.A.(1966).Errorsanderrorcorrectioninchoicereactiontasks.J.Exp.
sesusingG∗Power3.1:testsforcorrelationandregressionanalyses.Behav.Res. Psychol.71,264–272.doi:10.1037/h0022853
Methods41,1149–1160.doi:10.3758/BRM.41.4.1149 Rosenthal,R.(1991).Meta-analyticproceduresforsocialresearch.NewburyPark,
Fidler,F.(2002).ThefiftheditionoftheAPAPublicationManual:Whyitsstatistics CA:SAGEPublications,Incorporated.
recommendationsaresocontroversial.Educ.Psychol.Meas.62,749–770.doi: Rosenthal,R.(1994).“Parametricmeasuresofeffectsize,”inThehand-bookof
10.1177/001316402236876 research synthesis, eds H. Cooper and L. V. Hedges (New York, NY: Sage),
Fiedler,K.,Kutzner,F.,andKrueger,J.I.(2012).Thelongwayfromα-errorcontrol 231–244.
tovalidityproperproblemswithashort-sightedfalse-positivedebate.Perspect. Schmidt,F.L.(1992).Whatdodatareallymean.Am.Psychol.47,1173–1181.doi:
Psychol.Sci.7,661–669.doi:10.1177/1745691612462587 10.1037/0003-066X.47.10.1173
Glass,G.V.,McGaw,B.,andSmith,M.L.(1981).Meta-AnalysisinSocialResearch. Smithson, M. (2001). Correct confidence intervals for various regression effect
BeverlyHills,CA:Sage. sizesandparameters:theimportanceofnoncentraldistributionsincomputing
Grissom,R.J.,andKim,J.J.(2005).EffectSizesforResearch:ABroadPractical intervals.Educ.Psychol.Meas.61,605–632.doi:10.1177/00131640121971392
Approach.Mahwah,NJ:LawrenceErlbaumAssociates. Tabachnick,B.G.,andFidell,L.S.(2001).UsingMultivariateStatistics,4thEdn.
Hayes,W.L.(1963).StatisticsforPsychologists.NewYork,NY:Holt,Rinehartand Boston:AllynandBacon.
Winston. Thompson, B. (2006). Foundations of Behavioral Statistics: An Insight-Based
Hedges,L.V.,andOlkin,I.(1985).Statisticalmethodsformeta-analysis.SanDiego, Approach.NewYork,NY:Guilford.
CA:AcademicPress. Thompson,B.(2007).Effectsizes,confidenceintervals,andconfidenceintervals
Kelley,K.(2005).Theeffectsofnonnormaldistributionsonconfidenceintervals foreffectsizes.Psychol.Sch.44,423–432.doi:10.1002/pits.20234
aroundthestandardizedmeandifference:bootstrapandparametricconfidence Winkler, R. L., and Hays, W. L. (1975). Statistics: Probability, Inference, and
intervals.Educ.Psychol.Meas.65,51–69.doi:10.1177/0013164404264850 Decision,2ndEdn.NewYork,NY:Holt.
Keppel,G.(1991).DesignandAnalysis:Aresearcher’shandbook.EnglewoodCliffs,
NJ:PrenticeHall. ConflictofInterestStatement:Theauthordeclaresthattheresearchwascon-
Kline,R.B.(2004).BeyondSigni?canceTesting:ReformingDataAnalysisMethodsin ductedintheabsenceofanycommercialorfinancialrelationshipsthatcouldbe
BehavioralResearch.WashingtonDC:AmericanPsychologicalAssociation.doi: construedasapotentialconflictofinterest.
10.1037/10693-000
Lane,D.M.,andDunlap,W.P.(1978).Estimatingeffectsize:biasresultingfrom Received:13July2013;accepted:30October2013;publishedonline:26November
thesignificancecriterionineditorialdecisions.Br.J.Math.Stat.Psychol.31, 2013.
107–112.doi:10.1111/j.2044-8317.1978.tb00578.x Citation:LakensD(2013)Calculatingandreportingeffectsizestofacilitatecumu-
Loftus, G. R., and Masson, M. E. (1994). Using confidence intervals in lativescience:apracticalprimerfort-testsandANOVAs.Front.Psychol.4:863.doi:
within-subjects designs. Psychon. Bull. Rev. 1, 476–490. doi: 10.3758/ 10.3389/fpsyg.2013.00863
BF03210951 This article was submitted to Cognition, a section of the journal Frontiers in
Maxwell,S.E.,andDelaney,H.D.(2004).Designingexperimentsandanalyzing Psychology.
data:Amodelcomparisonperspective,2ndEdn.Mahwah,NJ:Erlbaum. Copyright © 2013 Lakens.Thisisanopen-accessarticledistributedundertheterms
Maxwell,S.E.,Kelley,K.,andRausch,J.R.(2008).Samplesizeplanningforsta- oftheCreativeCommonsAttributionLicense(CCBY).Theuse,distributionorrepro-
tisticalpowerandaccuracyinparameterestimation.Annu.Rev.Psychol.59, ductioninotherforumsispermitted,providedtheoriginalauthor(s)orlicensorare
537–563.doi:10.1146/annurev.psych.59.103006.093735 creditedandthattheoriginalpublicationinthisjournaliscited,inaccordancewith
McGrath,R.E.,andMeyer,G.J.(2006).Wheneffectsizesdisagree:thecaseofr acceptedacademicpractice.Nouse,distributionorreproductionispermittedwhich
andd.Psychol.Methods11,386–401.doi:10.1037/1082-989X.11.4.386 doesnotcomplywiththeseterms.
www.frontiersin.org November2013|Volume4|Article863|11

Lakens Calculatingandreportingeffectsizes
APPENDIX
The parameter Cohen’s f2 used in G ∗ Power differs from the
parameter for Cohen’s f2 that is used in the statistical software
package SPSS. Since η2 =f2/1+f2, this also means the val-
p
ues for η2 are not interchangeable between SPSS and G ∗ Power.
p
AsErdfelder(personalcommunication)explains,SPSSη2 canbe
p
convertedtoG ∗ Powerη2byfirstconvertingittof2 using:
p SPSS
SPSSη2
f2 = p
SPSS 1−SPSSη2
p
Then,insertitinthefollowingformula:
N−k (m−1)
f G 2 ∗Power =f S 2 PSS × N × m ×(1−ρ)
whereN isthesamplesize,kisthenumberofgroups,misthe
numberofrepetitions, and ρisthe(mean)correlationbetween
themeasures,whichcanfinallybeconvertedintopartialetaasit
∗
isusedinG Power:
G ∗ Powerη2 p =f G 2 ∗Power /1+f G 2 ∗Power .
FrontiersinPsychology|Cognition November2013|Volume4|Article863|12