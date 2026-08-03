J.oftheAcad.Mark.Sci.(2015)43:115–135
DOI10.1007/s11747-014-0403-8
METHODOLOGICALPAPER
A new criterion for assessing discriminant validity
in variance-based structural equation modeling
JörgHenseler&ChristianM.Ringle&MarkoSarstedt
Received:18March2014/Accepted:29July2014/Publishedonline:22August2014
#TheAuthor(s)2014.ThisarticleispublishedwithopenaccessatSpringerlink.com
Abstract Discriminant validity assessment has become a Keywords Structuralequationmodeling(SEM) .Partialleast
generally accepted prerequisite for analyzing relationships squares(PLS) .Resultsevaluation .Measurementmodel
betweenlatentvariables.For variance-basedstructuralequa- assessment .Discriminantvalidity.Fornell-Larckercriterion .
tion modeling, such as partial least squares, the Fornell- Cross-loadings .Multitrait-multimethod(MTMM)matrix .
Larcker criterion and the examination of cross-loadings are Heterotrait-monotrait(HTMT)ratioofcorrelations
thedominantapproachesforevaluatingdiscriminantvalidity.
By means of a simulation study, we show that these ap-
proachesdonotreliablydetectthelackofdiscriminantvalid- Introduction
ity in common research situations. We therefore propose an
alternativeapproach,basedonthemultitrait-multimethodma- Variance-based structural equation modeling (SEM) is
trix, to assess discriminant validity: the heterotrait-monotrait growing in popularity, which the plethora of recent devel-
ratioofcorrelations.Wedemonstrateitssuperiorperformance opments and discussions (e.g., Henseler et al. 2014;
by means of a Monte Carlo simulation study, in which we Hwang et al. 2010; Lu et al. 2011; Rigdon 2014;
compare the new approach to the Fornell-Larcker criterion Tenenhaus and Tenenhaus 2011), as well as its frequent
and the assessment of (partial) cross-loadings. Finally, we application across different disciplines, demonstrate (e.g.,
provide guidelines on how to handle discriminant validity Hair et al. 2012a, b; Lee et al. 2011; Peng and Lai 2012;
issuesinvariance-basedstructuralequationmodeling. Ringle et al. 2012). Variance-based SEM methods—such
as partial least squares path modeling (PLS; Lohmöller
1989; Wold 1982), generalized structured component
J.Henseler analysis (GSCA; Henseler 2012; Hwang and Takane
FacultyofEngineeringTechnology,UniversityofTwente,Enschede, 2004), regularized generalized canonical correlation anal-
Netherlands
ysis (Tenenhaus and Tenenhaus 2011), and best fitting
e-mail:j.henseler@utwente.nl
proper indices (Dijkstra and Henseler 2011)—have in
J.Henseler common that they employ linear composites of observed
ISEGI,UniversidadeNovadeLisboa,Lisbon,Portugal variables as proxies for latent variables, in order to esti-
mate model relationships. The estimated strength of these
C.M.Ringle
relationships, most notably between the latent variables,
HamburgUniversityofTechnology(TUHH),Hamburg,Germany
e-mail:c.ringle@tuhh.de can only be meaningfully interpreted if construct validity
was established (Peter and Churchill 1986). Thereby, re-
C.M.Ringle
searchers ensure that the measurement models in their
UniversityofNewcastle,Newcastle,Australia
studies capture what they intend to measure (Campbell
M.Sarstedt and Fiske 1959). Threats to construct validity stem from
Otto-von-Guericke-UniversityMagdeburg,Magdeburg,Germany various sources. Consequently, researchers must employ
different construct validity subtypes to evaluate their re-
M.Sarstedt(*)
sults (e.g., convergent validity, discriminant validity, cri-
UniversityofNewcastle,Newcastle,Australia
e-mail:marko.sarstedt@ovgu.de terion validity; Sarstedt and Mooi 2014).

116 J.oftheAcad.Mark.Sci.(2015)43:115–135
Inthispaper,wefocusonexaminingdiscriminantvalidity under certain circumstances (Henseler et al. 2014; Rönkkö
as one of the key building blocks of model evaluation andEvermann2013),pointingtoapotentialweaknessinthe
(e.g.,Bagozzi and Phillips 1982; Hair et al. 2010). most commonly used discriminant validity criterion.
Discriminant validity ensures that a construct measure is However,thesestudiesdonotprovideanysystematicassess-
empiricallyuniqueandrepresentsphenomenaofinterestthat ment of the Fornell-Larcker criterion’s efficacy regarding
othermeasuresinastructuralequationmodeldonotcapture testing discriminant validity. Furthermore, while researchers
(Hair etal. 2010).Technically, discriminantvalidityrequires frequentlynotethatcross-loadingsaremoreliberalintermsof
that“atestnotcorrelatetoohighlywithmeasuresfromwhich indicatingdiscriminantvalidity(i.e.,theassessmentofcross-
itissupposedtodiffer”(Campbell1960,p.548).Ifdiscrim- loadingswillsupportdiscriminantvaliditywhentheFornell-
inant validity is not established, “constructs [have] an influ- Larckercriterionfailstodoso;Hairetal.2012a,b;Henseler
ence on the variation of more than just the observed etal.2009),priorresearchhasnotyettestedthisnotion.
variables to which they are theoretically related” and, Inthisresearch,wepresentthreemajorcontributionsto
as a consequence, “researchers cannot be certain results variance-based SEM literature on marketing that are rele-
confirming hypothesized structural paths are real or vant for the social sciences disciplines in general. First,
whether they are a result of statistical discrepancies” we show that neither the Fornell-Larcker criterion nor the
(Farrell 2010, p. 324). Against this background, discrim- assessment of the cross-loadings allows users of variance-
inant validity assessment has become common practice based SEM to determine the discriminant validity of their
in SEM studies (e.g., Shah and Goldstein 2006; Shook measures. Second, as a solution for this critical issue, we
et al. 2004). propose the heterotrait-monotrait ratio of correlations
Despiteitsobviousimportance,researchersusingvariance- (HTMT)asanewapproachtoassessdiscriminantvalidity
basedSEMusuallyrelyonaverylimitedsetofapproachesto in variance-based SEM. Third, we demonstrate the effica-
establish discriminantvalidity. Asshown inTable1, tutorial cy of HTMT by means of a Monte Carlo simulation, in
articles and introductory books on PLS almost solely which we compare its performance with that of the
recommend using the Fornell and Larcker (1981) criterion Fornell-Larcker criterion and with the assessment of the
andcross-loadings(Chin1998).ReviewsofPLSusesuggest cross-loadings. Based on our findings, we provide re-
that these recommendations have been widely applied in searchers with recommendations on when and how to
published research in the fields of management informa- use the approach. Moreover, we offer guidelines for
tion systems (Ringle et al. 2012), marketing (Hair et al. treating discriminant validity problems. The findings of
2012a), and strategic management (Hair et al. 2012b). this research are relevant for both researchers and practi-
For example, the marketing studies in Hair et al.'s tioners in marketing and other social sciences disciplines,
(2012a) review that engage in some type of discriminant since we establish a new standard means of assessing
validity assessment use the Fornell-Larcker criterion discriminant validity as part of measurement model eval-
(72.08%), cross-loadings (7.79%), or both (26.13%). uation in variance-based SEM.
Reviews in other disciplines paint a similar monotonous
picture. Very few studies report other means of
assessing discriminant validity. These alternatives in- Traditionaldiscriminantvalidityassessmentmethods
clude testing whether the latent variable correlations
are significantly different from one another (Milberg Comparingaveragecommunalityandsharedvariance
et al. 2000) and running separate confirmatory factor
analyses prior to employing variance-based SEM In their widely cited article on tests to evaluate structural
(Cording et al. 2008; Pavlou et al. 2007; Ravichandran equation models, Fornell and Larcker (1981) suggest that
and Rai 2000) by using, for example, Anderson and discriminant validity is established if a latent variable
Gerbing's (1988) test as the standard.1 accounts for more variance in its associated indicator
WhilemarketingresearchersroutinelyrelyontheFornell- variables than it shares with other constructs in the same
Larckercriterionandcross-loadings(Hairetal.2012a),there model. To satisfy this requirement, each construct’s av-
are very few empirical findings on the suitability of these erage variance extracted (AVE) must be compared with
criteriaforestablishingdiscriminantvalidity.Recentresearch its squared correlations with other constructs in the mod-
suggests that the Fornell-Larcker criterion is not effective el. According to Gefen and Straub (2005, p. 94), “[t]his
comparison harkens back to the tests of correlations in
multi-trait multi-method matrices [Campbell and Fiske,
1It is important to note that studies may have used different ways to 1959], and, indeed, the logic is quite similar.”
assessdiscriminantvalidityassessment,butdidnotincludetheseinthe
TheAVErepresentstheaverageamountofvariancethata
maintextsorappendices(e.g.,duetopagerestrictions).Wewouldliketo
thankananonymousreviewerforthisremark. construct explains in its indicator variables relative to the

J.oftheAcad.Mark.Sci.(2015)43:115–135 117
Table1 Recommendationsfor
establishingdiscriminantvalidity Reference Recommendation
inpriorresearch
Fornell-Larckercriterion Cross-loadings
Barclay,Higgins,andThompson(1995) ✓ ✓
Chin(1998,2010) ✓ ✓
FornellandCha(1994) ✓
GefenandStraub(2005) ✓ ✓
Gefen,Straub,andBoudreau(2000) ✓ ✓
Götz,Liehr-Gobbers,andKrafft(2010) ✓
Hairetal.(2011) ✓ ✓
Hairetal.(2012a) ✓ ✓
Hairetal.(2012b) ✓ ✓
Hairetal.(2014) ✓ ✓
Henseleretal.(2009) ✓ ✓
Hulland(1999) ✓
Otherprominentintroductory Leeetal.(2011) ✓ ✓
textsonPLS(e.g.,FalkandMiller PengandLai(2012) ✓
1992;HaenleinandKaplan2004;
Ringleetal.(2012) ✓ ✓
Lohmöller1989;Tenenhausetal.
2005;Wold1982)donotoffer RoldánandSánchez-Franco(2012) ✓ ✓
recommendationsforassessing Sosiketal.(2009) ✓
discriminantvalidity
overallvarianceofitsindicators.TheAVEforconstructξ is qffiffiffiffiffiffiffiffiffiffiffiffiffiffi
j AVEξ >maxjr j ∀i≠j: ð4Þ
definedasfollows: j ij
XKj
λ2 From a conceptual perspective, the application of the
jk Fornell-Larckercriterionisnotwithoutlimitations.Forexam-
AVEξ ¼ k¼1 ; ð1Þ
j XKj ple,itiswellknownthatvariance-basedSEMmethodstendto
λ2 þΘ overestimate indicator loadings (e.g., Hui and Wold 1982;
jk jk
k¼1 Lohmöller 1989). The origin of this characteristic lies in the
methods’ treatment of constructs. Variance-based SEM
whereλ istheindicatorloadingandΘ theerrorvariance
jk jk methods,suchasPLSorGSCA,usecompositesofindicator
ofthekthindicator(k=1,…,K)ofconstructξ.K isthenumber
j j j variablesassubstitutesfortheunderlyingconstructs(Henseler
ofindicatorsofconstructξ.Ifalltheindicatorsarestandardized
j etal. 2014).The loadingofeachindicator onthe composite
(i.e.,haveameanof0andavarianceof1),Eq.1simplifiesto
representsa relationship between the indicator and the com-
positeofwhichtheindicatorispart.Asaresult,thedegreeof
AVEξ ¼ 1 K ∑jλ2 : ð2Þ overlap between each indicator and composite will be high,
j K jk¼1 jk yieldinginflatedloadingestimates,especiallyifthenumberof
indicatorsper construct (composite) issmall (Aguirre-Urreta
The AVE thus equals the average squared standardized
et al. 2013).2 Furthermore, each indicator’s error variance is
loading,anditisequivalenttothemeanvalueoftheindicator
also included in the composite (e.g., Bollen and Lennox
reliabilities.Now,letr bethecorrelationcoefficientbetween
ij 1991),whichincreasesthevaliditygapbetweentheconstruct
theconstructscoresofconstructsξ andξ Thesquaredinter-
i j andthecomposite(Rigdon2014)and,ultimately,compounds
construct correlation r2 indicates the proportion of the vari-
ij theinflationintheloadingestimates.Similartotheloadings,
ancethatconstructsξ andξ share.TheFornell-Larckercrite-
i j variance-basedSEM methods generally underestimate struc-
rionthenindicates thatdiscriminantvalidityisestablished if
tural model relationships (e.g., Reinartz et al. 2009;
thefollowingconditionholds:
Marcoulides, Chin, and Saunders 2012). While these devia-
AVEξ >maxr2 ∀i≠j: ð3Þ tionsareusuallyrelativelysmall(i.e.,lessthan0.05;Reinartz
j ij
2Nunnally(1978)offersanextremeexamplewithfivemutuallyuncor-
Sinceitiscommontoreportinter-constructcorrelationsin
related indicators, implying zero loadings if all were measures of a
publications,adifferentnotationcanbefoundinmostreports construct. However, each indicator’s correlation (i.e., loading) with an
ondiscriminantvalidity: unweightedcompositeofallfiveitemsis0.45.

118 J.oftheAcad.Mark.Sci.(2015)43:115–135
et al. 2009), the interplay between inflated AVE values and algorithms, such as PLS, favors the support of discriminant
deflated structural model relationships in the assessment of validityasdescribedbyBarclayetal.(1995)andChin(1998).
discriminant validity has not been systematically examined. Another major drawbackofthe aforementionedapproach
Furthermore, the Fornell-Larcker criterion does not rely on isthatitisacriterion,butnotastatisticaltest.However,itis
inference statistics and, thus, no procedure for statistically also possible to conduct a statistical test of other constructs’
testingdiscriminantvalidityhasbeendevelopedtodate. influence on an indicator using partial cross-loadings.4 The
partialcross-loadingsdeterminetheeffectofaconstructonan
indicatorotherthantheonetheindicatorisintendedtomea-
Assessingcross-loadings sureaftercontrollingfortheinfluenceoftheconstructthatthe
indicator should measure. Once the influence of the actual
Anotherpopularapproachforestablishingdiscriminantvalidityis construct has been partialed out, the residual error variance
theassessmentofcross-loadings,whichisalsocalled“item-level shouldbepurerandomerroraccordingtothereflectivemea-
discriminantvalidity.”AccordingtoGefenandStraub(2005,p. surementmodel:
92),“discriminantvalidityisshownwheneachmeasurementitem
ε ¼x −λ ξ ; ε ⊥ξ ∀i: ð5Þ
correlatesweaklywithallotherconstructsexceptfortheoneto jk jk jk j jk i
whichitistheoreticallyassociated.”Thisapproachcanbetraced
back to exploratory factor analysis, where researchers routinely
examineindicatorloadingpatternstoidentifyindicatorsthathave Ifε isexplainedbyanothervariable(i.e.,thecorrelation
jk
high loadings on the same factor andthose that load highly on betweentheerrortermofanindicatorandanotherconstructis
multiplefactors(i.e.,double-loaders;Mulaik2009). significant),wecannolongermaintaintheassumptionthatε
jk
In the case of PLS, Barclay et al. (1995), as well as Chin is pure random error but must acknowledge that part of the
(1998), were the first to propose that each indicator loading measurementerrorissystematicerror.Ifthissystematicerror
shouldbegreaterthanallofitscross-loadings.3Otherwise,“the is due to another construct ξ, we must conclude that the
i
measure inquestion isunable todiscriminateasto whetherit indicatordoesnotindiscriminatelymeasureitsfocalconstruct
belongstotheconstructitwasintendedtomeasureortoanother ξ, but also the other construct ξ, which implies a lack of
j i
(i.e.,discriminantvalidityproblem)”(Chin2010,p.671).The
discriminantvalidity.Thelowerpartb)ofFig.1illustratesthe
upperparta)ofFig.1illustratesthiscross-loadingsapproach. working principle of the significance test of partial cross-
However, there has been no reflection on this approach’s loadings.
usefulnessinvariance-basedSEM.Apartfromthenormthat Whilethisapproachhasnotbeenappliedinthecontextof
anitemshouldbehighlycorrelatedwithitsownconstruct,but variance-basedSEM,itsuseiscommonincovariance-based
havelowcorrelationswithotherconstructsinordertoestab- SEM,whereitistypicallyappliedintheformofmodification
lish discriminant validity at the item level, no additional indices.Substantialmodificationindicespointanalyststothe
theoreticalargumentsorempiricalevidenceofthisapproach’s
correlations between indicator error terms and other con-
performance have been presented. In contrast, research on structs,whicharenothingbutpartialcorrelations.
covariance-based SEM has critically reflected on the
approach’s usefulness for discriminant validity assessment.
For example, Bollen (1989) shows that high inter-construct
correlationscancauseapronouncedspuriouscorrelationbe-
Aninitialassessmentoftraditionaldiscriminantvalidity
tween a theoretically unrelated indicator and construct. The
methods
paucity of research on the efficacy of cross-loadings in
variance-basedSEMisproblematic,becausethemethodstend
Althoughthe Fornell-Larckercriterionwasestablished more
to overestimate indicator loadings due to their reliance on
than30yearsago,thereisvirtuallynosystematicexamination
composites.Atthesametime,theintroductionofcomposites
ofitsefficacyforassessingdiscriminantvalidity.Rönkköand
assubstitutesforlatentvariablesleavescross-loadingslargely
Evermann (2013) were the first to point out the Fornell-
unaffected.Themajorityofvariance-basedSEMmethodsare Larckercriterion’spotentialproblems.Theirsimulationstudy,
limited information approaches, estimating model equations
whichoriginallyevaluatedtheperformanceofmodelvalida-
separately, so that the inflated loadings are only imperfectly
tion indices in PLS, included a population model with two
introducedinthecross-loadings.Therefore,theverynatureof
identicalconstructs.Despitethelackofdiscriminantvalidity,
theFornell-Larckercriterionindicatedthisprobleminonly54
3Chin (2010) suggests examining the squared loadings and cross-
ofthe500cases(10.80%).Thisresultimpliesthat,inthevast
loadingsinsteadoftheloadingsandcross-loadings.Hearguesthat,for
majorityofsituationsthatlackdiscriminantvalidity,empirical
instance,comparedtoacross-loadingof0.70,astandardizedloadingof
0.80mayraiseconcerns,whereasthecomparisonofasharedvarianceof
0.64withasharedvarianceof0.49putsmattersintoperspective. 4Wethankananonymousreviewerforproposingthisapproach.

J.oftheAcad.Mark.Sci.(2015)43:115–135 119
Fig.1 Usingthecross-loadings a)
toassessdiscriminantvalidity
b)
researcherswouldmistakenlybeledtobelievethatdiscrimi- constructinFig.2intotwoseparateconstructs,whichresults
nantvalidityhasbeenestablished.Unfortunately,Rönkköand inatwo-factormodelasdepictedinFig.3.Wethenusedthe
Evermann’s (2013) study does not permit drawing definite artificially generated datasets from the population model in
conclusions about extant approaches’ efficacy for assessing Fig.2toestimatethemodelshowninFig.3bymeansofthe
discriminant validity for the following reasons: First, their variance-based SEM techniques GSCA and PLS. We also
calculation of the AVE—a major ingredient of the Fornell- benchmarked their results against those of regressions with
Larcker criterion—was inaccurate, because they determined summedscales,whichisanalternativemethodforestimating
one overall AVE value instead of two separate AVE values; relationshipsbetweencomposites(Goodhueetal.2012).No
thatis,oneforeachconstruct(Henseleretal.2014).5Second, matterwhichtechniqueisusedtoestimatethemodelparam-
Rönkkö and Evermann (2013) did not examine the perfor- eters,theFornell-Larckercriterionandtheassessmentofthe
manceofthecross-loadingsassessment. cross-loadingsshouldrevealthattheone-factormodelrather
In order to shed light on the Fornell-Larcker criterion’s thanthetwo-factormodelispreferable.
efficacy,aswellasonthatofthecross-loadings,weconducted Table 2 shows the results of this initial study. The reported
a small simulation study. We randomly created 10,000 percentagevaluesdenotetheapproaches’sensitivity,indicating
datasets with 100 observations, each according to the one- theirabilitytoidentifyalackofdiscriminantvalidity(Macmillan
factorpopulationmodelshowninFig.2,whichRönkköand and Creelman 2004). For example, when using GSCA for
Evermann (2013) and Henseler et al. (2014) also used. The modelestimation,theFornell-Larckercriterionpointstoalack
indicatorshavestandardizedloadingsof0.60,0.70,and0.80, ofdiscriminantvalidityinonly10.66%ofthesimulationruns.
analogoustotheloadingpatternsemployedinprevioussim- The results of this study render the following main find-
ulation studies on variance-based SEM (e.g., Goodhue et al. ings:First,wecangenerallyconfirmRönkköandEvermann’s
2012;HenselerandSarstedt2013;Reinartzetal.2009). (2013) report on the Fornell-Larcker criterion’s extremely
Toassesstheperformanceoftraditionalmethodsregarding poor performance in PLS, even though our study’s concrete
detecting (a lack of) discriminant validity, we split the sensitivity value is somewhat higher (14.59% instead of
10.80%).6 In addition, we find that the sensitivity of the
5WethankMikkoRönkköandJoergEvermannforprovidinguswiththe
code of their simulation study (Rönkkö and Evermann 2013), which 6Thedifferencebetweentheseresultscouldbeduetocalculationerrors
helpeduslocalizethiserrorintheiranalysis. byRönkköandEvermann(2013),asrevealedbyHenseleretal.(2014).

120 J.oftheAcad.Mark.Sci.(2015)43:115–135
Fig.2 Populationmodel
(one-factormodel)
cross-loadings regarding assessing discriminant validity is Surprisingly, the MTMM matrix approach has hardly been
8.78% in respect of GSCA and, essentially, zero in respect applied in variance-based SEM (for a notable exception see
of PLS and regression with summed scales. These results Lochetal.2003).
allow us to conclude that both the Fornell-Larcker criterion TheapplicationoftheMTMMmatrixapproachrequiresat
and the assessment of the cross-loadings are insufficiently least two constructs (“multiple traits”) originating from the
sensitivetodetectdiscriminantvalidityproblems.Aswewill samerespondents.TheMTMMmatrixisaparticulararrange-
show later in the paper, this finding can be generalized to mentofalltheconstructmeasures’correlations.Campbelland
alternative model settings with different loading patterns, Fiske (1959) distinguish between four types of correlations,
inter-construct correlations, and sample sizes. Second, our twoofwhicharerelevantfordiscriminantvalidityassessment.
results are not due to a certain method’s characteristics, be- First, the monotrait-heteromethod correlations quantify the
cause we used different model estimation techniques. relationships between two measurements of the same con-
Although the results differ slightly across the three methods struct by means of different methods (i.e., items). Second,
(Table 2), we find that the general patternremains stable. In the heterotrait-heteromethod correlations quantify the rela-
conclusion, the Fornell-Larcker criterion and the assessment tionships between two measurements of different constructs
of the cross-loadings fail to reliably uncover discriminant bymeansofdifferentmethods(i.e.,items).Figure4visualizes
validityproblemsinvariance-basedSEM. thestructuringofthesecorrelationstypesbymeansofasmall
example (Fig. 3) with two constructs (ξ and ξ ) measured
1 2
withthreeitemseach(x tox andx tox ).SincetheMTMM
1 3 4 6
Theheterotrait-monotraitratioofthecorrelations matrix is symmetric, only the lower triangle needs to be
approachtoassessdiscriminantvalidity considered.Themonotrait-heteromethodcorrelationssubpart
includesthecorrelationsofindicatorsthatbelongtothesame
Traditional approaches’ unacceptably low sensitivity regard- construct.Inourexample,thesearethecorrelationsbetween
ing assessing discriminant validity calls for an alternative theindicatorsx tox andbetweentheindicatorsx tox ,as
1 3 4 6
criterion. In the following, we derive such a criterion from the two triangles in Fig. 4 indicate. The heterotrait-
the classical multitrait-multimethod (MTMM) matrix heteromethod correlations subpart includes the correlations
(Campbell and Fiske 1959), whichpermits a systematicdis- between the different constructs’ indicators. In the example
criminant validity assessment to establish construct validity. in Fig. 4, the heterotrait-heteromethod correlations subpart
Fig.3 Estimatedmodel
(two-factormodel)

J.oftheAcad.Mark.Sci.(2015)43:115–135 121
Table2 Sensitivityoftraditional
approachestoassessingdiscrimi- Approach GSCA PLS Regressionwithsummedscales
nantvalidity
Fornell-Larckercriterion 10.66% 14.59% 7.76%
Cross-loadings 8.78% 0.00% 0.03%
consistsoftheninecorrelationsbetweentheindicatorsofthe correlations, although the two constructs do in fact differ
constructξ (i.e.,x tox )andthoseoftheconstructξ (i.e.,x (Schmitt and Stults 1986). Second, one-by-one comparisons
1 1 3 2 4
tox ),whichareindicatedbyarectangle. of values in large correlation matrices can quickly become
6
TheMTMMmatrixanalysisprovidesevidenceofdiscrim- tedious, which may be one reason for the MTMM matrix
inant validity when the monotrait-heteromethod correlations analysisnotbeingastandardapproachtoassessdiscriminant
are larger than the heterotrait-heteromethod correlations validityinvariance-basedSEM.
(Campbell and Fiske1959; Johnand Benet-Martínez2000). We suggest assessing the heterotrait-monotrait ratio
That is, the relationships of the indicators within the same (HTMT) of the correlations, which is the average of the
construct are stronger than those of the indicators across heterotrait-heteromethodcorrelations(i.e.,thecorrelationsof
constructsmeasuringdifferentphenomena,whichimpliesthat indicatorsacrossconstructsmeasuringdifferentphenomena),
aconstructisempiricallyuniqueandaphenomenonofinterest relativetotheaverageofthemonotrait-heteromethodcorrela-
thatothermeasuresinthemodeldonotcapture. tions(i.e.,thecorrelationsofindicatorswithinthesamecon-
While this rule is theoretically sound, it is problematic in struct). Since there are two monotrait-heteromethod
empiricalresearchpractice.First,thereisalargepotentialfor submatrices, we take the geometric mean of their average
ambiguities.Whatiftheorderisnotasexpectedinonlyafew correlations. Consequently, the HTMT of the constructs
incidents? It cannot be ruled out that some heterotrait- ξ and ξ with, respectively, K and K indicators can be
i j i j
heteromethod correlations exceed monotrait-heteromethod formulated as follows:
!
1 XKi XKj 2 XKi −1 XKi 2 KX j −1 XKj 1 2
HTMT ij ¼ K K r ig;jh (cid:2) K ðK −1Þ ⋅ r ig;ih ⋅ K (cid:4) K −1 (cid:5)⋅ r jg;jh : ð6Þ
|fflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflfflffl{ i zfflffl j fflfflfflgfflffl ¼ fflffl1fflfflhfflffl ¼ fflffl1fflfflfflfflfflfflfflffl} |fflfflfflfflfflffl i fflfflfflfflfflffl i fflfflfflfflfflfflfflfflfflfflfflgfflffl ¼ fflffl1fflfflfflhffl ¼ fflfflfflgfflffl þ fflffl1fflfflfflfflfflfflfflfflfflfflffl{zffl j fflfflfflfflfflfflffl j fflfflfflfflfflfflfflfflfflfflfflgfflffl ¼ fflfflffl1fflfflhfflffl ¼ fflfflgfflffl þ fflfflffl1fflfflfflfflfflfflfflfflfflfflfflfflfflffl}
average geometricmeanof theaveragemonotrait−heteromethod
heterotrait− correlationof constructξ
i
andtheaverage
heteromethod monotrait−heteromethodcorrelationof constructξ j
In essence, as suggested by Nunnally (1978) and Because the HTMT is an estimate of the correlation be-
Netemeyer et al. (2003), the HTMTapproach is an estimate tweentheconstructsξ andξ,itsinterpretationisstraightfor-
i j
of the correlation between the constructs ξ and ξ (see the ward: if the indicators of two constructs ξ and ξ exhibit an
i j i j
Appendixforthederivation),whichparallelsthedisattenuated HTMTvaluethatisclearlysmallerthanone,thetruecorrela-
construct score correlation. Technically, the HTMT provides tionbetweenthetwoconstructsismostlikelydifferentfrom
two advantages over the disattenuated construct score corre- one,andtheyshoulddiffer.Therearetwowaysofusingthe
lation:TheHTMTdoesnotrequireafactoranalysistoobtain HTMTtoassessdiscriminantvalidity:(1)asacriterionor(2)
factorloadings,nordoesitrequirethecalculationofconstruct as a statistical test. First, using the HTMT as a criterion
scores.ThisallowsfordeterminingtheHTMTeveniftheraw involvescomparingit toa predefinedthreshold.Ifthe value
data is not available, but the correlation matrix is. oftheHTMTishigherthanthisthreshold,onecanconclude
Furthermore, HTMT builds on the available measures and thatthereisalackofdiscriminantvalidity.Theexactthreshold
data and—contraryto the standardMTMMapproach—does leveloftheHTMTisdebatable;afterall,“whenisacorrela-
not require simultaneous surveying of the same theoretical tionclosetoone”?Someauthorssuggestathresholdof0.85
conceptwithalternativemeasurementapproaches.Therefore, (ClarkandWatson1995;Kline2011),whereasotherspropose
this approach does not suffer from the standard MTMM a value of 0.90 (Gold et al. 2001; Teo et al. 2008). In the
approach’s well-known issues regarding data requirements remainder of this paper, we use the notations HTMT and
.85
and parallel measures (Schmitt 1978; Schmitt and Stults HTMT in order distinguish between these two absolute
.90
1986). thresholds for the HTMT. Second, the HTMT can serve as

122 J.oftheAcad.Mark.Sci.(2015)43:115–135
Fig.4 Anexampleofareduced
MTMMmatrix
the basis of a statistical discriminant validity test (which we assessment (compared to other multiple testing ap-
will refer to as HTMT ). The bootstrapping procedure proaches), which seems warranted given the Fornell-
inference
allowsforconstructingconfidenceintervalsfortheHTMT,as Larcker criterion and the cross-loadings’ poor perfor-
defined in Eq. 6, in order to test the null hypothesis mance in the previous simulation study.
(H : HTMT ≥ 1) against the alternative hypothesis (H :
0 1
HTMT<1).7Aconfidenceintervalcontainingthevalueone
(i.e., H holds) indicates a lack of discriminant validity.
0
Conversely,ifthevalueonefallsoutsidetheinterval’srange, Comparingtheapproachesbymeansofacomputational
this suggests that the two constructsare empirically distinct. experiment
As Shaffer (1995, p. 575) notes, “[t]esting with confidence
intervalshastheadvantagethattheygivemoreinformationby Objectives
indicatingthedirectionandsomethingaboutthemagnitudeof
thedifferenceor,ifthehypothesisisnotrejected,thepowerof To examine the different approaches’ efficacy for estab-
theprocedurecanbegaugedbythewidthoftheinterval.” lishing discriminant validity, we conduct a second Monte
In real research situations with multiple constructs, the Carlo simulation study. The aims of this study are (1) to
HTMT analysis involves the multiple testing prob- shed further light on the performance of the Fornell-
inference
lem (Miller 1981). Thus, researchers must control for an Larcker criterion and the cross-loadings in alternative
inflation of Type I errors resulting from applying multiple model settings and (2) to evaluate the newly proposed
tests to pairs of constructs. That is, discriminant validity HTMT criteria’s efficacy for assessing discriminant va-
assessment using HTMT needs to adjust the upper lidity vis-à-vis traditional approaches. We measure the
inference
andlowerboundsoftheconfidenceintervalineachtestto approaches’ performance by means of their sensitivity
maintain the familywise error rate at a predefined α level and specificity (Macmillan and Creelman 2004). The
(Anderson and Gerbing 1988). We use the Bonferroni sensitivity, as introduced before, quantifies each
adjustment to assure that the familywise error rate of approach’s ability to detect a lack of discriminant valid-
HTMT does not exceed the predefined α level in ity if two constructs are identical. The specificity indi-
inference
allthe(J–1)J/2(J=numberoflatentvariables)tests.The cates how frequently an approach will signal discrimi-
Bonferroni approach does not rely on any distributional nant validity if the two constructs are empirically dis-
assumptionsaboutthedata,makingitparticularlysuitable tinct. Both sensitivity and specificity are desirable char-
in the context of variance-based SEM techniques such as acteristics and, optimally, an approach should yield high
PLS (Gudergan et al. 2008). Furthermore, Bonferroni is a values in both measures. In real research situations, how-
rather conservative approach to maintain the familywise ever, it is virtually impossible to achieve perfect sensi-
error rate at a predefined level (Hochberg 1988; Holm tivity and perfect specificity simultaneously due to, for
1979). Its implementation therefore also renders example, measurement or sampling errors. Instead, ap-
HTMT moreconservativeintermsofitssensitivity proaches with a higher sensitivity will usually have a
inference
lower specificity and vice versa. Researchers thus face a
trade-off between sensitivity and specificity, and need to
7Strictlyspeaking,oneshouldassesstheabsolutevalueoftheHTMT, find a find a balance between the two (Macmillan and
becauseacorrelationof−1impliesalackofdiscriminantvalidity,too. Creelman 2004).

J.oftheAcad.Mark.Sci.(2015)43:115–135 123
Experimentaldesignandanalysis Second, to examine the approaches’ specificity, we de-
crease the inter-construct correlations in 50 steps of 0.02
ThedesignoftheMonteCarlosimulationwasmotivatedby from φ=1.00 to φ=0.00, covering the full range of
the objective to define models that (1) allow for the assess- absolute correlations. The smaller the true inter-
mentofapproaches’sensitivityandspecificitywithregardto construct correlation φ, the less an approach is expected
detectingalackofdiscriminantvalidityand(2)resembleset- to indicate a lack of discriminant validity; that is, we
upscommonlyencounteredinappliedresearch(Paxtonetal. anticipate that the approaches’ specificity will increase
2001).InlinewithRönkköandEvermann(2013),aswellas with lower levels of φ.
Henseleretal.(2014),thesimulationstudy’spopulationmod- In line with Vilares et al. (2010), as well as Vilares
el builds on a two-construct model, as shown in Fig. 3. and Coelho (2013), we generate 1,000 datasets for each
DrawingontheresultsofpriorPLSreviews(e.g.,Hairetal. combination of design factors. Hence, the simulation
2012a; Ringle et al. 2012), we vary the indicator loading study draws on a total number of 816,000 simulation
patterns to allow for (1) different levels of the AVE and (2) runs: 4 levels of loading patterns times 4 levels of
varying degrees of heterogeneity between the loadings. sample sizes times 51 levels of inter-construct correla-
Specifically, we consider four loading patterns for each of tions times 1,000 datasets per condition. In each simu-
thetwoconstructs: lation run, we apply the following approaches to assess
the discriminant validity:
1. AhomogenouspatternofloadingswithhigherAVE:
1. The Fornell-Larcker criterion: Is the squared correlation
λ
11
¼λ
12
¼λ
13
¼λ
21
¼λ
22
¼λ
23
¼:90; between the two constructs greater than any of the two
constructs’AVE?
2. The cross-loadings: Does any indicator correlate more
strongly with the other constructs than with its own
2. AhomogenouspatternofloadingswithlowerAVE:
construct?
3. The partial cross-loadings: Is an indicator significantly
λ
11
¼λ
12
¼λ
13
¼λ
21
¼λ
22
¼λ
23
¼:70;
explained by a construct that it is not intended to
measure when the actual construct’s influence is
3. A more heterogeneous pattern of loadings with lower partialed out?
AVE: 4. The HTMT .85 criterion: Is the HTMT criterion greater
than0.85?
λ 11 ¼λ 21 ¼:60;λ 12 ¼λ 22 ¼:70;λ 13 ¼λ 23 ¼:80; 5. The HTMT .90 criterion: Is the HTMT criterion greater
than0.90?
4. A more heterogeneous pattern of loadings with lower 6. The statistical HTMT inference test: Does the 90% normal
bootstrapconfidenceintervaloftheHTMTcriterionwith
AVE:
aBonferroniadjustmentincludethevalueone?8
λ
11
¼λ
21
¼:50;λ
12
¼λ
22
¼:70;λ
13
¼λ
23
¼:90:
In the simulation study, we focus on PLS, which is
regarded as the “most fully developed and general system”
Next,weexaminehowdifferentsamplesizes—asroutine- (McDonald 1996, p. 240) of the variance-based SEM
lyassumed insimulation studies inSEM in general (Paxton techniques. Furthermore, the initial simulation study
et al. 2001) and in variance-based SEM in particular (e.g., showed that PLS is the variance-based SEM technique
Reinartzetal.2009;VilaresandCoelho2013)—wouldinflu- with the highest sensitivity (i.e., 14.59% in respect of
ence the approaches’ efficacy. We consider sample sizes of the Fornell-Larcker criterion; Table 2). All calculations
100,250,500,and1,000. were carried out with R 3.1.0 (R Core Team 2014) and
Finally, in order to examine the sensitivity and we applied PLS as implemented in the semPLS package
specificity of the approaches, we vary the inter- (Monecke and Leisch 2012).
construct correlations. First, to examine their sensitivi-
ty, we consider a situation in which the two constructs
are perfectly correlated (φ=1.0). This condition mirrors
a situation in which an analyst mistakenly models two
constructs, although they actually form a single con-
struct. Optimally, all the approaches should indicate a 8SinceHTMT reliesonone-tailedtests,weusethe90%bootstrap
inference
lack of discriminant validity under this condition. confidenceintervalinordertowarrantanerrorprobabilityoffivepercent.

124 J.oftheAcad.Mark.Sci.(2015)43:115–135
Table3 Results:Sensitivityofapproachestoassessdiscriminantvalidity
Loadingpattern Samplesize Approachtoassessdiscriminantvalidity
Fornell-Larcker Cross-loadings Partialcross-loadings HTMT HTMT HTMT
.85 .90 inference
0.90/0.90/0.90 100 42.10% 0.00% 16.70% 100.00% 100.00% 96.30%
250 27.30% 0.00% 15.30% 100.00% 100.00% 96.00%
500 15.40% 0.00% 17.70% 100.00% 100.00% 95.50%
1,000 4.80% 0.00% 19.40% 100.00% 100.00% 96.00%
0.70/0.70/0.70 100 6.90% 0.00% 5.10% 99.10% 95.90% 96.00%
250 0.30% 0.00% 5.10% 100.00% 99.90% 95.70%
500 0.00% 0.00% 5.60% 100.00% 100.00% 94.90%
1,000 0.00% 0.00% 6.40% 100.00% 100.00% 95.50%
0.60/0.70/0.80 100 13.70% 0.00% 39.60% 99.40% 96.90% 96.60%
250 2.30% 0.00% 82.80% 100.00% 100.00% 96.80%
500 0.20% 0.00% 99.50% 100.00% 100.00% 97.10%
1,000 0.00% 0.00% 100.00% 100.00% 100.00% 98.40%
0.50/0.70/0.90 100 64.60% 0.00% 99.50% 99.90% 98.50% 98.20%
250 59.50% 0.00% 100.00% 100.00% 100.00% 99.40%
500 53.90% 0.00% 100.00% 100.00% 100.00% 99.80%
1,000 42.10% 0.00% 100.00% 100.00% 100.00% 100.00%
Average 20.82% 0.00% 50.79% 99.90% 99.45% 97.01%
Thecorrelationbetweenthetwoconstructsis1.0;consequently,oneexpectsdiscriminantvalidityproblemstobedetectedwithafrequencycloseto
100%regardingallthecriteriainalltheanalyzedconstellations
Sensitivityresults low in respect of homogeneous loadings patterns, no matter
what the sample size is. However, the sensitivity improves
With respect to each sensitivity analysis situation, we report substantially in respect of heterogeneous loadings patterns.
each approach’s relative frequency to indicate the lack of Thesamplesizeclearlymattersforthepartialcross-loadings
discriminantvalidityif the true correlation between the con- approach. The larger the sample size, the more sensitive the
structs is equal to one (Table 3). This frequency should be partial cross-loadings are regarding detecting a lack of dis-
100%,oratleastveryclosetothispercentage. criminantvalidity.
Extending our previous findings, the results clearly show In contrast to the other approaches, the two absolute
thattraditionalapproachesusedtoassessdiscriminantvalidity HTMT and HTMT criteria, as well as HTMT
.85 .90 inference,
perform very poorly; this is also true in alternative model yieldsensitivitylevelsof95%orhigherunderallsimulation
settingswithdifferentloadingpatternsandsamplesizes.The conditions(Table3).Becauseofitslowerthreshold,HTMT
.85
mostcommonlyusedapproach,theFornell-Larckercriterion, slightlyoutperformstheothertwoapproacheswithanaverage
failstoidentifydiscriminantvalidityissuesinthevastmajor- sensitivity rate of 99.90% compared to the 99.45% of
ity of cases (Table 3). It only detects a lack of discriminant HTMT and the 97.01% of HTMT . In general, all
.90 inference
validityinmorethan50%ofsimulationrunsinsituationswith three HTMT approaches detect discriminant validity issues
very heterogeneous loading patterns (i.e., 0.50 /0.70 /0.90) reliably.
andsamplesizesof500orless.Withrespecttomorehomo-
geneousloadingpatterns,theFornell-Larckercriterionyields Specificityresults
much lower sensitivity rates, particularly when the AVE is
low. ThespecificityresultsaredepictedinFig.5(forhomogeneous
The analysis of the cross-loadings fails to identify any loadingpatterns)andFig.6(forheterogeneousloadingspat-
discriminantvalidityproblems,asthisapproachyieldssensi- terns). The graphs visualize the frequency with which each
tivity values of 0% across all the factor level combinations approachindicatesthatthetwoconstructsaredistinctregard-
(Table3).Hence,the comparisonofcross-loadings doesnot ingvaryinglevelsofinter-constructcorrelations,loadingpat-
provide a basis for identifying discriminant validity issues. terns, and sample sizes. The discussion focuses on the three
However, the picture is somewhat different regarding the HTMT-based approaches, as the sensitivity analysis has al-
partial cross-loadings. The sensitivity remains unacceptably ready rendered the Fornell-Larcker criterion and the

J.oftheAcad.Mark.Sci.(2015)43:115–135 125
Fig.5 Specificityofapproachestoassessdiscriminantvalidityinhomogeneousloadingpatterns

126 J.oftheAcad.Mark.Sci.(2015)43:115–135
Fig.6 Specificityofapproachestoassessdiscriminantvalidityinheterogeneousloadingpatterns

J.oftheAcad.Mark.Sci.(2015)43:115–135 127
assessmentofthe(partial)cross-loadingsineffective(wenev- the first quarter of 1999 with N=10,417 observations after
erthelessplottedtheirspecificityratesforcompletenesssake). excludingcaseswithmissingdatafromtheindicatorsusedfor
AllHTMTapproachesshowconsistentpatternsofdecreas- model estimation (case wise deletion). In line with prior
ingspecificityratesathigherlevelsofinter-constructcorrela- studies(Ringleetal.2010,2014)thatusedthisdatasetintheir
tions.Asthecorrelationsincrease,theconstructs’distinctive- ACSImodelexamples,werelyonamodifiedversionofthe
nessdecreases,makingitlesslikelythattheapproacheswill ACSI model without the constructs complaints (dummy-
indicate discriminant validity. Furthermore, the three ap- codedindicator)andloyalty(morethan80%ofthecasesfor
proachesshowsimilar results patternsfor differentloadings, thisconstructmeasurementaremissing).Figure7showsthe
samplesizes,andinter-constructcorrelations,albeitatdiffer- reducedACSImodelandthePLSresults.
entlevels.Forexample,ceterisparibus,whenloadingpatterns The reduced ACSI modelconsistsofthefourreflectively
areheterogeneous,specificityratesdecreaseatlowerlevelsof measuredconstructs:customersatisfaction(ACSI),customer
inter-construct correlations compared to conditions with ho- expectations (CUEX), perceived quality (PERQ), and per-
mogeneousloadingpatterns.Amoredetailedanalysisofthe ceivedvalue(PERV).TheevaluationofthePLSresultsmeets
resultsshowsthatallthreeHTMTapproacheshavespecificity therelevantcriteria(Chin1998,2010;Götzetal.2010;Hair
ratesofwellabove50%withregardtointer-constructcorre- etal.2012a),whichRingleetal.(2010),usingthisexample,
lationsof0.80orless,regardlessoftheloadingpatternsand presentedindetail.AccordingtotheFornell-Larckercriterion
samplesizes.Atinter-constructcorrelationsof0.70,thespec- andthecross-loadings(Table4),theconstructs’discriminant
ificity rates are close to 100% in all instances. Thus, neither validity has been established: (1) the square root of each
approachmistakenlyindicates discriminantvalidityissuesat construct’s AVE is higher than its correlation with another
levelsofinter-constructcorrelations, whichmostresearchers construct, and (2) each item loads highest on its associated
arelikelytoconsiderindicativeofdiscriminantvalidity. construct. Table 4 also lists the significant (p<0.05) partial
Comparing the approaches shows that HTMT always cross-loadings.Twothirdsofthemaresignificant.Thisrela-
.85
exhibitshigherorequalsensitivity,butlowerorequalspeci- tivelyhighpercentageisnotsurprising,consideringthateven
ficityvaluescomparedtoHTMT .Thatis,HTMT ismore marginal correlations (e.g., an absolute value of 0.028) be-
.90 .85
likelytoindicatealackofdiscriminantvalidity,anexpected come significant as a result of the high sample size. Hence,
findingconsideringthecriterion’slowerthresholdvalue.The andinlinewiththeapproach’ssensitivityresults(Table3),the
differencebetweenthesetwoapproachesbecomesmorepro- multitude of significant partial cross-loadings seems to sug-
nounced with respect to larger sample sizes and stronger gestseriousproblemswithrespecttodiscriminantvalidity.
loadings, but it remains largely unaffected by the degree of Next, we compute the HTMT criteria for each pair of
heterogeneitybetweentheloadings. constructs on the basis of the item correlations (Table 5) as
Comparedtothetwothreshold-basedHTMTapproaches, defined in Eq. 6.9 The computation yields values between
HTMT generallyyieldsmuchhigherspecificityvalues, 0.53inrespect ofHTMT(CUEX,PERV) and 0.95inrespect
inference
thus constituting a rather liberal approach to assessing dis- of HTMT(ACSI,PERQ) (Table 6). Comparing these results
criminant validity, as it is more likely to indicate two con- withthethresholdvaluesasdefinedinHTMT givesriseto
.85
structsasdistinct,evenathighlevelsofinter-constructcorre- concern, because two of the six comparisons (ACSI and
lations. This finding holds especially in conditions where PERQ; ACSI and PERV) violate the 0.85 threshold.
loadings are homogeneous and high (Fig. 5). Here, However, in the light of the conceptual similarity of the
HTMT yields specificity rates of 80% or higher in ACSI model’s constructs, the use of a more liberal criterion
inference
terms of inter-construct correlations as high as 0.95, which for specificity seems warranted. Nevertheless, even when
manyresearchersarelikelytoviewasindicativeofalackof using HTMT as the standard, one comparison (ACSI and
.90
discriminantvalidity.Exceptionsoccurinsamplesizesof100 PERQ) violatesthiscriterion. Onlythe use ofHTMT
inference
andwithlowerAVEvalues.Here,HTMT achieveshigher suggeststhatdiscriminantvalidityhasbeenestablished.
.90
sensitivity rates compared to HTMT . However, the ThisempiricalexampleoftheACSImodelandtheuseof
inference
differencesinspecificitybetweenthetwocriteriaaremarginal originaldataillustrateasituationinwhichtheclassicalcriteria
inthesesettings. donot indicateany discriminantvalidityissues, whereas the
twomoreconservativeHTMTcriteriado.Whileitisbeyond
thisstudy’sscopetodiscusstheimplicationsoftheresultsfor
modeldesign,theygiverisetoconcernregardingtheempirical
Empiricalexample distinctivenessoftheACSIandPERQconstructs.
To illustrate the approaches, we draw on the American
Customer Satisfaction Index (ACSI) model (Anderson and 9AnExcelsheetillustratingthecomputationoftheHTMTvaluescanbe
Fornell2000;Fornelletal.1996),usingempiricaldatafrom downloadedfromhttp://www.pls-sem.com/jams/htmt_acsi.xlsx.

128 J.oftheAcad.Mark.Sci.(2015)43:115–135
Fig.7 ReducedACSImodeland qual1 .916
PLSresults
.919
qual2 PERQ
.731
qual3 .559
.619
acsi1
.926
value1 .948
.556 PERV .394 ACSI .903 acsi2
value2 .935
.867
acsi3
.072
exp1 .845 .021
exp2 .848 CUEX
.629
exp3
Summaryanddiscussion
Keyfindingsandrecommendations
Table4 Fornell-Larckercriterionresultsandcrossloadings
Ourresultsclearlyshowthatthetwostandardapproachesto
ACSI CUEX PERQ PERV
assessingthediscriminantvalidityinvariance-basedSEM—
Fornell-Larckercriterion the Fornell-Larcker criterion and the assessment of cross-
ACSI 0.899
loadings—haveanunacceptablylowsensitivity,whichmeans
CUEX 0.495 0.781 that they are largely unable to detect a lack of discriminant
PERQ 0.830 0.556 0.860 validity. In particular, the assessment of the cross-loadings
PERV 0.771 0.417 0.660 0.942 completely fails to detect discriminant validity issues.
Cross-loadings Similarly, the assessment of partial cross-loadings—an ap-
acsi1 0.926 0.489 0.826 0.757 proach which has not been used in variance-based SEM—
acsi2 0.903 0.398 0.729 0.676 provesinefficientinmanysettingscommonlyencounteredin
appliedresearch.Moreprecisely,thecriteriononlyworkswell
acsi3 0.867 0.447 0.672 0.638
in situations with heterogeneous loading patterns and high
exp1 0.430 0.845 0.471 0.372
samplesizes.
exp2 0.429 0.848 0.474 0.356
Asasolutiontothiscriticalissue,wepresentanewsetof
exp3 0.283 0.629 0.346 0.229
criteriafordiscriminantvalidityassessmentinvariance-based
qual1 0.802 0.561 0.916 0.640
SEM.ThenewHTMTcriteria,whicharebasedonacompar-
qual2 0.780 0.486 0.919 0.619
ison of the heterotrait-heteromethod correlations and the
qual3 0.515 0.364 0.731 0.408
monotrait-heteromethod correlations, identify a lack of dis-
value1 0.751 0.418 0.663 0.948
criminantvalidityeffectively,asevidencedbytheirhighsen-
value2 0.699 0.364 0.575 0.935
sitivityrates.
Significant(p<0.05)partialcross-loadings
ThemaindifferencebetweentheHTMTcriterialiesintheir
acsi1 0.702 n.s. 0.178 0.098
specificity. Of the three approaches, HTMT is the most
acsi2 0.996 −0.057 −0.037 −0.044 .85
conservative criterion, as it achieves the lowest specificity
acsi3 1.037 0.060 −0.176 −0.071
rates of all the simulation conditions. This means that
exp1 n.s. 0.841 −0.029 0.029
HTMT can pint to discriminant validity problems in re-
exp2 0.028 0.846 n.s. n.s. .85
search situations in which HTMT and HTMT indi-
exp3 −0.063 0.638 0.064 −0.031 .90 inference
cate that discriminant validity has been established. In con-
qual1 0.122 0.068 0.770 n.s.
trast, HTMT is the most liberal of the three newly
qual2 0.058 −0.040 0.891 n.s. inference
proposed approaches. Even if two constructs are highly, but
qual3 −0.277 −0.047 0.999 n.s.
notperfectly,correlatedwithvaluescloseto1.0,thecriterion
value1 n.s. n.s. 0.067 0.906
isunlikelytoindicatealackofdiscriminantvalidity,particu-
value2 n.s. n.s. −0.074 0.982
larlywhen(1)theloadingsarehomogeneousandhighor(2)
the sample size is large. Owing to its higher threshold,
Theresultsmarkedinboldindicatewherethehighestvalueisexpected;
n.s.,notsignificant HTMT always has higher specificity rates than HTMT .
.90 .85

J.oftheAcad.Mark.Sci.(2015)43:115–135 129
Table5 Itemcorrelationmatrix
acsi1 acsi2 acsi3 cuex1 cuex2 cuex3 perq1 perq2 perq3 perv1 perv2
acsi1 1.000
acsi2 0.770 1.000
acsi3 0.701 0.665 1.000
cuex1 0.426 0.339 0.393 1.000
cuex2 0.423 0.345 0.385 0.574 1.000
cuex3 0.274 0.235 0.250 0.318 0.335 1.000
perq1 0.797 0.705 0.651 0.517 0.472 0.295 1.000
perq2 0.779 0.680 0.635 0.406 0.442 0.268 0.784 1.000
perq3 0.512 0.460 0.410 0.249 0.277 0.362 0.503 0.533 1.000
perv1 0.739 0.656 0.622 0.373 0.359 0.230 0.645 0.619 0.411 1.000
perv2 0.684 0.615 0.579 0.326 0.310 0.200 0.556 0.543 0.354 0.774 1.000
Compared to HTMT , the HTMT criterion yields Guidelinesfortreatingdiscriminantvalidityproblems
inference .90
muchlowerspecificityratesinthevastmajorityofconditions.
WefindthatnoneoftheHTMTcriteriaindicatesdiscriminant Tohandlediscriminantvalidityproblems,researchersmay
validityissuesforinter-constructcorrelationsof0.70orless. follow different routes, which we illustrate in Fig. 8. The
This outcome of our specificity analysis is important, as it first approach retains the constructs that cause discrimi-
shows that neither approach points to discriminant validity nantvalidityproblemsinthemodelandaimsatincreasing
problems at comparably low levels of inter-construct the average monotrait-heteromethod correlations and/or
correlations. decreasing the average heteromethod-heterotrait correla-
Basedonourfindings,westronglyrecommenddrawingon tions of the constructs measures. When researchers seek
the HTMT criteria for discriminant validity assessment in to decrease the HTMT by increasing a construct’s average
variance-based SEM. The actual choiceof criterion depends monotrait-heteromethod correlations, they may eliminate
onthemodelset-upandonhowconservativetheresearcheris items that have low correlations with other items measur-
in his or her assessment of discriminant validity. Take, for ing the same construct. Likewise, heterogeneous sub-
example,thetechnologyacceptancemodelanditsvariations dimensions in the construct’s set of items could also
(Davis1989; Venkateshetal. 2003),whichinclude the con- deflate the average monotrait-heteromethod correlations.
structs intention to use and the actual use. Although these In this case, researchers may consider splitting the con-
constructsareconceptuallydifferent,theymaybedifficultto struct into homogenous sub-constructs, if the measure-
distinguishempiricallyinallresearchsettings.Therefore,the ment theory supports this step. These sub-constructs then
choiceofamoreliberalHTMTcriterionintermsofspecificity replacethemoregeneralconstructinthemodel.However,
(i.e., HTMT or HTMT , depending on the sample researchers need to re-evaluate the newly generated con-
.90 inference
size) seems warranted. Conversely, if the strictest standards structs’ discriminant validity with all the opposing con-
are followed, this requires HTMT to assess discriminant structs in the model. When researchers seek to decrease
.85
validity. the average heteromethod-heterotrait correlations, they
Table6 HTMTresults
ACSI CUEX PERQ PERV
ACSI
.63
CUEX
CI [0.612;0.652]
.900
.95 .73
PERQ
CI [0.945;0.958] CI [0.713;0.754]
.900 .900
.87 .53 .76
PERV
CI [0.865;0.885] CI [0.511;0.553] CI [0.748;0.774]
.900 .900 .900
The two results marked inbold indicatediscriminant validity problems accordingto the HTMT.85 criterion, whilethe one problem regardingthe
HTMT.90criterionisshadedgrey;HTMTinferencedoesnotindicatediscriminantvalidityproblemsinthisexample

130 J.oftheAcad.Mark.Sci.(2015)43:115–135
Step 1
Selection of the HTMT criterion
Criterion has been selected
Step 2
Discriminant validity
has been established
Discriminant validity assessment Final
using the HTMT criterion result
Discriminant validity
has not been established
Step 3
Establish discriminant validity
while keeping the problematic constructs
Discriminant validity
Increase the Decrease the has been established
Final
monotrait-heteromethod heterotrait-heteromethod
result
correlations correlations
Discriminant validity
has not been established
Step 4
Establish discriminant validity
by merging the problematic constructs and replacing
them with the new (merged) construct
Increase the Decrease the Discriminant validity
has been established
monotrait-heteromethod heterotrait-heteromethod Final
correlations of the new correlations of the new result
construct construct
Discriminant validity
has not been established
Discard model
Fig.8 Guidelinesfordiscriminantvalidityassessmentinvariance-basedSEM
may consider (1) eliminating items that are strongly cor- independently to ensure a high degree of objectivity
related with items in the opposing construct or (2) (Diamantopoulos et al. 2012).
reassigning these indicators to the opposing construct, if The second approach to treat discriminant validity prob-
theoretically plausible. lemsaimsatmergingthe constructsthatcause the problems
It is important to note that the elimination of items into a more general construct. Again, measurement theory
purely on statistical grounds can have adverse conse- must support this step. In this case, the more general con-
quences for the construct measures’ content validity struct replaces the problematic constructs in the model and
(e.g., Hair et al. 2014). Therefore, researchers should researchers need to re-evaluate the newly generated con-
carefully scrutinize the scales (either based on prior struct’s discriminant validity with all the opposing con-
research results, or on those from a pretest in case of structs. This step may entail modifications to increase a
the newly developed measures) and determine whether construct’s average monotrait-heteromethod correlations
all the construct domain facets have been captured. At and/or to decrease the average heteromethod-heterotrait cor-
least two expert coders should conduct this judgment relations (Fig. 8).

J.oftheAcad.Mark.Sci.(2015)43:115–135 131
Furtherresearchandconcludingremarks Failure to properly disclose discriminant validity problems
mayresultinbiasedestimationsofstructuralparametersand
Our research offers several promising avenues for future re- inappropriate conclusions about the hypothesized relation-
search.Tobeginwith,manyresearchersviewvariance-based ships between constructs. Revisiting the analysis results of
SEMasthenaturalapproachwhenthemodelincludesforma- prominent models estimated by means of variance-based
tivelymeasuredconstructs(Chin1998;FornellandBookstein SEM, such as the ACSI and the TAM, seems warranted. In
1982;Hairetal.2012a).Obviously,thediscriminantvalidity doingso, researchers shouldanalyze the differentsources of
concept is independent of a construct’s concrete discriminantvalidityproblemsandapplyadequateprocedures
operationalization. Constructs that are conceptually different totreatthem(Fig.8).
shouldalsobeempiricallydifferent,nomatterhowtheyhave It is important to note, however, that discriminant
beenmeasured,andnomatterthetypesofepistemicrelation- validity is not exclusively an empirical means to validate
shipsbetweenaconstructanditsindicators.However,justlike a model. Theoretical foundations and arguments should
the Fornell-Larcker criterionand the (partial) cross-loadings, provide reasons for constructs correlating or not (Bollen
the HTMT-based criteria assume reflectively measured con- and Lennox 1991). According to the holistic construal
structs.Applyingthemtoformativelymeasuredconstructsis process (Bagozzi and Phillips 1982; Bagozzi 1984), per-
problematic,becauseneitherthemonotrait-heteromethodnor haps the most influential psychometric framework for
theheterotrait-heteromethodcorrelationsofformativeindica- measurement development and validation (Rigdon
tors are indicative of discriminant validity. As 2012), constructs are not necessarily equivalent to the
Diamantopoulos and Winklhofer (2001, p. 271) point out, theoretical concepts at the center of scientific research:
“thereisnoreasonthataspecificpatternofsigns(i.e.,positive a construct should rather be viewed as “something cre-
versus negative) or magnitude (i.e., high versus moderate ated from the empirical data which is intended to enable
versus low) should characterize the correlations among for- empirical testing of propositions regarding the concept”
mativeindicators.” (Rigdon 2014, pp. 43–344). Consequently, any derivation
Prior literature gives practically no recommendations on of HTMT thresholds is subjective. On the other hand,
how to assess the discriminant validity of formatively mea- concepts are partly defined by their relationships with
suredconstructs.Oneofthefewexceptionsistheresearchby other concepts within a nomological network, a system
Klein and Rai (2009), who suggest examining the cross- of law-like relationships discovered over time and which
loadingsofformativeindicators.Analogoustotheirreflective anchor each concept. Therefore, hindsight failure to es-
counterparts,formativeindicatorsshouldcorrelatemorehigh- tablish discriminant validity between two constructs does
lywiththeircompositeconstructscorethanwiththecompos- not necessarily imply that the underlying concepts are
ite score of other constructs. However, considering the poor identical, especially when follow-up research provides
performanceofcross-loadingsinourstudy,itsuseinforma- continued support for differing relationships with the
tive measurement models appears questionable. Against this antecedent and the resultant concepts (Bagozzi and
background,futureresearchshouldseekalternativemeansto Phillips 1982). Nevertheless, our research clearly shows
considerformativelymeasuredconstructswhenassessingdis- that future research should pay greater attention to the
criminantvalidity. empirical validation of discriminant validity to ensure the
Apart from continuously refining, extending, and testing rigor of theories’ empirical testing and validation.
the HTMT-based validity assessment criteria for variance-
based SEM (e.g., by evaluating their sensitivity to different
baseresponsescales,inducingvariancebasisdifferencesand
Acknowledgments We would like to thank Theo Dijkstra,
differential response biases), future research should also as-
RijksuniversiteitGroningen,TheNetherlands,forhishelpfulcomments
sess whether this study’s findings can be generalized to toimproveearlierversionsofthemanuscript. Theauthors contributed
covariance-based SEM techniques, or the recently proposed equallyandarelistedinalphabeticalorder.Themanuscriptwaswritten
consistent PLS (Dijkstra 2014; Dijkstra and Henseler 2014a, when the first author was an associate professor of marketing at the
InstituteforManagementResearch,RadboudUniversityNijmegen,The
b), which mimics covariance-based SEM. Specifically, the
Netherlands.
Fornell-Larckercriterionisastandardapproachtoassessdis-
criminant validity in covariance-based SEM (Shah and
Goldstein 2006; Shook et al. 2004). Thus, it is necessary to
evaluate whether this criterion suffers from the same limita- Appendix
tionsinafactormodelsetting.
InthelightoftheFornell-Larckercriterion and thecross- InthisAppendixwedemonstratethattheheterotrait-monotrait
loadings’ poor performance, researchers should carefully re- ratioofcorrelations(HTMT)aspresentedinthemainmanu-
consider the results of prior variance-based SEM analyses. scriptisanestimatoroftheinter-constructcorrelationφ.

132 J.oftheAcad.Mark.Sci.(2015)43:115–135
! !
and L x e j t 1 x ,… i1 ,… ,x jK ,x j i t K h i e be K t j h r e ef K le i c r t e iv fl e ec i t n i d v i e ca in to d r i s ca o to f r c s o o n f st c r o u n c s t t ξ ru j . c T t h ξ i e , ¼ K 1 −1 ⋅ XK XK r g;h −K K 1 ⋅ XK XK r g;h
g¼1 h¼1 g¼1 h¼1
empiricalcorrelationmatrixRisthen
0 1
B B B B r ⋮ i2 1 ;i1 r ⋮ i1 1 ;i2 … ⋱ … r r i i ⋮ 1 2 ; ; i i K K i i r r i i ⋮ 1 2 ; ; j j 1 1 r r i i ⋮ 1 2 ; ; j j 2 2 … … ⋮ r r i i 1 2 ⋮ ; ; j j K K j j C C C C Moreover,thecompositereliabilityρ ,is:
R¼ B B B B B B @ r r r i ⋮ K j j 1 2 i ; ; ; i i i 1 1 1 r r r i ⋮ K j j 1 2 i ; ; ; i i i 2 2 2 … … … ⋮ r r j j ⋮ 1 2 1 ; ; i i K K i i r r i ⋮ K j2 1 i ; ; j j 1 1 r r i ⋮ K j1 1 i ; ; j j 2 2 … … … ⋱ r r r iK j j ⋮ 1 2 i ; ; ; j j j K K K j j j C C C C C C A ! 0 ! c 1
r jKj ;i1 r jKj ;i2 … r jKj ;iKi r jKj ;j1 r jKj ;j2 … 1 α¼ ρ ¼
XK
λ
2
@
XK
λ
2
þ
XK
ε A
ðA1Þ c g g g
g¼1 g¼1 g¼1
!
XK 2 XK XK
(A4)
Ifthereflectivemeasurementmodel(i.e.,acommonfactor ¼ λ g r g;h
g¼1 g¼1 h¼1
model)holdstrueforbothconstructs,theimpliedcorrelation
matrixΣisthen
0 1
B B B B 1 λ ⋮ i2 λ i1 λ 1 ⋮ i1 λ i2 ⋯ ⋯ ⋱ λ ⋮ λ i i 1 2 λ λ i i K K i i φ φ ⋮ i i j j λ λ i i 1 2 λ λ j j 1 1 φ φ ⋮ i i j j λ λ i i 1 2 λ λ j j 2 2 ⋯ ⋯ ⋮ φ ⋮ φ i i j j λ λ i i 1 2 λ λ j j K K j j C C C C If a construct’s indicators are tau-equivalent, Cronbach’s
Σ¼ B B B B B B @ λ φ φ ⋮ i i i K j j λ λ i λ j j 1 2 i1 λ λ i i 1 1 λ φ φ ⋮ i i i K j j λ λ i λ j j 1 2 i2 λ λ i i 2 2 ⋯ ⋯ ⋯ ⋮ 1 φ φ ⋮ i i j j λ λ j j 1 2 λ λ i i K K i i φ 1 λ ⋮ i j j 2 λ λ iK j1 i λ j1 φ λ 1 ⋮ i j j 1 λ λ iK j2 i λ j2 ⋯ ⋯ ⋯ ⋱ φ λ λ ⋮ i j j j 1 2 λ λ λ iK j j K K i λ j j jK C C C C C C A j a c l o p m ha po is si a te c r o e n l s ia is b t i e l n it t y e ρ st c i , m w a h te ic o h f i a m s p e l t ie o s f t i h n a d t i : catorsjustlikethe
! !
φ
ij
λ
jKj
λ
i1
φ
ij
λ
jKj
λ
i2
⋯φ
ij
λ
jKj
λ
iKi
λ
jKj
λ
j1
λ
jKj
λ
j2
⋯1
1 XK XK 1 XK XK
ðA2Þ K−1 ⋅ r g;h −K K ⋅ r g;h
g¼1 h¼1 g¼1 h¼1
! !
XK 2 XK XK
WedepartfromthenotionthatCronbach’salphais ¼ λ g r g;h (A5)
K⋅
(cid:3)
r
g¼1 g¼1 h¼1
α¼ (cid:3) ðA3Þ
1þðK−1Þ⋅r
! !
¼ K⋅ KðK 1 −1Þ ⋅
XK XK
r g;h −K
!!
⇔ KðK
1
−1Þ ⋅
X
g¼
K
1
X
h¼
K
1 r g;h −K ¼ K
1
2
X
g¼
K
1 λ g
2
(A6)
g¼1 h¼1
!!
1
XK XK
¼ 1þðK−1Þ⋅ KðK−1Þ ⋅ r g;h −K The HTMT of constructs ξ and ξ as introduced in the
g¼1 h¼1 ij i j
manuscriptisthen:
!
1
XKi XKj
2
XKi−1 XKi
2
XKj−1 XKj 1
2
HTMT ij ¼ K K ⋅ r ig;jh K ðK −1Þ ⋅ r ig;ih ⋅ K (cid:4) K −1 (cid:5)⋅ r jg;jh (A7)
i j g¼1h¼1 i i g¼1 h¼gþ1 j j g¼1 h¼gþ1
! !!
1
XKi XKj
1
XKi XKi
1
XKj XKj 1
2
¼ K K ⋅ r ig;jh K ðK −1Þ ⋅ r ig;ih −K i ⋅ K (cid:4) K −1 (cid:5)⋅ r jg;jh −K j (A8)
i j g¼1h¼1 i i g¼1h¼1 j j g¼1h¼1
!
¼ ϕ⋅
XKi XKj
λ λ
XKi
λ ⋅
XKj
λ (A9)
¼ϕ⋅ 1 ⋅
XKi XKj
λ λ
0
@ 1
XKi
λ
! 2
⋅ 1 ⋅
XKj
λ
! 2 1
A
1 2 g¼1h¼1 ig jh g¼1 ig h¼1 jh
K
i
K
j g¼1h¼1
ig jh K2
i g¼1
ig K2
j h¼1
jh
¼ϕq:e:d:

J.oftheAcad.Mark.Sci.(2015)43:115–135 133
OpenAccessThisarticleisdistributedunderthetermsoftheCreative Dijkstra,T.K.,&Henseler,J.(2011).Linearindicesinnonlinearstruc-
CommonsAttributionLicensewhichpermitsanyuse,distribution,and turalequationmodels:bestfittingproperindicesandothercompos-
reproduction in any medium, provided the original author(s) and the ites.QualityandQuantity,45(6),1505–1518.
sourcearecredited. Dijkstra,T.K.andHenseler,J.(2014a).Consistentpartialleastsquares
pathmodeling.MISQuarterly,forthcoming.
Dijkstra,T.K.andHenseler,J.(2014b).Consistentandasymptotically
normal PLS estimators for linear structural equations.
ComputationalStatistics&DataAnalysis,forthcoming.
References Falk,R.F.,&Miller,N.B.(1992).Aprimerforsoftmodeling.Akron:
UniversityofAkronPress.
Farrell,A.M.(2010).Insufficientdiscriminantvalidity:acommenton
Aguirre-Urreta, M. I., Marakas, G. M., & Ellis, M. E. (2013). Bove, Pervan, Beatty, and Shiu (2009). Journal of Business
Measurementofcompositereliabilityinresearchusingpartialleast Research,63(3),324–327.
squares: some issues and an alternative approach. SIGMIS Fornell, C. G., & Bookstein, F. L. (1982). Two structural equation
Database,44(4),11–43. models:LISRELandPLSappliedtoconsumerexit-voicetheory.
Anderson,E.W.,&Fornell,C.G.(2000).FoundationsoftheAmerican JournalofMarketingResearch,19(4),440–452.
customer satisfaction index. Total Quality Management, 11(7), Fornell,C.G.,&Cha,J.(1994).Partialleastsquares.InR.P.Bagozzi
869–882. (Ed.), Advanced methods of marketing research (pp. 52–78).
Anderson,J.C.,&Gerbing,D.W.(1988).Structuralequationmodeling Oxford:Blackwell.
in practice: a review and recommended two-step approach. Fornell,C.G.,&Larcker,D.F.(1981).Evaluatingstructuralequation
PsychologicalBulletin,103(3),411–423. modelswithunobservablevariablesandmeasurementerror.Journal
Bagozzi,R.P.(1984).Aprospectusfortheoryconstructioninmarketing. ofMarketingResearch,18(1),39–50.
JournalofMarketing,48(1),11–29. Fornell,C.G.,Johnson,M.D.,Anderson,E.W.,Cha,J.,&Bryant,B.E.
Bagozzi, R. P., & Phillips, L. W. (1982). Representing and testing (1996). The American Customer Satisfaction Index: nature, pur-
organizationaltheories:aholisticconstrual.AdministrativeScience pose,andfindings.JournalofMarketing,60(4),7–18.
Quarterly,27(3),459–489. Gefen,D.,&Straub,D.W.(2005).Apracticalguidetofactorialvalidity
Barclay,D.W.,Higgins,C.A.,&Thompson,R.(1995).Thepartialleast usingPLS-Graph:tutorialandannotatedexample.Communications
squaresapproachtocausalmodeling:personalcomputeradoption oftheAIS,16,91–109.
anduseasillustration.TechnologyStudies,2(2),285–309. Gefen,D.,Straub,D.W.,&Boudreau,M.-C.(2000).Structuralequation
Bollen, K. A. (1989). Structural equations with latent variables. New modelingtechniquesandregression:guidelinesforresearchprac-
York,NY:Wiley. tice.CommunicationsoftheAIS,4,1–78.
Bollen,K.A.,&Lennox,R.(1991).Conventionalwisdomonmeasure- Gold,A.H.,Malhotra,A.,&Segars,A.H.(2001).Knowledgemanage-
ment: a structural equation perspective. Psychological Bulletin, ment: an organizational capabilities perspective. Journal of
110(2),305–314. ManagementInformationSystems,18(1),185–214.
Campbell, D. T. (1960). Recommendationsfor APA test standards re- Goodhue,D.L.,Lewis,W.,&Thompson,R.(2012).DoesPLShave
garding construct, trait, or discriminant validity. American advantages for small sample size or non-normal data? MIS
Psychologist,15(8),546–553. Quarterly,36(3),891–1001.
Campbell,D.T.,&Fiske,D.W.(1959).Convergentanddiscriminant Götz,O.,Liehr-Gobbers,K.,&Krafft,M.(2010).Evaluationofstructural
validation by the multitrait-multimethod matrix. Psychological equationmodelsusingthepartialleastsquares(PLS)approach.InV.
Bulletin,56(2),81–105. Esposito Vinzi, W. W. Chin, J. Henseler, & H. Wang (Eds.),
Chin, W. W. (1998). The partial least squares approach to structural Handbook of partial least squares: concepts, methods and
equationmodeling.InG.A.Marcoulides(Ed.),Modernmethods applications(pp.691–711).Berlin:Springer.
forbusinessresearch(pp.295–358).Mahwah:LawrenceErlbaum. Gudergan, S. P., Ringle, C. M., Wende, S., & Will, S. (2008).
Chin, W. W. (2010). How to write up and report PLS analyses. In V. Confirmatory tetrad analysis in PLS path modeling. Journal of
Esposito Vinzi, W. W. Chin, J. Henseler, & H. Wang (Eds.), BusinessResearch,61(12),1238–1249.
Handbookofpartialleastsquares:concepts,methodsandapplica- Haenlein,M.,&Kaplan,A.M.(2004).Abeginner’sguidetopartialleast
tionsinmarketingandrelatedfields(pp.655–690).Berlin:Springer. squaresanalysis.UnderstandingStatistics,3(4),283–297.
Clark,L.A.,&Watson,D.(1995).Constructingvalidity:basicissuesin Hair, J. F., Black, W. C., Babin, B. J., & Anderson, R. E. (2010).
objective scale development. Psychological Assessment, 7(3), Multivariatedataanalysis(7thed.).EnglewoodCliffs:PrenticeHall.
309–319. Hair,J.F.,Ringle,C.M.,& Sarstedt,M.(2011).PLS-SEM:indeed a
Cording, M., Christmann, P., & King, D. R. (2008). Reducing causal silver bullet. Journal of Marketing Theory and Practice,
ambiguityinacquisitionintegration:intermediategoalsasmediators 19(2), 139–151.
ofintegrationdecisionsandacquisitionperformance.Academy of Hair, J. F., Sarstedt, M., Ringle, C. M., & Mena, J. A. (2012a). An
ManagementJournal,51(4),744–767. assessment of the use of partial least squares structural equation
Davis,F.D.(1989).Perceivedusefulness,perceivedeaseofuse,anduser modeling in marketing research. Journal of the Academy of
acceptanceofinformationtechnology.MISQuarterly,13(3),319–340. MarketingScience,40(3),414–433.
Diamantopoulos, A., & Winklhofer, H. M. (2001). Index construction Hair,J.F.,Sarstedt,M.,Pieper,T.M.,&Ringle,C.M.(2012b).Theuseof
with formative indicators: an alternative to scale development. partialleastsquaresstructuralequationmodelinginstrategicman-
JournalofMarketingResearch,38(2),269–277. agementresearch:areviewofpastpracticesandrecommendations
Diamantopoulos,A.,Sarstedt,M.,Fuchs,C.,Wilczynski,P.,&Kaiser,S. forfutureapplications.LongRangePlanning,45(5–6),320–340.
(2012).Guidelinesforchoosingbetweenmulti-itemandsingle-item Hair,J.F.,Hult,G.T.M.,Ringle,C.M.,&Sarstedt,M.(2014).Aprimer
scales for construct measurement: a predictive validity perspective. onpartialleastsquaresstructuralequationmodeling(PLS-SEM).
JournaloftheAcademyofMarketingScience,40(3),434–449. ThousandOaks:Sage.
Dijkstra,T.K.(2014).PLS’Janusface–responsetoprofessorRigdon’s Henseler,J.(2012).Whygeneralizedstructuredcomponentanalysisis
‘rethinking partial least squares modeling: in praise of simple notuniversallypreferabletostructuralequationmodeling.Journal
methods’.LongRangePlanning,47(3),146–153. oftheAcademyofMarketingScience,40(3),402–413.

134 J.oftheAcad.Mark.Sci.(2015)43:115–135
Henseler,J.,& Sarstedt,M.(2013).Goodness-of-fitindicesforpartial Pavlou,P.A.,Liang,H.,&Xue,Y.(2007).Understandingandmitigating
leastsquarespathmodeling.ComputationalStatistics,28(2),565– uncertaintyinonlineexchangerelationships:aprincipal-agentper-
580. spective.MISQuarterly,31(1),105–136.
Henseler,J.,Ringle,C.M.,&Sinkovics,R.R.(2009).Theuseofpartial Paxton, P., Curran, P. J., Bollen, K. A., Kirby, J., & Chen, F. (2001).
leastsquarespathmodelingininternationalmarketing.Advancesin Monte Carlo experiments: design and implementation. Structural
InternationalMarketing,20,277–320. EquationModeling,8(2),287–312.
Henseler,J.,Dijkstra,T.K.,Sarstedt,M.,Ringle,C.M.,Diamantopoulos, Peng,D.X.,&Lai,F.(2012).Usingpartialleastsquaresinoperations
A., Straub, D. W., Ketchen, D. J., Hair, J. F., Hult, G. T. M., & management research: a practical guideline and summary of past
Calantone,R.J.(2014).Commonbeliefsandrealityaboutpartial research.JournalofOperationsManagement,30(6),467–480.
least squares: comments on Rönkkö & Evermann (2013). Peter, J. P., & Churchill, G. A. (1986). Relationships among research
OrganizationalResearchMethods,17(2),182–209. designchoicesandpsychometricpropertiesofratingscales:ameta-
Hochberg,Y.(1988).AsharperBonferroniprocedureformultiplesig- analysis.JournalofMarketingResearch,23(1),1–10.
nificancetesting.Biometrika,75(4),800–802. R Core Team (2014). R: a language and environment for statistical
Holm,S.(1979).AsimplesequentiallyrejectiveBonferronitestproce- computing.Vienna:RFoundationforStatisticalComputing.
dure.ScandinavianJournalofStatistics,6(1),65–70. Ravichandran, T., & Rai, A. (2000). Quality management in systems
Hui,B.S.,&Wold,H.(1982).Consistencyandconsistencyatlargeof development:anorganizationalsystemperspective.MISQuarterly,
partialleastsquaresestimates.InK.G.Jöreskog,&H.Wold(Eds.), 24(3),381–415.
Systems under indirect observation, part II (pp. 119–130). Reinartz,W.J.,Haenlein,M.,&Henseler,J.(2009).Anempiricalcom-
Amsterdam:NorthHolland. parisonoftheefficacyofcovariance-basedandvariance-basedSEM.
Hulland,J.(1999).Useofpartialleastsquares(PLS)instrategicman- InternationalJournalofResearchinMarketing,26(4),332–344.
agement research: a review of four recent studies. Strategic Rigdon, E. E. (2012). Rethinking partial least squares path modeling:
ManagementJournal,20(2),195–204. In praise of simple methods. Long Range Planning, 45(5–6),
Hwang, H., & Takane, Y. (2004). Generalized structured component 341–358.
analysis.Psychometrika,69(1),81–99. Rigdon,E.E.(2014).Rethinkingpartialleastsquarespathmodeling:break-
Hwang,H.,Malhotra,N.K.,Kim,Y.,Tomiuk,M.A.,&Hong,S.(2010). ingchainsandforgingahead.LongRangePlanning,47(3),161–167.
Acomparativestudyonparameterrecoveryofthreeapproachesto Ringle, C. M., Sarstedt, M., & Mooi, E. A. (2010). Response-based
structuralequationmodeling.JournalofMarketingResearch,47(4), segmentationusingfinitemixturepartialleastsquares:theoretical
699–712. foundationsandanapplicationtoAmericanCustomerSatisfaction
John,O.P.,&Benet-Martínez,V.(2000).Measurement:reliability,con- Indexdata.AnnalsofInformationSystems,8,19–49.
structvalidation,andscaleconstruction.InH.T.Reis&C.M.Judd Ringle,C.M.,Sarstedt,M.,&Straub,D.W.(2012).Acriticallookatthe
(Eds.), Handbook of research methods in social and personality useofPLS-SEMinMISQuarterly.MISQuarterly,36(1),iii–xiv.
psychology(pp.339–369).Cambridge:CambridgeUniversityPress. Ringle,C.M.,Sarstedt,M.,&Schlittgen,R.(2014).Geneticalgorithm
Klein, R., & Rai, A. (2009). Interfirm strategic information flows in segmentationinpartialleastsquaresstructuralequationmodeling.
logisticssupplychainrelationships.MISQuarterly,33(4),735–762. ORSpectrum,36(1),251–276.
Kline, R. B. (2011). Principles and practice of structural equation Roldán,J.L.,&Sánchez-Franco,M.J.(2012).Variance-basedstructural
modeling.NewYork:GuilfordPress. equation modeling: guidelines for using partial least squares in
Lee,L.,Petter,S.,Fayard,D.,&Robinson,S.(2011).Ontheuseofpartial information systems research. In M. Mora, O. Gelman, A.
least squares path modeling in accounting research. International Steenkamp, & M. Raisinghani (Eds.), Research methodologies,
JournalofAccountingInformationSystems,12(4),305–328. innovationsandphilosophiesinsoftwaresystemsengineeringand
Loch,K.D.,Straub,D.W.,&Kamel,S.(2003).DiffusingtheInternetinthe informationsystems(pp.193–221).Hershey:IGIGlobal.
Arabworld:Theroleofsocialnormsandtechnologicalculturation. Rönkkö,M.,&Evermann,J.(2013).Acriticalexaminationofcommon
IEEETransactionsonEngineeringManagement,50(1),45–63. beliefs about partial least squares path modeling. Organizational
Lohmöller,J.-B.(1989).Latentvariablepathmodelingwithpartialleast Research Methods, 16(3), 425–448.Sarstedt, M. & Mooi, E. A.
squares.Heidelberg:Physica. (2014). A concise guide to market research. The process, data,
Lu,I.R.R.,Kwan,E.,Thomas,D.R.,&Cedzynski,M.(2011).Twonew andmethodsusingIBMSPSSStatistics.Berlin:Springer.
methods for estimating structural equation models: an illustration Sarstedt,M.&Mooi,E.A.(2014).Aconciseguidetomarketresearch.
and a comparison with two established methods. International Theprocess,data,andmethodsusingIBMSPSSStatistics.Berlin:
JournalofResearchinMarketing,28(3),258–268. Springer.
Macmillan,N.A.,&Creelman,C.D.(2004).Detectiontheory:auser’s Schmitt, N. (1978). Path analysis of multitrait-multimethod matrices.
guide.Mahwah:LawrenceErlbaum. AppliedPsychologicalMeasurement,2(2),157–173.
Marcoulides,G.A.,Chin,W.W.,&Saunders,C.(2012).Whenimprecise Schmitt,N.,& Stults,D.M.(1986).Methodologyreview:analysisof
statisticalstatementsbecomeproblematic:aresponsetoGoodhue, multitrait-multimethod matrices. Applied Psychological
Lewis,andThompson.MISQuarterly,36(3),717-728. Measurement,10(1),1–22.
McDonald, R. P. (1996). Path analysis with composite variables. Shaffer, J. P. (1995). Multiple hypothesis testing. Annual Review of
MultivariateBehavioralResearch,31(2),239–270. Psychology,46,561–584.
Milberg,S.J.,Smith,H.J.,&Burke,S.J.(2000).Informationprivacy: Shah,R.,&Goldstein,S.M.(2006).Useofstructuralequationmodeling
corporate management and national regulation. Organization in operations management research: looking back and forward.
Science,11(1),35–57. JournalofOperationsManagement,24(2),148–169.
Miller,R.G.(1981).Simultaneousstatisticalinference.NewYork:Wiley. Shook,C.L.,Ketchen,D.J.,Hult,G.T.M.,&Kacmar,K.M.(2004).An
Monecke,A.,&Leisch,F.(2012).semPLS:structuralequationmodeling assessmentoftheuseofstructuralequationmodelinginstrategic
usingpartialleastsquares.JournalofStatisticalSoftware,48(3),1–32. management research. Strategic Management Journal, 25(4),
Mulaik, S. A. (2009). Foundations of factor analysis. New York: 397–404.
Chapman&Hall/CRC. Sosik,J.J.,Kahai,S.S.,&Piovoso,M.J.(2009).Silverbulletorvoodoo
Netemeyer,R.G.,Bearden,W.O.,&Sharma,S.(2003).Scalingproce- statistics?Aprimerforusingthepartialleastsquaresdataanalytic
dures:issuesandapplications.ThousandOaks:Sage. techniqueingroupandorganizationresearch.GroupOrganization
Nunnally,J.(1978).Psychometrictheory(2nded.).NewYork:McGraw-Hill. Management,34(1),5–36.

J.oftheAcad.Mark.Sci.(2015)43:115–135 135
Tenenhaus,A.,&Tenenhaus,M.(2011).Regularizedgeneralizedcanon- skewnessand model misspecification effects.InJ.LitadaDilva,
icalcorrelationanalysis.Psychometrika,76(2),257–284. F.Caeiro,I.Natário,&C.A.Braumann(Eds.),Advancesinregres-
Tenenhaus,M.,EspositoVinzi,V.,Chatelin,Y.-M.,&Lauro,C.(2005). sion,survivalanalysis,extremevalues,Markovprocessesandother
PLS path modeling. Computational Statistics & Data Analysis, statisticalapplications(pp.11–33).Berlin:Springer.
48(1),159–205. Vilares,M.J.,Almeida,M.H.,&Coelho,P.S.(2010).Comparisonof
Teo,T.S.H.,Srivastava,S.C.,&Jiang,L.(2008).Trustandelectronic likelihoodandPLSestimatorsforstructuralequationmodeling:a
government success: an empirical study. Journal of Management simulationwithcustomersatisfactiondata.InV.EspositoVinzi,W.
InformationSystems,25(3),99–132. W.Chin,J.Henseler,&H.Wang(Eds.),Handbookofpartialleast
Venkatesh,V.,Morris,M.G.,Davis,G.B.,&Davis,F.D.(2003).User squares:concepts,methodsandapplications(pp.289–305).Berlin:
acceptanceofinformationtechnology:towardaunifiedview.MIS Springer.
Quarterly,27(3),425–478. Wold,H.(1982).Softmodeling:thebasicdesignandsomeextensions.In
Vilares,M.J.,&Coelho,P.S.(2013).LikelihoodandPLSestimatorsfor K.G.Jöreskog&H.Wold(Eds.),Systemsunderindirectobserva-
structural equation modeling: an assessment of sample size, tions:partII(pp.1–54).Amsterdam:North-Holland.