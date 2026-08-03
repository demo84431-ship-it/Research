BEHAVIORAL AND BRAIN SCIENCES (2013) 36,181–253
doi:10.1017/S0140525X12000477
’
EDITOR S NOTE
Aexceptionallylargenumberofexcellentcommentaryproposalsinspiredaspecialresearchtopicforfurtherdiscussionof
thistargetarticle’ssubjectmatter,editedbyAxelCleeremansandShimonEdelmaninFrontiersinTheoreticalandPhilo-
sophicalPsychology.ThisdiscussionhasaprefacebyCleeremansandEdelmanand25commentaries andincludesasep-
arate rejoinder from Andy Clark. See:
http://www.frontiersin.org/Theoretical_and_Philosophical_Psychology/researchtopics/Forethought_as_an_evolutionary/1031
Whatever next? Predictive brains,
situated agents, and the future of
cognitive science
Andy Clark
SchoolofPhilosophy,Psychology,andLanguageSciences,
UniversityofEdinburgh,EH89ADScotland,UnitedKingdom
andy.clark@ed.ac.uk
http://www.philosophy.ed.ac.uk/people/full-academic/andy-clark.html
Abstract:Brains,ithasrecentlybeenargued,areessentiallypredictionmachines.Theyarebundlesofcellsthatsupportperceptionand
actionbyconstantlyattemptingtomatchincomingsensoryinputswithtop-downexpectationsorpredictions.Thisisachievedusinga
hierarchical generative model that aims to minimize prediction error within a bidirectional cascade of cortical processing. Such
accounts offer a unifying model of perception and action, illuminate the functional role of attention, and may neatly capture the
special contribution of cortical processing to adaptive success. This target article critically examines this “hierarchical prediction
machine”approach,concludingthat itoffers the bestclueyetto theshape ofaunifiedscienceof mindandaction.Sections1and2
lay out the key elements and implications of the approach. Section 3 explores a variety of pitfalls and challenges, spanning the
evidential,themethodological,andthemoreproperlyconceptual.Thepaperends(sections4and5)byaskinghowsuchapproaches
mightimpactourmoregeneralvisionofmind,experience,andagency.
Keywords: action; attention; Bayesian brain; expectation; generative model; hierarchy; perception; precision; predictive coding;
prediction;predictionerror;top-downprocessing
1. Introduction: Predictionmachines
correct, and that it captures something crucial about the
way that spending metabolic money to build complex
1.1. FromHelmholtztoaction-orientedpredictive
brains pays dividends in the search for adaptive success.
processing In particular, one of the brain’s key tricks, it now seems,
“The whole function of the brain is summed up in: error is to implement dumb processes that correct a certain
correction.” So wrote W. Ross Ashby, the British psychia- kind of error: error in the multi-layered prediction of
trist and cyberneticist, some half a century ago.1 Compu- input. In mammalian brains, such errors look to be cor-
tational neuroscience has come a very long way since rected within a cascade of cortical processing events in
then. There is now increasing reason to believe that which higher-level systems attempt to predict the inputs
Ashby’s (admittedly somewhat vague) statement is to lower-level ones on the basis of their own emerging
©CambridgeUniversityPress2013 0140-525X/13$40.00 181
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
modelsofthecausalstructureoftheworld(i.e.,thesignal to create the sensory patterns for itself (in “fantasy,” as it
source). Errors in predicting lower level inputs cause the was sometimes said).3 (For a useful review of this crucial
higher-level models to adapt so as to reduce the discre- innovationandasurveyofmanysubsequentdevelopments,
pancy. Such a process, operating over multiple linked seeHinton 2007a).
higher-level models, yields a brain that encodes a rich A generative model, in this quite specific sense, aims to
body of information about the source of the signals that capture the statistical structure of some set of observed
regularly perturb it. inputsbytracking(onemightsay,byschematicallyrecapi-
Such models follow Helmholtz (1860) in depicting per- tulating) the causal matrix responsible for that very struc-
ception as a process of probabilistic, knowledge-driven ture. A good generative model for vision would thus seek
inference. From Helmholz comes the key idea that to capture the ways in which observed lower-level visual
sensory systems are in the tricky business of inferring responsesaregeneratedbyaninteractingwebofcauses–
sensory causes from their bodily effects. This in turn for example, the various aspects of a visually presented
involves computing multiple probability distributions, scene. In practice, this means that top-down connections
since a single such effect will be consistent with many within a multilevel (hierarchical and bidirectional) system
different sets ofcausesdistinguished only by their relative come to encode a probabilistic model of the activities of
(and context dependent) probabilityof occurrence. unitsandgroupsofunitswithinlowerlevels,thustracking
Helmholz’sinsightinformedinfluentialworkbyMacKay (asweshallshortlyseeinmoredetail)interactingcausesin
(1956), Neisser (1967), and Gregory (1980), as part of the thesignalsource,whichmightbethebodyortheexternal
cognitive psychological tradition that became known as world–see,forexample,Kawatoetal.(1993),Hintonand
“analysis-by-synthesis” (for a review, see Yuille & Kersten Zemel (1994), Mumford (1994), Hinton et al. (1995),
2006). In this paradigm, the brain does not build its Dayan et al. (1995), Olshausen and Field (1996), Dayan
current model of distal causes (its model of how the (1997), and Hinton and Ghahramani (1997).
world is) simply by accumulating, from the bottom-up, a It is this twist–the strategy of using top-down connec-
mass of low-level cues such as edge-maps and so forth. tions to try to generate, using high-level knowledge, a
Instead (see Hohwy 2007), the brain tries to predict the kind of “virtual version” of the sensory data via a deep
current suite of cues from its best models of the possible multilevel cascade–that lies at the heart of “hierarchical
causes. In this way: predictive coding” approaches to perception; for
example, Rao and Ballard (1999), Lee and Mumford
Themappingfromlow-tohigh-levelrepresentation(e.g.from
(2003), Friston (2005). Such approaches, along with
acoustictoword-level)iscomputedusingthereversemapping, their recent extensions to action–as exemplified in
from high- to low-level representation. (Chater & Manning
Friston and Stephan (2007), Friston et al. (2009),
2006,p.340,theiremphasis)
Friston (2010), Brown et al. (2011)–form the main
Helmholz’s insight was also pursued in an important focus of the present treatment. These approaches
body of computational and neuroscientific work. Crucial combine the use of top-down probabilistic generative
to this lineage were seminal advances in machine learning models with a specific vision of one way such downward
that began with pioneering connectionist work on back- influence might operate. That way (borrowing from
propagation learning (McClelland et al. 1986; Rumelhart work in linear predictive coding–see below) depicts the
et al. 1986) and continued with work on the aptly named top-down flow as attempting to predict and fully
“Helmholz Machine” (Dayan et al. 1995; Dayan & “explain away” the driving sensory signal, leaving only
Hinton1996;seealsoHinton&Zemel1994).2TheHelm- any residual “prediction errors” to propagate information
holtz Machine sought to learn new representations in a forward within the system–see Rao and Ballard (1999),
multilevel system (thus capturing increasingly deep regu- Lee and Mumford (2003), Friston (2005), Hohwy et al.
larities within a domain) without requiring the provision (2008), Jehee and Ballard (2009), Friston (2010), Brown
of copious pre-classified samples of the desired input- et al. (2011); and, for a recent review, see Huang and
output mapping. In this respect, it aimed to improve (see Rao (2011).
Hinton 2010) upon standard back-propagation driven Predictivecodingitselfwasfirstdevelopedasadatacom-
learning.Itdidthisbyusingitsowntop-downconnections pressionstrategyinsignalprocessing(forahistory,seeShi
to provide the desired states for the hidden units, thus (in & Sun 1999). Thus, consider a basic task such as image
effect) self-supervising the development of its perceptual transmission: In most images, the value of one pixel regu-
“recognition model” using a generative model that tried larlypredictsthevalueofitsnearestneighbors,withdiffer-
ences marking important features such as the boundaries
between objects. That means that the code for a rich
image can be compressed (for a properly informed recei-
ANDY CLARK isProfessorofLogicandMetaphysicsin ver) by encoding only the “unexpected” variation: the
the School of Philosophy, Psychology, and Language cases where the actual value departs from the predicted
Sciences at the University of Edinburgh in Scotland. one. What needs to be transmitted is therefore just the
He is the author of six monographs, including Being difference (a.k.a. the “prediction error”) between the
There:PuttingBrain,BodyandWorldTogetherAgain actual current signal and the predicted one. This affords
(MIT Press, 1997), Mindware (Oxford University
major savings on bandwidth, an economy that was the
Press, 2001), Natural-Born Cyborgs: Minds, Technol-
driving force behind the development of the techniques
ogies and the Future of Human Intelligence (Oxford
by James Flanagan and others at Bell Labs during the
University Press, 2003), and Supersizing the Mind:
1950s (for a review, see Musmann 1979). Descendents of
Embodiment,Action, andCognitiveExtension(Oxford
University Press, 2008). In 2006 he was elected this kind of compression technique are currently used in
FellowoftheRoyalSocietyofEdinburgh. JPEGs, in various forms of lossless audio compression,
182 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
and in motion-compressed coding for video. The infor- Various forms of gradient descent learning can progress-
mation that needs to be communicated “upward” under ivelyimproveyourfirstguesses.Appliedwithinahierarch-
alltheseregimesisjustthepredictionerror:thedivergence icalpredictive processing5regime,thiswill–ifyou survive
fromtheexpectedsignal.Transposed(inwaysweareabout longenough–tendtoyieldusefulgenerativemodelsofthe
to explore) to the neural domain, this makes prediction signal source (ultimately, theworld).
error into a kind of proxy (Feldman & Friston 2010) for The beauty of the bidirectional hierarchical structure is
sensoryinformationitself.Later,whenweconsiderpredic- that it allows the system to infer its own priors (the prior
tive processing in the larger setting of information theory beliefs essential to the guessing routines) as it goes along.
and entropy, we will see that prediction error reports the It does this by using its best current model–at one
“surprise” induced by a mismatch between the sensory level–asthesourceofthepriorsforthelevelbelow,enga-
signals encountered and those predicted. More formally– ging in a process of “iterative estimation” (see Dempster
andtodistinguishitfromsurpriseinthenormal,experien- et al. 1977; Neal & Hinton 1998) that allows priors and
tiallyloadedsense–thisisknownassurprisal(Tribus1961). modelstoco-evolveacrossmultiplelinkedlayersofproces-
Hierarchical predictive processing combines the use, singsoastoaccountforthesensorydata.Thepresenceof
withinamultilevelbidirectionalcascade,of“top-down”prob- bidirectionalhierarchicalstructurethusinduces“empirical
abilistic generative models with the core predictive coding priors”6intheformoftheconstraintsthatonelevelinthe
strategy of efficient encoding and transmission. Such hierarchy places on the level below, and these constraints
approaches, originally developed in the domain of percep- are progressively tuned by the sensory input itself. This
tion, have been extended (by Friston and others–see sect. kindofprocedure(whichimplementsaversionof“empiri-
1.5)toencompassaction,andtoofferanattractive,unifying cal Bayes”; Robbins 1956) has an appealing mapping to
perspective on the brain’s capacities for learning, inference, known facts about the hierarchical and reciprocally con-
and the control of plasticity. Perception and action, if these nected structure and wiring of cortex (Friston 2005; Lee
unifying models are correct, are intimately related and &Mumford 2003).7
work together to reduce prediction error by sculpting and Aclassicearlyexample,combiningthiskindofhierarch-
selecting sensory inputs. In the remainder of this section, I ical learning with the basic predictive coding strategy
rehearse some of the main features of these models before described in section 1.1, is Rao and Ballard’s (1999)
highlighting(insects.2–5following)someoftheirmostcon- model of predictive coding in the visual cortex. At the
ceptuallyimportantandchallengingaspects. lowest level, there is some pattern of energetic stimu-
lation, transduced (let’s suppose) by sensory receptors
from ambient light patterns produced by the current
1.2. Escapingtheblackbox
visual scene. These signals are then processed via a multi-
A good place to start (following Rieke 1999) is with what level cascade in which each level attempts to predict the
might be thought of as the “view from inside the black activity at the level below it via backward8 connections.
box.” For, the task of the brain, when viewed from a The backward connections allow the activity at one stage
certain distance, can seem impossible: it must discover of the processing to return as another input at the pre-
information about the likely causes of impinging signals vious stage. So long as this successfully predicts the
without any form of direct access to their source. Thus, lower level activity, all is well, and no further action
considerablackboxtakinginputsfromacomplexexternal needs to ensue. But where there is a mismatch, “predic-
world.Theboxhasinputandoutputchannelsalongwhich tion error” occurs and the ensuing (error-indicating)
signalsflow.Butallthatit“knows”,inanydirectsense,are activityispropagatedtothehigherlevel.Thisautomatically
thewaysitsownstates(e.g.,spiketrains)flowandalter.In adjusts probabilistic representations at the higher level so
that(restricted)sense,allthesystemhasdirectaccesstois that top-down predictions cancel prediction errors at the
itsownstates.Theworlditselfisthusoff-limits(thoughthe lower level (yielding rapid perceptual inference). At the
box can, importantly, issue motor commands and await same time, prediction error is used to adjust the structure
developments). The brain is one such black box. How, of the model so as to reduce any discrepancy next time
simplyonthebasisofpatternsofchangesinitsowninternal around (yielding slower timescale perceptual learning).
states,isittoalterandadaptitsresponsessoastotuneitself Forward connections between levels thus carry the
to act as a useful node (one that merits its relatively huge “residual errors” (Rao & Ballard 1999, p. 79) separating
metabolic expense) for the origination of adaptive the predictions from the actual lower level activity, while
responses? Notice how different this conception is to backward connections (which do most of the “heavy
ones in which the problem is posed as one of establishing lifting” in these models) carry the predictions themselves.
a mapping relation between environmental and inner Changing predictions corresponds to changing or tuning
states. The task is not to find such a mapping but to infer your hypothesis about the hidden causes of the lower
the nature of the signal source (the world) from just the level activity. The concurrent running of this kind of pre-
varying inputsignalitself. dictionerrorcalculationwithinaloosebidirectionalhierar-
Hierarchical approaches in which top-down generative chy of cortical areas allows information pertaining to
models are trying to predict the flow of sensory data regularities at different spatial and temporal scales to
provide a powerful means for making progress under settle into a mutually consistent whole in which each
suchapparentlyunpromisingconditions.Onekeytaskper- “hypothesis” is used to help tune the rest. As the authors
formed by the brain, according to these models, is that of put it:
guessing the next states of its own neural economy. Such
guessing improves when you use a good model of the Prediction and error-correction cycles occur concurrently
signal source. Cast in the Bayesian mode, good guesses throughoutthehierarchy,sotop-downinformationinfluences
thus increase the posterior probability4 of your model. lower-level estimates, and bottom-up information influences
BEHAVIORALANDBRAINSCIENCES(2013)36:3 183
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
higher-levelestimatesoftheinputsignal.(Rao&Ballard1999, what is (to use Hosoya et al.’s own phrase) most “news-
p.80) worthy” in theincoming signal.10
In the visual cortex, such a scheme suggests that back- These computations of predicted salience might be
ward connections from V2 to V1 would carry a prediction made solely on the basis of average image statistics. Such
of expected activity in V1, while forward connections anapproachwould,however,leadtotroubleinmanyeco-
fromV1toV2wouldcarryforwardtheerrorsignal9indicat- logicallyrealisticsituations.Totakesomeofthemoredra-
ingresidual(unpredicted) activity. matic examples, consider an animal that frequently moves
To test these ideas, Rao and Ballard implemented a between a watery environment and dry land, or between
simple bidirectional hierarchical network of such “predic- a desert landscape and a verdant oasis. The spatial scales
tive estimators” and trained it on image patches derived at which nearby points in space and time are typically
from five natural scenes. Using learning algorithms that similar in image intensity vary markedly between such
progressively reduce prediction error across the linked cases, because the statistical properties of the different
cascade and after exposure to thousands of image types of scene vary. This is true in less dramatic cases
patches, the system learnt to use responses in the first too, such as when we move from inside a building to a
level network to extract features such as oriented edges garden or lake. Hosoya et al. thus predicted that, in the
and bars, while the second level network came to interests of efficient, adaptively potent, encoding, the be-
capture combinations of such features corresponding to
havioroftheretinalganglioncells(specifically,theirrecep-
patterns involving larger spatial configurations. The tivefieldproperties)shouldvaryasaresultofadaptationto
model also displayed (see sect. 3.1) a number of interest- the current scene or context, exhibiting what they term
ing “extra-classical receptive field” effects, suggesting that “dynamic predictivecoding.”
such non-classical surround effects (and, as we’ll later Putting salamanders and rabbits into varying environ-
see, context effects more generally) may be a rather ments, and recording from their retinal ganglion cells,
direct consequence of the use of hierarchical predictive Hosoya et al. confirmed their hypothesis: Within a space
coding. of several seconds, about 50% of the ganglion cells
For immediate purposes, however, what matters is that altered their behaviors to keep step with the changing
the predictive coding approach, given only the statistical imagestatisticsofthevaryingenvironments.Amechanism
properties of the signals derived from the natural images, was then proposed and tested using a simple feedforward
wasabletoinduceakindofgenerativemodelofthestruc- neuralnetworkthatperformsaformofanti-Hebbianlearn-
ture of the input data: It learned about the presence and ing. Anti-Hebbian feedforward learning, in which corre-
importance of features such as lines, edges, and bars, and lated activity across units leads toinhibition rather thanto
about combinations of such features, in ways that enable activation (see, e.g., Kohonen 1989), enables the creation
better predictions concerning what to expect next, in of “novelty filters” that learn to become insensitive to the
space or in time. The cascade of processing induced by most highly correlated (hence most “familiar”) features of
theprogressivereductionofpredictionerrorinthehierar- the input. This, of course, is exactly what is required in
chy reveals the world outside the black box. It maximizes ordertolearntodiscountthemoststatisticallypredictable
the posterior probability of generating the observed states elementsoftheinputsignalinthewaydynamicpredictive
(the sensory inputs), and, in so doing, induces a kind of coding suggests. Better yet, there are neuronally plausible
internal model of the source of the signals: the world ways to implement such a mechanism using amacrine cell
hidden behindthe veil ofperception. synapses to mediate plastic inhibitory connections that in
turn alter the receptive fields of retinal ganglion cells (for
details, see Hosoya et al. 2005, p. 74) so as to suppress
the most correlated components of the stimulus. In sum,
1.3. Dynamicpredictivecodingbytheretina retinal ganglion cells seem to be engaging in a computa-
Asanexampleofthepower(andpotentialubiquity)ofthe tionally and neurobiologically explicable process of
basic predictive coding strategy itself, and one that now dynamic predictive recoding of raw image inputs, whose
moves context center stage, consider Hosoya et al.’s effect is to “strip from the visual stream predictable and
(2005) account of dynamic predictive coding by the therefore less newsworthy signals” (Hosoya et al. 2005,
retina. The starting point of this account isthe well-estab- p.76).
lished sense in which retinal ganglion cells take part in
some form of predictive coding, insofar as their receptive
fields display center-surround spatial antagonism, as well 1.4. Anotherillustration:Binocularrivalry
as a kind of temporal antagonism. What this means, in Sofar,ourexampleshavebeenrestrictedtorelativelylow-
each case, is that neural circuits predict, on the basis of level visual phenomena. As a final illustration, however,
local image characteristics, the likely image characteristics consider Hohwy et al.’s (2008) hierarchical predictive
of nearby spots in space and time (basically, assuming coding model of binocular rivalry. Binocular rivalry (see,
that nearby spots will display similar image intensities) e.g., essays in Alais & Blake 2005, and the review article
and subtract this predicted value from the actual value. by Leopold & Logothetis 1999) is a striking form of
Whatgetsencodedisthusnottherawvaluebutthediffer- visual experience that occurs when, using a special exper-
encesbetweenrawvaluesandpredictedvalues.Inthisway, imental set-up, each eye is presented (simultaneously)
“Ganglion cells signal not the raw visual image but the with a different visual stimulus. Thus, the right eye might
departures from the predictable structure, under the be presented with an image of a house, while the left
assumption of spatial and temporal uniformity” (Hosoya receives an image of a face. Under these (extremely–and
et al.2005, p. 71). Thissaves on bandwidth, and also flags importantly–artificial) conditions, subjective experience
184 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
unfolds in a surprising, “bi-stable” manner. Instead of alternative hypothesis is not suppressed; it is now propa-
seeing (visually experiencing) a confusing all-points gated up the hierarchy. To suppress those prediction
merger of house and face information, subjects report a errors, the system needs to find another hypothesis. But
kind of perceptual alternation between seeing the house having done so (and hence, having flipped the dominant
and seeing the face. The transitions themselves are not hypothesis to the other interpretation), there will again
always sharp, and subjects often report a gradual breaking emerge a large prediction error signal, this time deriving
through (see, e.g., Lee et al. 2005) of elements of the from those elements of the driving signal not accounted
other image before it dominates the previous one, after for by the flipped interpretation. In Bayesian terms, this is
which thecycle repeats. a scenario in which no unique and stable hypothesis com-
Such“binocularrivalry,”asHohwyetal.remindus,has bines high prior and high likelihood. No single hypothesis
been a powerful tool for studying the neural correlates of accounts for all the data, so the system alternates between
conscious visual experience, since the incoming signals thetwo semi-stable states. Itbehaves as a bi-stable system,
remain constant while the percept switches to and fro minimizing prediction error in what Hohwy et al. describe
(Frith et al. 1999). Despite this attention, however, the asanenergylandscapecontainingadoublewell.
precise mechanisms at play here are not well understood. Whatmakesthisaccountdifferentfromitsrivals(suchas
Hohwy et al.’s strategy is to take a step back, and to thatofLeeetal.2005)isthatwhereastheypositakindof
attempt to explain the phenomenon from first principles direct, attention-mediated but essentially feedforward,
in a way that makes sense of many apparently disparate competition betweentheinputs,thepredictiveprocessing
findings.Inparticular,theypursuewhattheyduban“epis- accountposits“top-down”competitionbetweenlinkedsets
temological”approach:onewhosegoalistorevealbinocu- of hypotheses. The effect of this competition is to selec-
larrivalryasareasonable(knowledge-oriented)responseto tively suppress the prediction errors associated with the
an ecologicallyunusual stimulus condition. elements of the driving (sensory) signals suggesting the
Thestartingpointfortheirstoryis,onceagain,theemer- currentwinninghypothesis.Butthistop-downsuppression
ging unifying vision of the brain as an organ of prediction leavesuntouchedthepredictionerrorsassociatedwiththe
using a hierarchical generative model. Recall that, on remainingelements ofthedriving signal. Theseerrors are
these models, the task of the perceiving brain is to then propagated up the system. To explain them away
account for (to “explain away”) the incoming or “driving” the overall interpretation must switch. This pattern
sensorysignalbymeansofamatchingtop-downprediction. repeats, yielding the distinctive alternations experienced
Thebetterthematch,thelesspredictionerrorthenpropa- duringdichopticviewingofinconsistentstimuli.11
gates up the hierarchy. The higher-level guesses are thus Why,undersuchcircumstances,dowenotsimplyexperi-
acting as priors for the lower-level processing, in the enceacombinedorinterwovenimage:akindofhouse/face
fashion of so-called “empirical Bayes” (such methods use mash-up for example? Although such partially combined
theirowntargetdatasetstoestimatethepriordistribution: percepts do apparently occur, for brief periods of time,
akindofbootstrappingthatexploitsthestatisticalindepen- they are not sufficiently stable, as they do not constitute a
dencies that characterize hierarchical models). viable hypothesis given our more general knowledge about
Withinsuchamultilevelsetting,avisualperceptisdeter- the visual world. For it is part of that general knowledge
minedbyaprocessofpredictionoperatingacrossmanylevels that, for example, houses and faces are not present in the
ofa(bidirectional)processinghierarchy,eachconcernedwith same place, at the same scale, at the same time. This kind
different types and scales of perceptual detail. All the com- of general knowledge may itself be treated as a systemic
municatingareasarelockedintoamutuallycoherentpredic- prior, albeit one pitched at a relatively high degree of
tive coding regime, and their interactive equilibrium abstraction(suchpriorsaresometimesreferredtoas“hyper-
ultimately selects a best overall (multiscale) hypothesis con- priors”).Inthecaseathand,whatiscapturedisthefactthat
cerning the state of the visually presented world. This is “thepriorprobabilityofbothahouseandfacebeingco-loca-
the hypothesis that “makes the best predictions and that, lized in time and space is extremely small” (Hohwy et al.
taking priors into consideration, is consequently assigned 2008, p. 691). This, indeed, is the deep explanation of the
the highest posterior probability” (Hohwy et al. 2008, existence of competition between certain higher-level
p. 690). Other overall hypotheses, at that moment, are hypotheses in the first place. They compete because the
simply crowded out: they are effectively inhibited, having system has learnt that “only one object can exist in the
lostthecompetitiontobestaccountforthedrivingsignal. same place at the same time” (Hohwy et al. 2008, p. 691).
Notice, though, what this means in the context of the (This obviously needs careful handling, since a single state
predictive coding cascade. Top-down signals will explain of the world may be consistently captured by multiple
away (by predicting) only those elements of the driving high-level stories that ought not to compete in the same
signal that conform to (and hence are predicted by) the way: for example, seeing the painting as valuable, as a
current winning hypothesis. In the binocular rivalry case, Rembrandt,asanimageofacow,etc.)
however, the driving (bottom-up) signals contain infor-
mation that suggests two distinct, and incompatible,
states of the visually presented world–for example, face 1.5. Action-orientedpredictiveprocessing
at location X/house at location X. When one of these is Recent work by Friston (2003; 2010; and with colleagues:
selected as the best overall hypothesis, it will account for Brown et al. 2011; Friston et al. 2009) generalizes this
all and only those elements of the driving input that the basic “hierarchical predictive processing” model to
hypothesis predicts. As a result, prediction error for that include action. According to what I shall now dub
hypothesis decreases. But prediction error associated with “action-oriented predictive processing,”12 perception and
the elements of the driving signal suggestive of the action both follow the same deep “logic” and are even
BEHAVIORALANDBRAINSCIENCES(2013)36:3 185
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
implemented using the same computational strategies. A brains)expect(see Friston2009;Fristonetal.2010).Per-
fundamental attraction of these accounts thus lies in their ception,cognition,andaction–ifthisunifyingperspective
ability to offer a deeply unified account of perception, provescorrect–workcloselytogethertominimizesensory
cognition, and action. prediction errors by selectively sampling, and actively
Perception,aswesaw,isheredepictedasaprocessthat sculpting, the stimulus array. They thus conspire to move
attemptstomatchincoming“driving”signalswithacascade a creature through time and space in ways that fulfil an
of top-down predictions (spanning multiple spatial and ever-changing and deeply inter-animating set of (sub-per-
temporal scales) that aim to cancel it out. Motor action sonal) expectations. According tothese accounts, then:
exhibits a surprisingly similar profile,exceptthat:
Perceptual learning and inference is necessary to induce prior
Inmotorsystemserrorsignalsself-suppress,notthroughneuron- expectations about how the sensorium unfolds. Action is
ally mediated effects, but by eliciting movements that change
engagedtoresampletheworldtofulfiltheseexpectations.This
bottom-upproprioceptiveandsensoryinput.Thisunifyingper- places perception and action in intimate relation and accounts
spectiveonperceptionandactionsuggeststhatactionisbothper- forbothwiththesameprinciple.(Fristonetal.2009,p.12)
ceivedandcausedbyitsperception.(Friston2003,p.1349) Insome(I’llcallthemthe“desertlandscape”)versionsof
This whole scenario is wonderfully captured by Hawkins thisstory(seeespeciallyFriston2011b;Fristonetal.2010)
and Blakeslee, whowrite that: proprioceptive prediction errors act directly as motor com-
mands.Onthesemodelsitisourexpectationsaboutthepro-
Asstrangeasitsounds,whenyourownbehaviourisinvolved, prioceptiveconsequencesofmovingandactingthatdirectly
your predictions not only precede sensation, they determine bring the moving and acting about.13 I return briefly to
sensation.Thinkingofgoingtothenextpatterninasequence these“desertlandscape”scenariosinsection5.1furtheron.
causes a cascading prediction of what you should experience
next. As the cascading prediction unfolds, it generates the
motor commands necessary to fulfil the prediction. Thinking,
1.6. Thefreeenergyformulation
predicting, and doing are all part of the same unfolding of
sequences moving down the cortical hierarchy. (Hawkins & Thatlarge-scalepicture(ofcreaturesenslavedtosenseand
Blakeslee2004,p.158) to act in ways that make most of their sensory predictions
come true) finds fullest expression in the so-called free-
Acloselyrelatedbodyofworkinso-calledoptimalfeed-
energy minimization framework (Friston 2003; 2009;
backcontroltheory(e.g.,Todorov2009;Todorov&Jordan
2010; Friston & Stephan 2007). Free-energy formulations
2002) displays the motor control problem as mathemat-
ically equivalent to Bayesian inference. Very roughly–see originate in statistical physics and were introduced into
Todorov (2009) for a detailed account–you treat the the machine-learning literature in treatments that include
Neal and Hinton (1998), Hinton and von Camp (1993),
desired (goal) state as observed and perform Bayesian
inference to find the actions that get you there. This Hinton and Zemel (1994), and MacKay (1995). Such for-
mulations can arguably be used (e.g., Friston 2010) to
mapping between perception and action emerges also in
display the prediction error minimization strategy as itself
some recent work on planning (e.g., Toussaint 2009). The
a consequence of a more fundamental mandate to mini-
idea, closely related to these approaches to simple move-
mizeaninformation-theoreticisomorphofthermodynamic
ment control, is that in planning we imagine a future goal
state as actual, then use Bayesian inference to find the set
free-energyinasystem’sexchangeswiththeenvironment.
Thermodynamic free energy is a measure of the energy
of intermediate states (which can now themselves be
availabletodousefulwork.Transposedtothecognitive/infor-
whole actions) that get us there. There is thus emerging a
fundamentally unified set of computational models which, mational domain, it emerges as the difference between the
asToussaint(2009,p.29)comments,“doesnotdistinguish waytheworldisrepresentedasbeing,andthewayitactually
is.Thebetterthefit,thelowertheinformation-theoreticfree
betweentheproblemsofsensorprocessing,motorcontrol,
or planning.” Toussaint’s bold claim is modified, however,
energy(thisisintuitive,sincemoreofthesystem’sresources
arebeingputto“effectivework”inrepresentingtheworld).
by the important caveat (op. cit., p. 29) that we must, in
Prediction error reports this information-theoretic free
practice, deploy approximations and representations that
energy, which is mathematically constructed so as always to
are specialized for different tasks. But at the very least, it
begreaterthan“surprisal”(wherethisnamesthesub-person-
now seems likely that perception and action are in some
ally computed implausibility of some sensory state given a
deepsensecomputational siblings and that:
model of the world–see Tribus (1961) and sect. 4.1 in the
Thebestwaysofinterpretingincominginformationviapercep- presentarticle).Entropy,inthisinformation-theoreticrendi-
tion, are deeply the same as the best ways of controlling out-
tion,isthelong-termaverageofsurprisal,andreducinginfor-
going information via motor action … so the notion that
mation-theoretic free energy amounts to improving the
thereareafewspecifiablecomputationalprinciplesgoverning
world model so as to reduce prediction errors, hence redu-
neuralfunctionseemsplausible.(Eliasmith2007,p.380)
cing surprisal14 (since better models make better predic-
Action-oriented predictive processing goes further, tions). The overarching rationale (Friston 2010) is that
however, in suggesting that motor intentions actively goodmodelshelpustomaintainourstructureandorganiz-
elicit, via their unfolding into detailed motor actions, the ation, hence (over extended but finite timescales) to appear
ongoing streams of sensory (especially proprioceptive) toresistincreasesinentropyandthesecondlawofthermo-
results that our brains predict. This deep unity between dynamics. They do so by rendering us good predictors of
perception and actionemergesmost clearlyin the context sensory unfoldings, hence better poised to avoid damaging
of so-called active inference, where the agent moves its exchangeswiththeenvironment.
sensorsinwaysthatamounttoactivelyseekingorgenerat- The“free-energyprinciple” itself then statesthat“allthe
ing the sensory consequences that they (or rather, their quantities that can change; i.e. that are part of the system,
186 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
will change to minimize free-energy” (Friston & Stephan interacting set of distal causes that predict, accommodate,
2007, p. 427). Notice that, thus formulated, this is a claim and (thus) “explain away”the driving sensory signal.
aboutallelementsofsystemicorganization(fromgrossmor- This appeal to “explaining away” is important and
phologytotheentireorganizationofthebrain)andnotjust central, but it needs very careful handling. It is important
about cortical information processing. Using a series of asitreflectsthekeypropertyofhierarchicalpredictivepro-
elegant mathematical formulations, Friston (2009; 2010) cessingmodels,whichisthatthebrainisinthebusinessof
suggeststhatthisprinciple,whenappliedtovariouselements active,ongoing,inputpredictionanddoesnot(eveninthe
of neural functioning, leads to the generation of efficient early sensory case) merely react to external stimuli. It is
internal representational schemes and reveals the deeper important also insofar as it is the root of the attractive
rationale behind the links between perception, inference, coding efficiencies that these models exhibit, since all
memory, attention, and action scouted in the previous sec- that needs to bepassed forward through thesystem is the
tions. Morphology, action tendencies (including the active error signal, which is what remains once predictions and
structuringofenvironmentalniches),andgrossneuralarchi- driving signals have been matched.16 In these models it is
tectureareallexpressions,ifthisstoryiscorrect,ofthissingle therefore the backward (recurrent) connectivity that
principleoperatingatvaryingtime-scales. carries the main information processing load. We should
Thefree-energyaccountisofgreatindependentinterest.It not, however, overplay this difference. In particular, it is
representsakindof“maximalversion”oftheclaimsscouted potentially misleading tosay that:
insection1.5concerningthecomputationalintimacyofper-
Activation in early sensory areas no longer represents sensory
ceptionandaction,anditissuggestiveofageneralframework information per se, but only that part of the input that has
that might accommodate the growing interest (see, e.g., notbeensuccessfully predictedby higher-level areas. (de-Wit
Thompson 2007) in understanding the relations between etal.2010,p.8702)
lifeandmind.Essentially,thehopeistoilluminatethevery Itispotentiallymisleadingbecausethisstressesonlyone
possibilityofself-organizationinbiologicalsystems(see,e.g., aspect of what is (at least in context of the rather specific
Friston 2009, p. 293). A full assessment of the free energy models we have been considering17) actually depicted as
principle is, however, far beyond the scope of the present a kind of duplex architecture: one that at each level com-
treatment.15 In the remainder of this article, I turn instead bines quite traditional representations of inputs with rep-
toanumberofissuesandimplicationsarisingmoredirectly resentations of error. According to the duplex proposal,
from hierarchical predictive processing accounts of percep- what gets “explained away” or cancelled out is the error
tionandtheirpossibleextensionstoaction. signal, which (in these models) is depicted as computed
bydedicated“errorunits.”Thesearelinkedto,butdistinct
from, the so-called representation units meant to encode
2. Representation,inference, and the continuity of
thecausesofsensory inputs. By cancelling outthe activity
perception, cognition, and action
oftheerrorunits,activityinsomeofthelaterallyinteract-
ing “representation” units (which then feed predictions
The hierarchical predictive processing account, along with
downwardandareinthebusinessofencodingtheputative
themorerecentgeneralizationstoactionrepresents,orsoI
sensory causes) can actually end up being selected and
shallnowargue,agenuinedeparturefrommanyofourpre-
sharpened. The hierarchical predictive processing account
viouswaysofthinkingaboutperception,cognition,andthe thus avoids any direct conflict with accounts (e.g., biased-
humancognitivearchitecture.Itoffersadistinctiveaccount
competition models such as that of Desimone & Duncan
ofneuralrepresentation,neuralcomputation,andtherep-
1995) that posit top-down enhancements of selected
resentationrelationitself.Itdepictsperception,cognition,
aspects ofthe sensory signal, because:
andactionasprofoundlyunifiedand,inimportantrespects,
continuous.Anditoffersaneurallyplausibleandcomputa- High-level predictions explain away prediction error and tell
the error units to “shut up” [while] units encoding the causes
tionallytractableglossontheclaimthatthebrainperforms
of sensory input are selected by lateral interactions, with the
some form ofBayesian inference.
errorunits,thatmediateempiricalpriors.Thisselectionstops
thegossiping[henceactuallysharpensresponsesamongthelat-
erallycompetingrepresentations].(Friston2005,p.829)
2.1. Explainingaway
Thedrivetowards“explainingaway”isthusconsistent,in
Tosuccessfully representtheworldinperception, ifthese thisspecificarchitecturalsetting,withboththesharpening
models are correct, depends crucially upon cancelling out and the dampening of (different aspects of) early cortical
sensorypredictionerror.Perceptionthusinvolves“explain-
response.18 Thus Spratling, in a recent formal treatment
ingaway”thedriving(incoming)sensorysignalbymatching
of this issue,19 suggests that any apparent contrast here
itwithacascadeofpredictionspitchedatavarietyofspatial reflects:
and temporal scales. These predictions reflect what the
system already knows about the world (including the Amisinterpretationofthemodelthatmayhaveresultedfrom
body)andtheuncertaintiesassociatedwithitsownproces- the strong emphasis the predictive coding hypothesis places
sing. Perception here becomes “theory-laden” in at least on the error-detecting nodes and the corresponding under-
one (rather specific) sense: What we perceive depends emphasis on the role of the prediction nodes in maintaining
an active representation of the stimulus. (Spratling 2008a,
heavilyuponthesetofpriors(includinganyrelevanthyper-
p.8,myemphasis)
priors) that the brain brings to bear in its best attempt to
predict thecurrent sensory signal.On this model,percep- What is most distinctive about this duplex architectural
tion demands the success of some mutually supportive proposal (and where much of the break from tradition
stack of states of a generative model (recall sect. 1.1 really occurs) is that it depicts the forward flow of infor-
above) at minimizing prediction error by hypothesizing an mation as solely conveying error, and the backward flow
BEHAVIORALANDBRAINSCIENCES(2013)36:3 187
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
as solely conveying predictions. The duplex architecture higher-level states and features. Instead of simply repre-
thusachievesaratherdelicatebalancebetweenthefamiliar senting “CAT ON MAT,” the probabilistic Bayesian brain
(there isstilla cascade offeature-detection, withpotential will encode a conditional probability density function,
for selective enhancement, and with increasingly complex reflecting the relative probability of this state of affairs
features represented by neural populations that are more (andanysomewhat-supportedalternatives)giventheavail-
distant from the sensory peripheries) and the novel (the able information. This information-base will include both
forward flow of sensory information is now entirely the bottom-up driving influences from multiple sensory
replaced by a forward flow ofpredictionerror). channels and top-down context-fixing information of
This balancing act between cancelling out and selective various kinds. At first, the system may avoid committing
enhancement is made possible, it should be stressed, only itself to any single interpretation, while confronting an
by positing the existence of “two functionally distinct sub- initialflurry of error signals (which are said to constitute a
populations, encoding the conditional expectations of per- major component of early evoked responses; see, e.g.,
ceptual causes and the prediction error respectively” Friston 2005, p. 829) as competing “beliefs” propagate up
(Friston 2005, p. 829). Functional distinctness need not, and down the system. This is typically followed by rapid
of course, imply gross physical separation. But a common convergence upon a dominant theme (CAT, MAT), with
conjecture in this literature depicts superficial pyramidal further details (STRIPEY MAT, TABBY CAT) sub-
cells(aprimesourceofforwardneuro-anatomicalconnec- sequently negotiated. The set-up thus favors a kind of
tions) as playing the role of error units, passing prediction recurrently negotiated “gist-at-a-glance” model, where we
error forward, while deep pyramidal cells play the role of first identify the general scene (perhaps including general
representation units, passing predictions (made on the affective elements too–for a fascinating discussion, see
basis of a complex generative model) downward (see, Barrett & Bar 2009) followed by the details. This affords
e.g., Friston 2005; 2009; Mumford 1992). However it a kind of “forest first, trees second” approach (Friston
may(ormaynot)berealized,someformoffunctionalsep- 2005,p. 825; Hochstein & Ahissar 2002).
aration is required. Such separation constitutes a central This does not mean, however, that context effects will
feature of the proposed architecture, and one without always take time to emerge and propagate downward.21
whichitwouldbeunabletocombinetheradicalelements In many (indeed, most) real-life cases, substantial context
drawn from predictive coding with simultaneous support information is already in place when new information is
for the more traditional structure of increasingly complex encountered. An apt set of priors is thus often already
feature detection and top-down signal enhancement. But active, poised to impact the processing of new sensory
essentialasitis,thisisademandingandpotentiallyproble- inputs without further delay. This is important. The
matic requirement,which we will return toin section 3.1. brain,inecologicallynormalcircumstances,isnotjustsud-
denly “turned on” and some random or unexpected input
delivered for processing. So there is plenty of room for
2.2. Encoding,inference,andthe“BayesianBrain”
top-downinfluencetooccurevenbeforeastimulusispre-
sented. This is especially important in the crucial range of
Neural representations, should the hierarchical predictive cases where we, by our own actions, help to bring the
processing account prove correct, encode probability new stimulus about. In the event that we already know
densitydistributions20intheformofaprobabilisticgenera-
we are in a forest (perhaps we have been hiking for
tive model, and the flow of inference respects Bayesian hours), there has still been prior settling into a higher
principles that balance prior expectations against new level representational state. But such settling need not
sensory evidence. This (Eliasmith 2007) is a departure occur within the temporal span following each new
fromtraditionalunderstandingsofinternalrepresentation, sensory input.22 Over whatever time-scale, though, the
andonewhosefullimplicationshaveyettobeunderstood. endpoint (assuming we form a rich visual percept) is the
Itmeansthatthenervoussystemisfundamentallyadapted same. The system will have settled into a set of states that
to deal with uncertainty, noise, and ambiguity, and that it make mutually consistent bets concerning many aspects
requiressome(perhapsseveral)concretemeansofintern- of the scene (from the general theme all the way down to
ally representing uncertainty. (Non-exclusive options here more spatio-temporally precise information about parts,
includetheuseofdistinctpopulationsofneurons,varieties colors, orientations, etc.). At each level, the underlying
of“probabilisticpopulationcodes”(Pougetetal.2003),and
mode of representation will remain thoroughly probabilis-
relative timing effects (Deneve 2008)–for a very useful tic, encoding a series of intertwined bets concerning all
review,seeVilares&Körding2011).Predictiveprocessing the elements (at the various spatio-temporal scales) that
accounts thus share what Knill and Pouget (2004, p. 713) makeup theperceived scene.
describe as the“basicpremise on which Bayesian theories In what sense are such systemstruly Bayesian? Accord-
ofcortical processing will succeedorfail,” namely,that: ingtoKnilland Pouget:
The brain represents information probabilistically, by coding
The real test of the Bayesian coding hypothesis is in whether
and computing with probability density functions, or approxi-
the neural computations that result in perceptual judgments
mationstoprobabilitydensityfunctions(op.cit.,p.713)
ormotorbehaviourtakeintoaccounttheuncertaintyavailable
Suchamodeofrepresentationimpliesthatwhenwerep-
ateachstageoftheprocessing.(Knill&Pouget2004,p.713)
resentastateorfeatureoftheworld,suchasthedepthofa
visible object, we do so not using a single computed value That is to say, reasonable tests will concern how well a
but using a conditional probability density function that system deals with the uncertainties that characterize the
encodes“therelativeprobabilitythattheobjectisatdiffer- information it actually manages to encode and process,
ent depths Z, given the available sensory information” and (I would add) the general shape of the strategies it
(Knill & Pouget 2004, p. 712). The same story applies to usestodoso.Thereisincreasing(thoughmostlyindirect–
188 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
seesect.3.1)evidencethatbiologicalsystemsapproximate, at the world from “inside” the black box. That procedure
inmultipledomains,theBayesianprofilethusunderstood. (which will work in all worlds where there is organism-
To take just one example (for others, see sect. 3.1) Weiss detectable regularity in space or time; see Hosoya et al.
etal.(2002)–inapaperrevealinglytitled“Motionillusions 2005; Schwartz et al. 2007) allows a learner reliably to
as optimal percepts”–used an optimal Bayesian estimator match its internal generative model to the statistical prop-
(the “Bayesian ideal observer”) to show that a wide erties of the signal source (the world) yielding contents
variety of psychophysical results, including many motion that are, I submit, as “grounded” (Harnad 1990) and
“illusions,” fall naturally out of the assumption that “intrinsic” (Adams & Aizawa 2001) as any philosopher
humanmotionperceptionimplementsjustsuchanestima- couldwishfor.Suchmodelsthusdeliveranovelframework
tor mechanism.23Theyconcludethat: for thinking about neural representation and processing,
and a compelling take on the representation relation
Many motion “illusions” are not the result of sloppy compu-
itself: one that can be directly linked (via the Bayesian
tation by various components in the visual system, but rather
apparatus) to rational processes of learning and belief
a result of a coherent computational strategy that is optimal fixation.
underreasonableassumptions.(Weissetal.2002,p.603)
Examplescouldbemultiplied(seeKnill&Pouget[2004]
forabalancedreview).24Atleastintherealmsoflow-level, 2.3. Thedelicatedancebetweentop-downandbottom-up
basic,andadaptivelycrucial,perceptual,andmotoriccom- Inthecontextofbidirectionalhierarchicalmodelsofbrain
putations, biological processing may quite closely approxi- function,action-orientedpredictiveprocessingyieldsanew
mate Bayes’ optimality. But what researchers find account of the complex interplay between top-down and
ingeneralisnotthatwehumansare–ratherastoundingly– bottom-up influences on perception and action, and
“Bayes’ optimal” in some absolute sense (i.e., responding perhaps ultimately of the relations between perception,
correctlyrelativetotheabsoluteuncertaintiesinthestimu- action, and cognition.
lus),butrather,thatweareoftenoptimal,ornearoptimal, AsnotedbyHohwy(2007,p.320)thegenerativemodel
at taking into account the uncertainties that characterize providingthe“top-down”predictionsisheredoingmuchof
theinformationthatweactuallycommand:theinformation themoretraditionally“perceptual”work,withthebottom-
that is made available by the forms of sensing and proces- up driving signals really providing a kind of ongoing feed-
sing that we actually deploy (see Knill & Pouget 2004, back on their activity (by fitting, or failing to fit, the
p. 713). That means taking into account the uncertainty cascadeofdownward-flowingpredictions).Thisprocedure
inourownsensoryandmotorsignalsandadjustingtherela- combines “top-down” and “bottom–up” influences in an
tiveweightofdifferentcuesaccordingto(oftenverysubtle) especially delicate and potent fashion, and it leads to the
contextual clues. Recent work confirms and extends this development of neurons that exhibit a “selectivity that is
assessment,suggestingthathumansactasrationalBayesian not intrinsic to the area but depends on interactions
estimators, in perception and in action, across a wide across levels of a processing hierarchy” (Friston 2003,
variety of domains (Berniker & Körding 2008; Körding p. 1349). Hierarchical predictive coding delivers, that is
et al.2007;Yu 2007). to say, a processing regime in which context-sensitivity is
Ofcourse,themerefactthatasystem’sresponseprofiles fundamentaland pervasive.
take a certain shape does not itself demonstrate that that To see this, we need only reflect that the neuronal
system is implementing some form of Bayesian reasoning. responses that follow an input (the “evoked responses”)
In a limited domain, a look-up table could (Maloney & may be expected to change quite profoundly according to
Mamassian 2009) yield the same behavioral repertoire as the contextualizing information provided by a current
a “Bayes’ optimal” system. Nonetheless, the hierarchical winning top-down prediction. The key effect here (itself
and bidirectional predictive processing story, if correct, familiar enough from earlier connectionist work using the
would rather directly underwrite the claim that the “interactive activation” paradigm–see, e.g., McClelland
nervous system approximates, using tractable compu- & Rumelhart 1981; Rumelhart et al. 1986) is that, “when
tationalstrategies,agenuineversionofBayesianinference. a neuron or population is predicted by top-down inputs it
The computational framework of hierarchical predictive will be much easier to drive than when it is not” (Friston
processing realizes, using the signature mix of top-down 2002, p. 240). This is because the best overall fit between
and bottom-up processing, a robustly Bayesian inferential driving signal and expectations will often be found by (in
strategy, and there is mounting neural and behavioral evi- effect)inferringnoiseinthedrivingsignalandthusrecog-
dence (again, see sect. 3.1) that such a mechanism is nizing a stimulus as, for example, the letter m (say, in the
somehow implemented in the brain. Experimental tests context of the word “mother”) even though the same bare
have also recently been proposed (Maloney & Mamassian stimulus,presentedoutofcontextorinmostothercontexts,
2009; Maloney & Zhang 2010) which aim to “operationa- wouldhavebeenabetterfitwiththelettern.25Aunitnor-
lize”theclaimthatatargetsystemis(genuinely)computing mallyresponsivetothelettermmight,undersuchcircum-
its outputs using a Bayesian scheme, rather than merely stances,besuccessfullydrivenbyann-likestimulus.
behaving“asif”itdidso.This,however,isanareathatwar- Sucheffectsarepervasiveinhierarchicalpredictivepro-
rants a great deal offurther thought and investigation. cessing, and have far-reaching implications for various
Hierarchical predictive processing models also suggest forms of neuroimaging. It becomes essential, for
something about the nature of the representation relation example, to control as much as possible for expectations
itself. To see this, recall (sect. 1.2 above) that hierarchical when seeking to identify the response selectivity of
predictive coding, in common with other approaches neurons or patterns of neural activity. Strong effects of
deploying a cascade of top-down processing to generate top-down expectation have also recently been demon-
low-level states from high-level causes, offers a way to get strated for conscious recognition, raising important
BEHAVIORALANDBRAINSCIENCES(2013)36:3 189
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
questions about the very idea of any simple (i.e., context Instead, the weight given to sensory prediction error is
independent) “neural correlates of consciousness.” Thus, varied according to how reliable (how noisy, certain, or
Melloni et al. (2011) show that the onset time required to uncertain) the signal is taken to be. This is (usually) good
form a reportable conscious percept varies substantially news,asitmeanswearenot(notquite)slavestoourexpec-
(by around 100 msec) according to the presence or tations. Successful perception requires the brain to mini-
absence of apt expectations, and that the neural (here, mize surprisal. But the agent is able to see very (agent-)
EEG)signaturesofconsciousperceptionvaryaccordingly– surprising things, at least in conditions where the brain
a result these authors go on to interpret using the appar- assigns high reliability to the driving signal. Importantly,
atusofhierarchicalpredictiveprocessing.Finally,inapar- that requires that other high-level theories, though of an
ticularly striking demonstration of the power of top-down initiallyagent-unexpectedkind,winoutsoastoreducesur-
expectations, Egner et al. (2010) show that neurons in prisal by explaining away the highly weighted sensory evi-
thefusiformfacearea(FFA)respondeverybitasstrongly dence. In extreme and persistent cases (more on this in
to non-face (in this experiment, house) stimuli under high sect.4.2),thismayrequiregraduallyalteringtheunderlying
expectationoffacesastheydotoface-stimuli.Inthisstudy: generative model itself, in what Fletcher and Frith (2009,
p. 53) nicely describe as a “reciprocal interaction between
FFA activity displayed an interaction of stimulus feature and
perception and learning.”
expectation factors, where the differentiation between FFA
responses to face and house stimuli decreased linearly with Allthismakesthelinesbetweenperceptionandcognition
increasing levels of face expectation, with face and house fuzzy,perhapsevenvanishing.Inplaceofanyrealdistinction
evoked signals being indistinguishable under high face expec- between perception and belief we now get variable differ-
tation.(Egneretal.2010,p.16607) ences in the mixture of top-down and bottom-up influence,
Onlyunderconditionsoflowface expectation wasFFA and differences of temporal andspatial scale in the internal
response maximally different for the face and house models that are making the predictions. Top-level (more
probes, suggesting that “[FFA] responses appear to be “cognitive”) models26 intuitively correspond to increasingly
determined by feature expectation and surprise rather abstract conceptions of the world, and these tend to
than by stimulus features per se” (Egner et al. 2010, capture or depend upon regularities at larger temporal and
p. 16601). The suggestion, in short, is that FFA (in many
spatialscales.Lower-level(more“perceptual”)onescapture
ways the paradigm case of a region performing complex or depend upon the kinds of scale and detail most strongly
featuredetection)mightbebettertreatedasaface-expec- associated with specific kinds of perceptual contact. But it
tationregionratherthanasaface-detectionregion:aresult is the precision-modulated, constant, content-rich inter-
thattheauthorsinterpretasfavoringahierarchicalpredic- actions between these levels, often mediated by ongoing
tive processing model. The growing body of such results motor action of one kind or another, that now emerges as
leads Muckli to comment that: theheartofintelligent,adaptiveresponse.
Theseaccountsthusappeartodissolve,atthelevelofthe
S
w
e
h
n
e
s
r
o
e
r
a
y
s
s
it
t
s
im
m
u
a
la
jo
ti
r
on
tas
m
k
ig
is
ht
to
b
…
e th
p
e
red
m
ic
in
t
o
u
r
pc
ta
o
s
m
k
in
o
g
f
s
th
ti
e
mu
co
la
r
t
t
i
e
o
x
n
, implementingneuralmachinery,thesuperficiallycleandis-
tinctionbetweenperceptionandknowledge/belief.Toper-
aspreciselyaspossible.(Muckli2010,p.137)
ceivetheworldjustistousewhatyouknowtoexplainaway
Inasimilarvein,Raussetal.(2011)suggestthatonsuch
the sensory signal across multiple spatial and temporal
accounts:
scales. The process of perception is thus inseparable from
neural signals are related less to a stimulus per se than to its rational (broadly Bayesian) processes of belief fixation,
congruence with internal goals and predictions, calculated on andcontext(top-down)effectsarefeltateveryintermedi-
the basis of previous input to the system. (Rauss et al. 2011, atelevelofprocessing.Asthought,sensing,andmovement
p.1249) here unfold, we discover no stable or well-specified inter-
Attention fits very neatly into this emerging unified face or interfaces between cognition and perception.
picture, as a means of variably balancing the potent inter- Believing and perceiving, although conceptually distinct,
actionsbetweentop-downandbottom-upinfluencesbyfac- emergeasdeeplymechanicallyintertwined.Theyarecon-
toring in their precision (degree of uncertainty). This is structed using the same computational resources, and (as
achieved by altering the gain (the “volume,” to use a we shall see in sect. 4.2) are mutually, reciprocally,
common analogy) on the error-units accordingly. The entrenching.
upshot of this is to “control the relative influence of prior
expectations at different levels” (Friston 2009, p. 299). In
2.4. Summarysofar
recent work, effects of the neurotransmitter dopamine are
presented as one possible neural mechanism for encoding Action-oriented(hierarchical)predictiveprocessingmodels
precision (see Fletcher & Frith [2009, pp. 53–54] who promise to bring cognition, perception, action, and atten-
referthereadertoworkonpredictionerrorandthemesolim- tiontogetherwithinacommonframework.Thisframework
bicdopaminergicsystemsuchasHolleman&Schultz1998; suggests probability-density distributions induced by hier-
Waelti et al. 2001). Greater precision (however encoded) archicalgenerativemodelsasourbasicmeansofrepresent-
means less uncertainty, and is reflected in a higher gain on ing the world, and prediction-error minimization as the
the relevant error units (see Friston 2005; 2010; Friston drivingforcebehindlearning,action-selection,recognition,
et al. 2009). Attention, if this is correct, is simply one andinference.Suchaframeworkoffersnewinsightsintoa
means by which certain error-unit responses are given wide range of specific phenomena including non-classical
increasedweight,hencebecomingmoreapttodrivelearning receptive field effects, bi-stable perception, cue inte-
andplasticity,andtoengagecompensatoryaction. gration, and the pervasive context-sensitivity of neuronal
More generally, this means that the precise mix of top- response. It makes rich and illuminating contact with
down and bottom-up influence is not static or fixed. work in cognitive neuroscience while boasting a firm
190 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
foundation in computational modeling and Bayesian and clearly suggestive, cannot establish strong conclusions
theory. It thus offers what is arguably the first truly sys- about the shape of the mechanisms generating those
tematic bridge27linking three ofour most promisingtools behaviors.
for understanding mind and reason: cognitive neuro- Morepromisinginthisregardareotherformsofindirect
science, computational modelling, and probabilistic Baye- evidence, such as the ability of computational simulations
sian approaches to dealing withevidenceand uncertainty. of predictive coding strategies to reproduce and explain a
variety of observed effects. These include non-classical
receptive field effects, repetition suppression effects, and
3. Fromaction-orientedpredictiveprocessingtoan thebi-phasicresponseprofilesofcertainneuronsinvolved
architecture ofmind in low-level visual processing.
Thusconsidernon-classicalreceptivefieldeffects(Rao&
Despite that truly impressive list of virtues, both the hier- Sejnowski 2002). In one such effect, an oriented stimulus
archical predictive processing family of models and their yields a strong response from a cortical cell, but that
recentgeneralizationstoactionfaceanumberofimportant response is suppressed when the surrounding region is
challenges,rangingfromtheevidential(whataretheexper- filled with a stimulus of identical orientation, and it is
imental and neuroanatomical implications, and to what enhanced when the orientation of the central stimulus
extentaretheyborneoutbycurrentknowledgeandinvesti- is orthogonal to those of the surrounding region. This is a
gations?) to the conceptual (can we really explain so much surprising set of features. A powerful explanation of this
aboutperceptionandactionbydirectappealtoafundamen- result, Rao and Sejnowski (2002) suggest, is that the
talstrategyofminimizingerrorsinthepredictionofsensory observed neural response here signals error rather than
input?) to the more methodological (to what extent can some fixed content. It is thus smallest when the central
these accounts hope to illuminate the full shape of the stimulus is highly predictable from the surrounding ones,
human cognitive architecture?) In this section I address andlargestwhenitisactivelycounter-predictedbythesur-
each challenge in turn, before asking (sect. 4) how such roundings. A related account (Rao & Ballard 1999, based
modelsrelatetoourconsciousmentallife. on the simulation study sketched in sect. 1.2) explains
“end-stopping” effects, in which a lively neural response
to a preferred stimulus such as an oriented line segment
3.1. Theneuralevidence
ceases or becomes reduced when the stimulus extends
Directneuroscientifictestingofthehierarchicalpredictive farther than the neuron’s standard receptive field. Here,
codingmodel,andofitsaction-orientedextension,remains too, computational simulations using the predictive
initsinfancy.Thebestcurrentevidencetendstobeindir- coding strategy displayed the same effect. This is because
ect, and it comes in two main forms. The first (which is the natural images used to train the network contained
highly indirect) consists in demonstrations of precisely many more instances of these longer line segments, facili-
the kinds of optimal sensing and motor control that the tating prediction in (and only in) such cases. Extended
“Bayesian brain hypothesis” (sect. 2.2) suggests. Good linesegmentsarethusmorepredictable,soerror-signaling
examples here include compelling bodies of work on cue responsesarereducedoreliminated.Inshort,theeffectis
integration (see also sects. 2.2 above and 4.3 following) explained once more by the assumption that activity in
showing that human subjects are able optimally to weight these units is signaling error/mismatch. Similarly, Jehee
thevariouscuesarrivingthroughdistinctsensemodalities, and Ballard (2009) offer a predictive processing account
doingsoinwaysthatdelicatelyandresponsivelyreflectthe of “biphasic response dynamics” in which the optimal
current (context-dependent) levels of uncertainty associ- stimulus for driving a neuron (such as certain neurons in
ated with the information from different channels (Ernst LGN–lateral geniculate nucleus) can reverse (e.g., from
& Banks 2002; Knill & Pouget 2004–and for further dis- preferring bright to preferring dark) in a short (20 msec)
cussion, see Mamassian et al. 2002; Rescorla, in press). space of time. Once again the switch is neatly explained
This isbeautifully demonstrated, in thecase ofcombining asareflectionofaunit’sfunctionalroleasanerrorordiffer-
cues from vision and touch, by Bayesian models such as ence detector rather than a feature detector as such. In
that of Helbig and Ernst (2007). Similar results have such cases, the predictive coding strategy (sect. 1.1) is in
been obtained for motion perception, neatly accounting full evidencebecause:
forvariousillusionsofmotionperceptionbyinvokingstat-
Low-levelvisualinput[is]replacedbythedifferencebetween
istically valid priors that favor slower and smoother the input and a prediction from higher-level structures….
motions–see Weiss et al. (2002) and Ernst (2010). higher-level receptive fields … represent the predictions of
AnotherexampleistheBayesiantreatmentofcolorpercep- the visual world while lower-level areas … signal the error
tion (see Brainard 2009), which again accounts for various between predictions and the actual visual input. (Jehee &
knowneffects(here,colorconstanciesandsomecolorillu- Ballard2009,p.1)
sions) in terms ofoptimal cue combination. Finally, consider the case of “repetition suppression.”
ThesuccessoftheBayesianprograminthesearenas(for Multiple studies (for a recent review, see Grill-Spector
somemoreexamples,seeRescorla[inpress]andsect.4.4) etal.2006)haveshownthatstimulus-evokedneuralactivity
isimpossibletodoubt.Itisthusamajorvirtueofthehier- is reduced by stimulus repetition.28 Summerfield et al.
archical predictive coding account that it effectively (2008) manipulated the local likelihood of stimulus rep-
implements a computationally tractable version of the so- etitions, showing that the repetition-suppression effect is
called Bayesian Brain Hypothesis (Doya et al. 2007; Knill itself reduced when the repetition is improbable/unex-
&Pouget2004;seealsoFriston2003;2005;andcomments pected. The favored explanation is (again) that repetition
insects.1.2and2.2above).Butbehavioraldemonstrations normallyreducesresponsebecauseitincreasespredictabil-
of Bayesian performance, though intrinsically interesting ity(thesecondinstancewasmadelikelierbythefirst)and
BEHAVIORALANDBRAINSCIENCES(2013)36:3 191
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
thusreducespredictionerror.Repetitionsuppressionthus are now widely reported in the literature (see, e.g., Born
also emerges as a direct effect of predictive processing in etal. 2009;Pack &Born 2001).
the brain, and as such its severity may be expected to One extremely important and as yet not well-tested
vary (just as Summerfield et al. found) according to our implication of the general architectural form of these
local perceptual expectations. In general then, the predic- models is (recall sect. 2.1) that each level of processing
tive coding story offers a very neat and unifying expla- should contain two functionally distinct sub-populations
nation, of a wide variety ofsuch contextual effects. of units. One sub-population, recall, is doing the “real”
Can we find more direct forms of evidence as well? work of representing the current sensory cause: These
Functional imaging plays an increasing role here. For units (“representational neurons” or “state units”) encode
example, an fMRI study by Murray et al. (2002) revealed the area’s best guess, in context as processed so far, at
justthekindsofrelationshipspositedbythepredictivepro- the current stimulus. They thus encode what Friston
cessing (hierarchical predictive coding) story. As higher (2005, p. 829) describes as the area’s “conditional expec-
level areas settled into an interpretation of visual shape, tations of perceptual causes.” The other sub-population is
activityinV1wasdampened,consistentwiththesuccessful in the business of encoding precision-weighted prediction
higher-levelpredictionsbeingusedtoexplainaway(cancel errors: These units (so-called error units) fire when there
out) the sensory data. More recently, Alink et al. (2010) isamismatchbetweenwhatispredictedandwhatisappar-
found decreased responses for predictable stimuli using entlybeingobserved.Thetwosetsofunitsareassumedto
variants on an apparent motion illusion, while den Ouden interact in the manner prescribed by the hierarchical pre-
etal.(2010)reportsimilarresultsusingarbitrarycontingen- dictive coding model. That is to say, the error units
cies that were manipulated rapidly during the course of process signals from the representation units both at their
their experiments.29 Finally, the study by Egner et al. own level and at the level above, and the representation
(2010; described in sect. 2.3 above) went on to compare, units send signals to the error units both at their own
in simulation, several possible models that might be used level and at the level below. Forward connections thus
toaccountfortheirresults.Theauthorsfoundapredictive conveyerror,whilebackwardconnectionsare freetocon-
processing regime involving the co-presence of represen- struct(inapotentiallymuchmorecomplex,andhighlynon-
tation and error units (see sect. 2.1 earlier) to offer by far linearfashion)predictionsthataimtocancelouttheerror.
the best fit for their data. In that best-fit simulation, error Unfortunately, direct, unambiguous neural evidence for
(“face-surprise”) units are modeled as contributing twice these crucial functionally distinct sub-populations is still
asmuchtothefMRIsignalasrepresentation(“face-expec- missing. Hence:
tation”) units, leading the authors tocomment that: One limitation of these models–and of predictive coding in
Thecurrentstudyistoourknowledgethefirstinvestigationto general–is that to date no single neuron study has systemati-
callypursuedthesearchforsensorypredictionerrorresponses.
formally and explicitly demonstrate that population responses
(Summerfield&Egner2009,p.408)
in visual cortex are in fact better characterized as a sum of
featureexpectationandsurpriseresponsesthanbybottom-up Thegoodnewsisthatthereis,aswesaw,mountingand
featuredetection.(Egneretal.(2010,p.16607) converging indirect evidence for such a cortical architec-
ture in the form (largely) of increased cortical responses
The predictive processing model also suggests testable
to sensory surprise (surprisal). Crucially, there also exists
hypotheses concerning the ways in which interfering
(e.g., using TMS–transcranial magnetic stimulation–or (sect. 2.1) a plausible neuronal implementation for such a
scheme involving superficial and deep pyramidal cells.
other methods) with the message-passing routines linking
Nonetheless, much more evidence is clearly needed for
higher to lower cortical areas should impact performance.
To take one specific example, the model of binocular the existence of the clean functional separation (between
the activity of different neuronal features or sub-popu-
rivalry rehearsedin section 1.4 predicts that:
lations) required by these models.30
LGN and blind spot representation activity measured with
fMRIwillnotsuggestthatrivalry isresolvedbeforebinocular
convergence, if deprived of backwards signals from areas
abovebinocularconvergence.(Hohwyetal.2008,p.699)
3.2. Scopeandlimits
In general, if the predictive processing story is correct,
we expect to see powerful context effects propagating According toMumford:
quite low down the processing hierarchy. The key prin- In the ultimate stable state, the deep pyramidals [conveying
ciple–and one that also explains many of the observed predictionsdownwards]wouldsendasignalthatperfectlypre-
dynamics of evoked responses–is that (subject to the dictswhateachlowerareaissensing,uptoexpectedlevelsof
caveatsmentionedearlierconcerningalreadyactiveexpec- noise, and the superficial pyramidals [conveying prediction
tations) “representations at higher levels must emerge errorsupwards]wouldn’tfireatall.(Mumford1992,p.247)
before backward afferents can reshape the response In an intriguing footnote, Mumford then adds:
profile of neurons in lower areas” (Friston 2003, p. 1348). In some sense, this is the state that the cortex is trying to
In the case of evoked responses, the suggestion (Friston achieve: perfect prediction of the world, like the oriental
2005, sect. 6) is that an early component often tracks an Nirvana, as Tai-Sing Lee suggested to me, whennothing sur-
initialflurryofpredictionerror:onethatissoonsuppressed prisesyouandnewstimulicausethemerestrippleinyourcon-
(assuming the stimulus is not novel or encountered out of sciousness.(op.cit.,p.247,Note5)
itsnormal context) by successful predictionsflowing back- Thisremarkhighlightsaverygeneralworrythatissome-
wards from higher areas. Such temporal delays, which are times raised in connection with the large-scale claim that
exactly what one would expect if perception involves corticalprocessingfundamentallyaimstominimizepredic-
recruiting top-level models to explain away sensory data, tion error, thus quashing the forward flow of information
192 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
and achieving what Mumford evocatively describes as the offerare,wesaw,constrainedtobeprobabilistic(andgen-
“ultimate stable state.” It can beput likethis: erative model based) through and through. But that is
compatible with the use of the probabilistic-generative
How can a neural imperative to minimize prediction error by
modetoencodeinformationusingawidevarietyofdiffer-
enslaving perception, action, and attention accommodate the
obvious fact that animals don’t simply seek a nice dark room ent schemes and surface forms. Consider the well-docu-
and stay in it? Surely staying still inside a darkened room mented differences in the way the dorsal and ventral
would afford easy and nigh-perfect prediction of our own visual streams code for attributes of the visual scene.
unfolding neural states? Doesn’t the story thus leave out The dorsal stream (Milner & Goodale 2006) looks to
much that really matters for adaptive success: things like deploy modes of representation and processing that are
boredom, curiosity, play, exploration, foraging, and the thrill at some level of interest quite distinct from those coded
ofthehunt?
and computed in the ventral stream. And this will be
The simple response (correct, as far as it goes) is that true even if there is indeed, at some more fundamental
animals like us live and forage in a changing and challen- level,acommoncomputationalstrategyatworkthrough-
ging world, and hence “expect” to deploy quite complex out the visual and the motor cortex.
“itinerant” strategies (Friston 2010; Friston et al. 2009) to Discoveringthenatureofvariousinnerrepresentational
stay within our species-specific window of viability. formatsisthusrepresentativeofthelargerprojectofunco-
Change, motion, exploration, and search are themselves veringthefullshapeofthehumancognitivearchitecture.It
valuable for creatures living in worlds where resources seemslikelythat,asarguedbyEliasmith(2007),thislarger
are unevenly spread and new threats and opportunities project will demand a complex combination of insights,
continuously arise. This means that change, motion, some coming “top-down” from theoretical (mathematical,
exploration, and search themselves become predicted– statistical, and computational) models, and others coming
and poised to enslave action and perception accordingly. “bottom-up” from neuroscientific work that uncovers the
Onewaytounpack this ideawouldbetolookattheposs- brain’s actual resources as sculpted by our unique evol-
ibleroleofpriorsthatinducemotionthroughastatespace utionary (and–as we’llnext see–sociocultural) trajectory.
until an acceptable, though possibly temporary or other-
wiseunstable,stoppingpoint(anattractor)isfound.Inpre-
3.3. Neatsversusscruffies(twenty-firstcenturyreplay)
cisely this vein Friston (2011a, p. 113) comments that
“some species are equipped with prior expectations that Backinthelate1970sandearly1980s(theheydayofclas-
they will engage in exploratoryor social play.” sical Artificial Intelligence [AI]) there was a widely held
The whole shape of this space of prior expectations is viewthattwopersonalitytypeswerereflectedintheorizing
specific to different species and may also vary as a result about the human mind. These types were dubbed, by
of learning and experience. Hence, nothing in the large- Roger Schank and Robert Abelson, the “neats” versus the
scale story about prediction error minimization dictates “scruffies.”31 Neats believed in a few very general, truth-
any general or fixed balance between what is sometimes conducive principles underlying intelligence. Scruffies
glossed as “exploration” versus “exploitation” (for some saw intelligence as arising from a varied bag of tricks: a
further discussion of this issue, see Friston & Stephan rickety tower of rough-and-ready solutions to problems,
2007, pp. 435–36). Instead, different organisms amount often assembled using various quick patches and local
(Friston 2011a) to different “embodied models” of their ploys, and greedily scavenging the scraps and remnants of
specific needs and environmental niches, and their expec- solutions to other, historically prior, problems and needs.
tations and predictions are formed, encoded, weighted, Famously,thiscanleadtoscruffy,unreliable,orsometimes
and computed against such backdrops. This is both good merely unnecessarily complex solutions to ecologically
news and bad news. It’s good because it means the novel problems such as planning economies, building
stories on offer can indeed accommodate all the forms of railway networks, and maintaining the Internet. Such his-
behavior (exploration, thrill-seeking, etc.) we see. But it’s torically path-dependent solutions were sometimes called
bad(oratleast,limiting)becauseitmeansthattheaccounts “kluges”–see, for example, Clark (1987) and Marcus
don’tinthemselvestellusmuchatallaboutthesekeyfea- (2008).Neatsfavoredlogicandprovablycorrectsolutions,
tures: features which nonetheless condition and constrain while scruffies favored whatever worked reasonably well,
an organism’s responses in a variety of quite fundamental fast enough, in the usual ecological setting, for some
ways. given problem. The same kind of division emerged in
Inoneway,ofcourse,thisisclearlyunproblematic.The early debates between connectionist and classical AI (see,
briefestglance atthestaggeringvariety ofbiological(even e.g., Sloman 1990), with connectionists often accused of
mammalian) life forms tells us that whatever fundamental developingsystemswhoseoperatingprinciples(aftertrain-
principlesaresculptinglifeandmind,theyareindeedcom- ingonsomecomplexsetofinput-outputpairs)wasopaque
patible with an amazing swathe of morphological, neuro- and“messy.”Theconflictreappearsinmorerecentdebates
logical, and ethological outcomes. But in another way it (Griffiths et al. 2010; McClelland et al. 2010) between
canstillseemdisappointing.Ifwhatwewanttounderstand those favoring “structured probabilistic approaches” and
is the specific functional architecture of the human mind, those favoring “emergentist” approaches (where these are
the distance between these very general principles of pre- essentiallyconnectionistapproachesoftheparalleldistrib-
diction-error minimization and the specific solutions to uted processing variety).32
adaptive needs that we humans have embraced remains Myownsympathies(Clark1989;1997)havealwayslain
daunting. As a simple example, notice that the predictive more on the side of the scruffies. Evolved intelligence, it
processingaccountleaveswideopenavarietyofdeepand seemed to me (Clark 1987), was bound to involve a kind
importantquestionsconcerningthe natureandformat of of unruly motley of tricks and ploys, with significant path-
human neural representation. The representations on dependence, no premium set on internal consistency, and
BEHAVIORALANDBRAINSCIENCES(2013)36:3 193
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
fast effective situated response usually favored at the that of understanding the full human cognitive architec-
expense ofslower,more effortful, even ifmore truth-con- ture) that will be done by direct appeal to action-oriented
ducive modes of thought and reasoning. Seen through predictive processing and the amount that will still need
this lens, the “Bayesian brain” seems, at first glance, to tobedonebyuncoveringevolutionaryanddevelopmental
offer an unlikely model for evolved biological intelligence. trajectory-reflectingtricksandploys:thescruffyklugesthat
Implemented by hierarchical predictive processing, it gradually enabled brains like ours to tackle the complex
posits a single, fundamental kind of learning algorithm problems of themodern world.
(based on generative models, predictive coding, and pre-
diction-error minimization) that approximates the rational
ideal of Bayesian belief update. Suppose such a model
proves correct. Would this amount to the final triumph of 3.4. Situatedagents
the neats over the scruffies? I suspect it would not, and Wemayalsoaskwhat,ifanything,thehierarchicalpredic-
for reasons that shed additional light upon the questions tive processing perspective suggests concerning situated,
about scope and limits raised in theprevious section. world-exploiting agency (Clark 1997; 2008; Clark & Chal-
Favoring the “neats,” we have encountered a growing mers 1998; Haugeland 1998; Hurley 1998; Hutchins
body of evidence (sects. 2.2 and 2.3) showing that for 1995; Menary 2007; Noë 2004; 2009; Rowlands 1999;
many basic problems involving perception and motor 2006; Thelen & Smith 1994; Wheeler 2005; Wilson 1994;
control, human agents (as well as other animals) do 2004). At least on the face of it, the predictive processing
indeed manage to approximate the responses and choices story seems to pursue a rather narrowly neurocentric
of optimal Bayesian observers and actors. Nonetheless, a focus,albeitonethatreveals(sect.1.5)sometrulyintimate
considerable distance still separates such models from the linksbetweenperceptionandaction.Butdigalittledeeper
details of their implementation in humans or other and what we discover is a model of key aspects of neural
animals. It is here that the apparent triumph of the neats functioning that makes structuring our worlds genuinely
over the scruffies may be called into question. For the continuous with structuring our brains and sculpting our
Bayesian brain story tells us, at most, what the brain (or actions. Cashing out all the implications of this larger
better, the brain in action) manages to compute. It also picture is a future project, but a brief sketch may help set
suggests a good deal about the forms of representation thescene.
and computation that the brain must deploy: For Recall(sects.1.5and1.6)thatthesemodelsdisplayper-
example, it suggests (sect. 2.2) that the brain must deploy ceptionandactionworkinginproductivetandemtoreduce
a probabilistic representation of sensory information; that surprisal (where this measures the implausibility of some
it must take into account uncertainty in its own sensory sensory state given a model of the world). Perception
signals, estimate the “volatility” (frequency of change) of reduces surprisal by matching inputs with prior expec-
the environment itself (Yu 2007), and so on. But that still tations. Action reduces surprisal by altering the world
leaves plenty of room for debate and discovery as regards (including moving the body) so that inputs conform with
the precise shape of the large-scale cognitive architecture expectations. Working together, perception and action
within which allthis occurs. servetoselectivelysampleandactivelysculptthestimulus
Thehierarchicalpredictiveprocessingaccounttakesus array. These direct links to active sculpting and selective
afewimportantstepsfurther.Itoffersacomputationally sampling suggest deep synergies between the hierarchical
tractable approximation to true Bayesian inference. It predictive processing framework and work in embodied
says something about the basic shape of the cortical and situated cognition. For example, work in mobile
micro-circuitry. And, at least in the formulations I have robotics already demonstrates a variety of concrete ways
been considering, it predicts the presence of distinct in which perception and behavior productively interact
neural encodings for representation and error. But even via loops through action and the environment: loops that
taken together, the mathematical model (the Bayesian maynowbeconsidered asaffordingextra-neuralopportu-
brain) and the hierarchical, action-oriented, predictive nitiesfortheminimizationofpredictionerror.Inprecisely
processing implementation fail to specify the overall this vein, Verschure et al. (2003), in work combining
form of a cognitive architecture. They fail to specify, for robotics and statistical learning, note that “behavioural
example, how the brain (or better, the brain in the feedback modifies stimulus sampling and so provides an
context of embodied action) divides its cognitive labors additionalextra-neuronalpathforthereductionofpredic-
between multiple cortical and subcortical areas, what tion errors” (Verschure etal. 2003,p. 623).
aspects of the actual world get sensorially coded in the Moregenerally,considerrecentworkonthe“self-struc-
first place, or how best to navigate the exploit–explore turing of information flows.” This work, as the name
continuum (the grain of truth in the “darkened room” suggests, stresses the importance of our own action-based
worry discussed in sect. 3.2 above). It also leaves unan- structuring of sensory input (e.g., the linked unfolding
swered a wide range of genuine questions concerning across multiple sensory modalities that occurs when we
the representational formats used by different brain see,touch,andhearanobjectthatweareactivelymanipu-
areas or for different kinds of problems. This problem is lating). Such information self-structuring has been shown
only compounded once we reflect (Anderson 2007; also to promote learning and inference (see, e.g., Pfeifer et al.
see sect. 3.4 following) that the brain may well tackle 2007, and discussion in Clark 2008). Zahedi et al. (2010)
many problems arising later in its evolutionary trajectory translatethesethemesdirectlyintothepresentframework
bycannilyredeployingresourcesthatwereonceusedfor usingroboticsimulationsinwhichthelearningofcomplex
other purposes. coordination dynamics is achieved by maximizing the
In the most general terms, then, important questions amount of predictive information present in sensorimotor
remain concerning the amount of work (where the goal is loops.
194 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
Extensions into the realm of social action and multi- environments” for thinking such as mathematics,
agentcoordinationarethenclosetohand.For,akeyprox- reading,34writing, structured discussion, and schooling,in
imal goal of information self-structuring, considered from a process that Sterelny (2003) nicely describes as “incre-
the action-oriented predictive-processing perspective, is mental downstream epistemic engineering.” The upshot
thereductionofmutualpredictionerroraswecollectively is that the human-built environment becomes a potent
negotiate new and challenging domains (see, e.g., recent source of new intergenerationally transmissible structure
work on synchronization and shared musical experience: that surrounds our biological brains (see, e.g., Griffiths &
Overy & Molnar-Szakacs 2009; and the “culture as pat- Gray 2001; Iriki & Taoka 2012; Oyama 1999; Sterelny
terned practices” approach suggested by Roepstorff et al. 2007;Stotz 2010;Wheeler&Clark 2009).
2010).Suchaperspective,byhighlightingsituatedpractice, Whatarethepotentialeffectsofsuchstackedandtrans-
very naturally encompasses various forms of longer-term missible designer environments upon prediction-driven
material and social environmental structuring. Using a learning in cortical hierarchies? Such learning routines
variety of tricks, tools, notations, practices, and media, we make human minds permeable, at multiple spatial and
structure our physical and social worlds so as to make temporal scales, to the statistical structure of the world
them friendlier for brains like ours. We color-code consu- as reflected in the training signals. But those training
mer products, we drive on the right (or left), paint white signals are now delivered as part of a complex develop-
linesonroads,andpostpricesinsupermarkets.Atmultiple mental web that gradually comes to include all the
time-scales, and using a wide variety of means (including complex regularities embodied in the web of statistical
words, equations, graphs, other agents, pictures, and all relations amongthesymbols andother forms ofsocio-cul-
the tools of modern consumer electronics) we thus stack tural scaffolding in which we are immersed. We thus self-
thedicesothatwecanmoreeasilyminimizecostlypredic- constructakindofrolling“cognitiveniche”abletoinduce
tionerrorsinanendlesslyempoweringcascadeofcontexts the acquisition of generative models whose reach and
from shopping and socializing, to astronomy, philosophy, depth far exceeds their apparent base in simple forms of
and logic. sensory contact with the world. The combination of “iter-
Consider, from this perspective, our many symbol- ated cognitive niche construction” and profound neural
mediatedloopsintomaterialculturevianotebooks,sketch- permeability by the statistical structures of the training
pads,smartphones,and,asPickering&Garrod(2007)have environment is both potent and self-fueling. When these
observed,conversationswithotheragents.(Forsomeintri- two forces interact, repeatedly reconfigured agents are
guing speculations concerning the initial emergence of all enabled to operate in repeatedly reconfigured worlds,
thosediscretesymbolsinpredictive,probabilisticcontexts, and the human mind becomes a constantly moving
see König & Krüger 2006.) Such loops are effectively target. The full potential of the prediction-error minimiz-
enabling new forms of reentrant processing: They take a ation model of how cortical processing fundamentally
highly processed cognitive product (such as an idea about operates will emerge only (I submit) when that model is
the world), clothe it in public symbols, and launch it out paired with an appreciation of what immersion in all
into the world so that it can re-enter our own system as a those socio-cultural designer environments can do (for
concrete perceptible (Clark 2006a; 2008), and one now some early steps in this direction, see Roepstorff et al.
bearing highly informative statistical relations to other 2010). Such a combined approach would implement a
such linguaform perceptibles.33 It is courtesy of all that version of so-called neuroconstructivism (Mareschal et al.
concretepublicvehiclinginspokenwords,writtentext,dia- 2007) which asserts that:
grams, andpictures that our bestmodels ofreality (unlike
those of other creatures) are stable, re-inspectable objects
Thearchitectureofthebrain…andthestatisticsoftheenviron-
apt for public critique and refinement. Our best models ment,[are]notfixed.Rather,brain-connectivityissubjecttoa
broadspectrumofinput-,experience-,andactivity-dependent
oftheworldarethusthebasisforcumulative,communally
processes which shape and structure its patterning and
distributedreasoning,ratherthanjustthemeansbywhich
strengths…These changes, in turn, result in altered inter-
individual thoughts occur. The same potent processing actions with the environment, exerting causal influences on
regimes, now targeting these brand new types of statisti-
what is experienced and sensed in the future. (Sporns 2007,
cally pregnant “designer inputs,” are then enabled to dis- p.179)
cover and refine new generative models, latching onto
(andattimesactivelycreating)evermoreabstractstructure Allthissuggestsapossibletwistupontheworries(sects.
in theworld.Action andperception thus worktogether to 3.2and3.3)concerningtheabilityofthepredictiveproces-
reduce prediction error against the more slowly evolving sing framework to specify a full-blown cognitive architec-
backdrop of a culturally distributed process that spawns a ture. Perhaps that lack is not a vice but a kind of virtue?
succession of designer environments whose impact on the For what is really on offer, or so it seems to me, is best
development (e.g., Smith & Gasser 2005) and unfolding seen as a framework whose primary virtue is to display
ofhumanthoughtandreasoncanhardlybeoverestimated. some deep unifying principles covering perception,
Suchculturallymediatedprocessesmayincurcosts(sect. action, and learning. That framework in turn reveals us as
3.3) in the form of various kinds of path-dependence highlyresponsivetothestatisticalstructuresofourenviron-
(Arthur 1994) in which later solutions build on earlier ments, including the cascade of self-engineered “designer
ones. In the case at hand, path-based idiosyncrasies may environments.” It thus offers a standing invitation to evol-
become locked in as material artifacts, institutions, nota- utionary, situated, embodied, and distributed approaches
tions, measuring tools, and cultural practices. But it is tohelp“fillintheexplanatorygaps”whiledeliveringasche-
that very same trajectory-sensitive process that delivers maticbutfundamentalaccount ofthecomplexandcomp-
thevastcognitiveprofitsthatflowfromtheslow,multi-gen-
lementary roles of perception, action, attention, and
erational development of stacked, complex “designer environmentalstructuring.
BEHAVIORALANDBRAINSCIENCES(2013)36:3 195
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
4. Content andconsciousness alive. It would do the evolved creature no good at all to
keep experiencing the scene as to some degree uncertain
How, finally, do the accounts on offer relate to a human if the current task requires a firm decision, and if its
mentallife?This,ofcourse,isthehardest–thoughpoten-
neural processing has already settled on a good, strongly
tiallythemostimportant–questionofall.Icannothopeto supported bet as towhat’s (most probably) out there.
adequately address it in the present treatment, but a few Onewaytobegintocashthatoutistorecallthatbiologi-
preliminaryremarksmayhelptostructureaspaceforsub- cal systems will be informed by a variety of learned or
sequent discussion. innate “hyperpriors” concerning the general nature of the
world.Onesuchhyperprior,asremarkedduringthediscus-
sionofbinocularrivalryinsection1.4,mightbethatthereis
4.1. Agencyandexperience
onlyoneobject(onecauseofsensoryinput)inoneplace,at
To what extent, if any, do these stories capture or explain
agivenscale,atagivenmoment.35Another,moregermane
facts about what we might think of as personal (or agent- tothepresentdiscussion,mightbethattheworldisusually
level) cognition–the flow of thoughts, reasons, and ideas inonedeterminatestateoranother.Toimplementthis,the
that characterize daily conscious thought and reason? A brain might36 simply use a form of probabilistic represen-
first (but fortunately merely superficial) impression is that tation in which each distribution has a single peak
theyfallfarshortofilluminatingpersonal-levelexperience. (meaning that each overall sensory state has a single best
Forexample,thereseemstobealargedisconnectbetween explanation).Thiswouldruleouttrueperceptualambiguity
surprisal (the implausibility of some sensory state given a whileleavingplentyofroomforthekindofpercept-switch-
modeloftheworld–seesect.1.6)andagent-levelsurprise. ing seen in the binocular rivalry cases. The use of such a
This is evident from the simple fact that the percept that, representational form would amount to the deployment
overall, best minimizes surprisal (hence minimizes predic- of an implicit formal hyperprior (formal, because it con-
tion errors) “for” the brain may well be, for me the agent, cerns the form of the probabilistic representation itself)
some highly surprising and unexpected state of affairs– to the effect that our uncertainty can be described using
imagine, for example, the sudden unveiling of a large and such a unimodal probability distribution. Such a prior
doleful elephant elegantly smuggled onto the stage by a makes adaptive sense, given the kinds of brute fact about
professional magician. action mentioned above (e.g., we can only perform one
The two perspectives are, however, easily reconciled. action at a time, choosing the left turn or the right but
The large and doleful elephant is best understood as never both atonce).
improbable but not (at least not in the relevant sense– Such appeals to powerful (and often quite abstract)
recall sect. 3.2) surprising. Instead, that percept is the hyperpriors will clearly form an essential part of any
one that best respects what the system knows and expects larger, broadly Bayesian, story about the shape of human
about the world, given the current combination of driving experience. Despite this, no special story needs to be told
inputs and assigned precision (reflecting the brain’s about either the very presence or the mode of action of
degree of confidence in the sensory signal). Given the such hyperpriors. Instead, they arise quite naturally
right driving signal and a high enough assignment of pre- within bidirectional hierarchical models of the kind we
cision, top-level theories of an initially agent-unexpected have been considering where they may be innate (giving
kind can still win out so as to explain away that highly- them an almost Kantian feel) or acquired in the manner
weighted tide of incoming sensory evidence. The sight of of empirical (hierarchical) Bayes.37 Nonetheless, the sheer
thedolefulelephantmaythenemergeastheleastsurpris- potency of these highly abstract forms of “systemic expec-
ing (least “surprisal-ing”!) percept available, given the tation” again raises questions about the eventual spread of
inputs, the priors, and the current weighting on sensory explanatory weight: this time, between the framework on
prediction error. Nonetheless, systemic priors did not offerandwhatever additionalconsiderationsandmodesof
render that percept very likely in advance, hence
investigationmayberequiredtofixandrevealthecontents
(perhaps) thevalue tothe agent of thefeeling ofsurprise.
ofthehyperpriorsthemselves.38
The broadly Bayesian framework can also seem at odds
with the facts about conscious perceptual experience for
4.2. Illuminatingexperience:Thecaseofdelusions
a different reason. The world, it might be said, does not
look as if it is encoded as an intertwined set of probability It might be suggested that merely accommodating the
density distributions! It looks unitary and, on a clear day, range of human personal-level experiences is one thing,
unambiguous. But this phenomenology again poses no while truly illuminating them is another. Such positive
real challenge. What is on offer, after all, is a story about impact is, however, at least on the horizon. We glimpse
the brain’s way of encoding information about the world. the potential in an impressive body of recent work con-
It is not directly a story about how things seem to agents ducted within the predictive processing (hierarchical pre-
deploying that means of encoding information. There is dictive coding) framework addressing delusions and
clearly no inconsistency in thinking that the brain’s perva- hallucination in schizophrenia (Corlett et al. 2009a;
sive use of probabilistic encoding might yield conscious Fletcher & Frith 2009).
experiences that depict a single, unified, and quite unam- Recalltheunexpectedsightingoftheelephantdescribed
biguous scene. Moreover, in the context of an active in the previous section. Here, the system already com-
world-engaging system, such an outcome makes adaptive mandedanaptmodelableto“explainaway”theparticular
sense. For, the only point of all that probabilistic betting combination of driving inputs, expectations, and precision
is to drive action and decision, and action and decision (weighting on prediction error) that specified the doleful,
lacktheluxuryofbeingabletokeepalloptionsindefinitely graypresence.Butsuchisnotalwaysthecase.Sometimes,
196 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
dealing with ongoing, highly-weighted sensory prediction learning,andaffect intoasingleoverarchingeconomy:one
error may require brand new generative models gradually within which dopamine and other neurotransmitters
to be formed (just as in normal learning). This might hold control the “precision” (the weighting, hence the impact
the key, as Fletcher and Frith (2009) suggest, to a better on inference and on learning) of prediction error itself.
understandingoftheoriginsofhallucinationsanddelusion But when things go wrong, false inferences spiral and feed
(thetwo“positivesymptoms”)inschizophrenia.Thesetwo back upon themselves. Delusion and hallucination then
symptoms are often thought to involve two mechanisms become entrenched, being both co-determined and co-
and hence two breakdowns, one in “perception” (leading determining.
to the hallucinations) and one in “belief” (allowing these The same broadly Bayesian framework can be used
abnormal perceptions toimpact top-level belief). It seems (Corlett et al. 2009a) to help make sense of the ways in
correct(see,e.g.,Coltheart2007)tostressthatperceptual which different drugs, when given to healthy volunteers,
anomolies alone will not typically lead to the strange and can temporarily mimic various forms of psychosis. Here,
exotic belief complexes found in delusional subjects. But too, the key feature is the ability of the predictive coding
must we therefore think of the perceptual and doxastic framework to account for complex alterations in both
components aseffectively independent? learning and experience contingent upon the (pharmaco-
A possible link emerges if perception and belief-for- logically modifiable) way driving sensory signals are
mation, as the present story suggests, both involve the meshed, courtesy of precision-weighted prediction
attempt to match unfolding sensory signals with top-down errors, with prior expectancies and (hence) ongoing pre-
predictions. Importantly, the impact of such attempted diction. The psychotomimetic effects of ketamine, for
matching is precision-mediated in that the systemic example,aresaidtobeexplicableintermsofadisturbance
effects of residual prediction error vary according to the to the prediction error signal (perhaps caused by AMPA
brain’s confidence in the signal (sect. 2.3). With this in upregulation) and the flow of prediction (perhaps via
mind, Fletcher and Frith (2009) canvass the possible con- NMDAinterference).Thisleadstoapersistentprediction
sequences of disturbances to a hierarchical Bayesian error and–crucially–an inflated sense of the importance
systemsuchthatpredictionerrorsignalsarefalsely gener- or salience of the associated events, which in turn drives
ated and–more important–highly weighted (hence the formation of short-lived delusion-like beliefs (see
accorded unduesaliencefor driving learning). Corlett et al. 2009a, pp. 6–7; also, discussion in Gerrans
There are a number of potential mechanisms whose 2007). The authors go on to offer accounts of the varying
complex interactions, once treated within the overarching psychotomimetic effects of other drugs (such as LSD and
framework of prediction error minimization, might con- other serotonergic hallucinogens, cannabis, and dopamine
spiretoproducesuchdisturbances.Prominentcontenders agonists such as amphetamine) as reflecting other possible
include the action of slow neuromodulators such as dopa- varietiesofdisturbancewithinahierarchicalpredictivepro-
mine, serotonin, and acetylcholine (Corlett et al. 2009a; cessing framework.41
Corlett et al. 2010). In addition, Friston (2010, p. 132) Thisfluidspanningoflevelsconstitutes,itseemstome,
speculates that fast, synchronized activity between neural one of the key attractions of the present framework. We
areasmayalsoplayaroleinincreasingthegainonpredic- here move from considerations of normal and altered
tion error within the synchronized populations.39 The key states of human experience, via computational models
idea,howeverimplemented,isthatunderstandingtheposi- (highlighting prediction-error based processing and the
tivesymptomsofschizophreniarequiresunderstandingdis- top-downdeploymentofgenerativemodels),totheimple-
turbances in the generation and weighting of prediction mentingnetworksofsynapticcurrents,neuralsynchronies,
error.Thesuggestion(Corlettetal.2009a;2009b;Fletcher andchemicalbalancesinthebrain.Thehopeisthatbythus
& Frith 2009) is that malfunctions within that complex offeringanew,multilevelaccountofthecomplex,systema-
economy(perhapsfundamentallyrootedinabnormaldopa- tic interactions between inference, expectation, learning,
minergic functioning) yield wave upon wave of persistent and experience, these models may one day deliver a
and highly weighted “false errors” that then propagate all better understanding even of our own agent-level experi-
the way up the hierarchy forcing, in severe cases (via the encethanthataffordedbythebasicframeworkof“folkpsy-
ensuingwavesofneuralplasticity)extremelydeeprevisions chology.” Such an outcome would constitute a vindication
inourmodeloftheworld.Theimprobable(telepathy,con- oftheclaim(Churchland1989;2012)thatadoptinga“neu-
spiracy, persecution, etc.) then becomes the least surpris- rocomputational perspective” might one day lead us to a
ing, and–because perception is itself conditioned by the deeper understanding ofour ownlived experience.
top-downflowofpriorexpectations–thecascadeofmisin-
formation reaches back down, allowing false perceptions
4.3. Perception,imagery,andthesenses
andbizarrebeliefstosolidifyintoacoherentandmutually
supportive cycle. Anotherareainwhichthesemodelsaresuggestiveofdeep
Such a process is self-entrenching. As new generative facts about the nature and construction of human experi-
models take hold, their influence flows back down so that enceconcernsthecharacterofperceptionandtherelations
incomingdataissculptedbythenew(butnowbadlymisin- between perception and imagery/visual imagination. Pre-
formed)priorssoasto“conformtoexpectancies”(Fletcher
diction-driven processing schemes, operating within hier-
&Frith2009,p.348).Falseperceptionsandbizarrebeliefs archical regimes of the kind described above, learn
thusformanepistemicallyinsulatedself-confirmingcycle.40
probabilisticgenerativemodelsinwhicheachneuralpopu-
This, then, is the dark side of the seamless story (sect. 2) lation targets the activity patterns displayed by the neural
about perception and cognition. The predictive processing population below. What is crucial here–what makes such
model merges–usually productively–perception, belief, models generative as we saw in section 1.1–is that they
BEHAVIORALANDBRAINSCIENCES(2013)36:3 197
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
canbeused“top-down”topredictactivationpatternsinthe a flexible combination of top-down predictions and
level below. The practical upshot is that such systems, driving sensory signal.
simply as part and parcel of learning to perceive, develop But then why, given this unifying model in which the
the ability to self-generate42 perception-like states from senses work together to provide ongoing “feedback” on
thetopdown,bydrivingthelowerpopulationsintothepre- top-down predictions that aim to track causal structure in
dicted patterns. the world, do we experience sight as different from
There thus emerges a rather deep connection between sound, touch as different from smell, and so on? Why,
perception and the potential for self-generated forms of that is, do we not simply experience the overall best-esti-
mental imagery (Kosslyn et al. 1995; Reddy et al. 2010). mated external states of affairs without any sense of the
Probabilistic generative model based systems that can structure of distinct modalities in operation as we do so?
learn to visually perceive a cat (say) are, ipso facto, This is a surprisingly difficult question, and any answer
systems that can deploy a top-down cascade to bring must remain tentative in advance of a mature scientific
about many of the activity patterns that would ensue in story about conscious experience itself. A place to start,
the visual presence of an actual cat. Such systems thus though, is by noticing that despite the use of a single
display (formorediscussion ofthis issue, seeClark (forth- general processing strategy (the use of top-down predic-
coming) a deep duality of perception and imagination.43 tions to attempt to explain away sensory prediction error),
The same duality is highlighted by Grush (2004) in the there remain important differences between what is
“emulator theory of representation,” a rich and detailed being “explained away” within the different modalities.
treatment that shares a number of key features with the Thisisprobablybestappreciatedfromtheoverarchingper-
predictive processing story.44 spective of Bayesian perceptual inference. Thus, vision,
Hierarchicalpredictiveprocessingalsoprovidesamech- haptics, taste, and audition each trade in sensory signals
anismthatexplainsavarietyofimportantphenomenathat captured by distinct transducers and routed via distinct
characterize sensory perception, such as cross- and multi- early processing pathways. The different sensory systems
modal context effects on early sensory processing. Murray then combine priors and driving signals in ways that may
et al. (2002) displayed (as noted in sect.3.1) the influence yield differing estimates even of the very same distal
of high-level shape information on the responses of cells state. It is true that the overall job of the perceptual
in early visual area V1. Smith and Muckli (2010) show system is to combine these multiple estimates into a
similar effects (using as input partially occluded natural single unified model of the distal scene. But different
scenes) even on wholly non-stimulated (i.e., not directly sensory systems specialize (unless one is pressed into
stimulated via the driving sensory signal) visual areas. unusualservice,asintheinterestingcaseofsensory-substi-
Murray et al. (2006) showed that activation in V1 is influ- tution technologies45) in estimating different environ-
enced by a top-down size illusion, while Muckli et al. mental features, and even where they estimate the same
(2005) and Muckli (2010) report activity relating to an feature, their estimates, and the reliability (in context) of
apparent motion illusion in V1. Even apparently “unimo- those estimates will vary. In a thick fog, for example,
dal” early responses are influenced (Kriegstein & Giraud vision is unreliable (delivering shape information with
2006) by information derived from other modalities, and high uncertainty) while touch is less affected, whereas
hence commonly reflect a variety of multimodal associ- when wearing thick gloves the reverse may be true. That
ations. Even the expectation that a relevant input will means that even where two senses are reporting on the
turn out to be in one modality (e.g., auditory) rather than very same environmental state (e.g., shape by sight, and
another(e.g.,visual)turnsouttoimpactperformance,pre- shape by touch) they may deliver different “guesses”
sumably by enhancing “the weight of bottom-up input for about what is out there: guesses that reflect inferences
perceptual inference on a given sensory channel” made on the basis of distinct priors, different sensory
(Langner et al.2011,p. 10). signals, and the differing uncertainties associated with
This whole avalanche of context effects emerges natu- those signals.
rally given the hierarchical predictive processing model. Such differences, it seems to me, should be enough to
Ifso-calledvisual,tactile,orauditorysensorycortexisactu- ground the obvious experiential differences between the
ally exploiting a cascade of downward influence from various modalities. At the same time, the operation of a
higherlevelswhosegoalisactivelytopredicttheunfolding common underlying processing strategy (Bayesian infer-
sensory signals (the ones originally transduced using the ence, here implemented using hierarchical predictive
various dedicated receptor banks of vision, sound, touch, coding)accountsfortheeasewithwhichmultipleconflict-
etc.) extensive downward-reaching multimodal and cross- ingestimatesareusuallyreconciledintoaunifiedpercept.
modal effects (including various kinds of “filling-in”) will Inthiswaytheframeworkonofferprovidesapowerfulset
follow. For any statistically valid correlations, registered of “fundamental cognitive particles” (generative models
within the increasingly information-integrating (or “meta- and precision-weighted prediction-error-driven proces-
modal”–Pascual-Leone & Hamilton 2001; Reich et al. sing) whose varying manifestations may yet capture both
2011) areas towards the top of the processing hierarchy, the variety and the hidden common structure of our
can inform the predictions that cascade down, through mental lives.
what were previously thought of as much more unimodal Difficult questions also remain concerning the best way
areas,allthewaytoareasclosertothesensoryperipheries. to connect an understanding of such “fundamental par-
Such effects appear inconsistent with the idea of V1 as a ticles”andthegrossstructureofourdaily(andbynowmas-
site for simple, stimulus-driven, bottom-up feature-detec- sively culturally underwritten) conception of our own
tion using cells with fixed (context-inflexible) receptive mental lives. In this daily or “folk” conception, we rather
fields. But they are fully accommodated by models that firmly distinguish between perceptions, thoughts,
depict V1 activity as constantly negotiated on the basis of emotions, and reasons, populating our minds with distinct
198 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
constructs such as memories, beliefs, hopes, fears, and representation or hypothesis but (precisely) the world.
(agent-level) expectations. We thus depict minds and We do so courtesy ofthe brain’sability to latch on to how
selves in ways that are likely to make at best indirect the world is by means of a complex flow of sub-personal
contact (see, e.g., Barrett 2009; Clark 1989; Dennett processes.Thatflow,ifthesestoriesareontrack,fullywar-
1978; 1987) with the emerging scientific vision. Yet brid- rantsthe“Helmholtzian”descriptionofperceptionasinfer-
gingbetweenthesevisions(themanifestandthescientific ence. But it is precisely by such means that biological
image; Sellars 1962) remains essential if we are to gain beings are able to establish a truly tight mind-world
maximal benefits from a better understanding of the linkage. Brains like these are statistical spongesstructured
inner (and outer) machinery itself. It is essential if, for (sect. 1.2) by individual learning and evolutionary inheri-
example, we aspire to deploy our new understandings to tance so as to reflect and register relevant aspects of the
improve socialrelations and education, to increase human causal structure ofthe world itself.47
happiness, or to inform our responses to social problems. Oneplacewherethisbecomesespeciallyevidentisinthe
Tobridgethisgapwillplausiblyrequireeffort andcompro- treatment (sect. 2.2) of visual illusions as Bayes-optimal
mise from both sides (Humphrey 2000), as the folk percepts. The idea, recall, is that the percept–even in
conception alters under the influence of a scientific under- thecaseofvariouseffectsandillusions–isanaccurateesti-
standing that must itself recognize the causal potency of mation of the most likely real-world source or property,
the folk-psychological constructs: constructs which we givennoisysensoryevidenceandthestatisticaldistribution,
encounter and model just as surely as we encounter and within some relevant sample, of real-world causes. This is
modelotherconstructssuchasmarriage,divorce,andtaxes. an important finding that has now been repeated in many
domains, including the sound-induced flash illusion
(Shams et al. 2005), ventriloquism effects (Alais & Burr
4.4. Sensingandworld 2004) and the impact of figure-ground convexity cues in
What, then, of the mind–world relation itself? Hohwy d et ep al t . h ’s p (2 e 0 rc 0 e 2 p ) t B io a n ye ( s B -o u p rg ti e m e a t la a c l. co 2 u 0 n 1 t 0) o . f A a d c d la it s i s o o n f a s ll t y a , ti W c( e fi is x s -
(2007) suggeststhat:
ation-dependent) motion illusions has now been extended
One important and, probably, unfashionable thing that this toaccount foramuchwidersetofmotionillusionsgener-
theorytellsusaboutthemindisthatperceptionisindirect… ated in the presence of active eye movements during
what we perceive is the brain’s best hypothesis, as embodied smooth pursuit (see Freeman et al. 2010, and discussion
in a high-level generative model, about the causes in the inErnst2010).Perceptualexperience,evenintheseillusory
outerworld.(Hohwy2007,p.322)
cases,thuslookstobeveridicallytrackingstatisticalrelations
Thereissomethingrightaboutthis.Thebulkofourdaily betweenthesensory dataanditsmost probablereal-world
perceptualcontactwiththeworld,ifthesemodelsareonthe sources. The intervening mechanisms thus introduce no
mark,isdeterminedasmuchbyourexpectationsconcerning worrisome barrier between mind and world. Rather, it is
thesensedsceneasbythedrivingsignalsthemselves.Even only because of such sub-personal complexities that agents
morestrikingly,theforwardflowofsensoryinformationcon- likeuscanbeperceptuallyopentotheworlditself.48
sistsonlyinthepropagationoferrorsignals,whilerichlycon-
tentful predictions flow downward, interacting in complex
5. Taking stock
non-linear fashions via the web of reciprocal connections.
Oneresultofthispatternofinfluenceisagreaterefficiency
5.1. Comparisonwithstandardcomputationalism
intheuseofneuralencodings,since:
Just how radical is the story we have been asked to con-
anexpectedeventdoesnotneedtobeexplicitlyrepresentedor sider? Isitbestseen asanalternativetomainstreamcom-
communicatedtohighercorticalareaswhichhaveprocessedall
putational accounts that posit a cascade of increasingly
of its relevant features prior to its occurrence. (Bubic et al.
complex feature detection (perhaps with some top-down
2010,p.10)
biasing), or is it merely a supplement to them: one whose
If this is indeed the case, then the role of perceptual main virtue lies in its ability to highlight the crucial role
contact with the world is only to check and, when necess- of prediction error in driving learning and response? I do
ary, correct the brain’s best guessing concerning what is not think we are yet in a position to answer this question
out there. This is a challenging vision, as it suggests that withanyauthority.ButthepictureIhavepaintedsuggests
our expectations are in some important sense the primary anintermediateverdict,atleastwithrespecttothecentral
source ofall the contents of our perceptions, even though issues concerning representation andprocessing.
such contents are constantly being checked, nuanced, and Concerning representation, the stories on offer are
selected by the prediction error signals consequent upon potentially radical in at least two respects. First, they
the driving sensory input.46 Perhaps surprisingly, the suggest that probabilistic generative models underlie both
immediate role of the impinging world is thus most sensory classification and motor response. And second,
marked when error signals, in a well-functioning brain, they suggest that the forward flow of sensory data is
drivethekindsofplasticitythatresultinperceptuallearn- replaced by the forward flow of prediction error. This
ing, rather than in the cases where we are simply success- latter aspect can, however, make the models seem even
fully engaging a well-understood domain. more radical than they actually are: Recall that the
Nonetheless,wemaystillrejectthebaldclaimthat“what forward flow of prediction error is here combined with a
weperceiveisthebrain’sbesthypothesis.”Evenifourown downwardflowofpredictions,andateverystageofproces-
predictionisindeed (atleast infamiliar,highly learntcon- singthemodelsposit(aswesawinsomedetailinsect.2.1)
texts)doingmuchoftheheavylifting,itremainscorrectto functionally distinct “error units” and “representation
say that what we perceive is not some internal units.” The representation units that communicate
BEHAVIORALANDBRAINSCIENCES(2013)36:3 199
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
predictions downward do indeed encode increasingly personal, affective, and hedonic significance. This folding-
complex and more abstract features (capturing context in is probably especially marked in frontolimbic cortex
and regularities at ever-larger spatial and temporal scales) (Merker 2004). But the potent web of backward connec-
in the processing levels furthest removed from the raw tions ensures that such folding-in, once it has occurred, is
sensoryinput.Inaveryrealsensethen,muchofthestan- able (as noted by Barrett & Bar 2009; see also sect. 2.2)
dardarchitectureofincreasinglycomplexfeaturedetection to impact processing and representation at every lower
is here retained. What differs is the shape of the flow of stage of the complex processing hierarchy. If this proves
information, and (relatedly) the pivotal role assigned to correct, then it is prediction error calculated relative to
thecomputation andpropagation ofprediction error. these affectively rich and personal-history–laden expec-
Arelatedissueconcernstheextenttowhichthenewfra- tations that drives learningand response.
mework reproduces traditional insights concerning the Thusconstrued,anaction-orientedpredictiveprocessing
specialization of different cortical areas. This is a large frameworkisnotsomuchrevolutionaryasitisreassuringly
question whose full resolution remains beyond the scope integrative.Itsgreatestvalueliesinsuggestingasetofdeep
of the present discussion. But in general, the hierarchical unifying principles for understanding multiple aspects of
form of these models suggests a delicate combination of neuralfunctionandorganization.Itdoesthisbydescribing
specialization and integration. Different levels learn and anarchitecturecapableofcombininghigh-levelknowledge
deploy different sets of predictions, corresponding to andlow-level(sensory)informationinwaysthatsystemati-
different bodies of knowledge, aimed at the level below cally deal with uncertainty, ambiguity, and noise. In so
(specialization)butthesystemsettlesinawaylargelydeter- doing it reveals perception, action, learning, and attention
minedbytheoverallflowandweightingofpredictionerror, as different but complementary means to the reduction
wherethisflowisitselfvariedaccordingtocurrentcontext of (potentially affect-laden and goal-reflecting) prediction
andthereliabilityandrelevanceofdifferenttypesofinfor- error in our exchanges with the world. It also, and simul-
mation (integration).49 taneously,displayshumanlearningassensitivelyresponsive
Asecondsourceofpotentialradicalismlieswiththesug- tothedeepstatisticalstructurespresentinbothournatural
gestion(sect.1.5)that,inextendingthemodelstoinclude and human-built environments. Thus understood, action-
action (“action-oriented predictive processing”), we might oriented predictive processing leaves much unspecified,
simultaneously do away with the need to appeal to goals including (1) the initial variety of neural and bodily struc-
and rewards, replacing them with the more austere con- tures (and perhaps internal representational forms) man-
struct ofpredictions. In this vein, we read that: dated by our unique evolutionary trajectory, and (2) the
Crucially,activeinferencedoesnotinvokeany“desiredconse-
acquiredvarietyof“virtual”neuralstructuresandrepresen-
quences.” It rests only on experience-dependent learning and tational forms installed by our massive immersion in
inference: Experience induces prior expectations, which
“designerenvironments”duringlearninganddevelopment.
guide perceptual inference and action. (Friston et al. 2011, To fill in these details requires, or so I have argued, a
p.157) deep(butsatisfyinglynatural)engagementwithevolution-
Inthis desert landscape vision,there areneither goals nor ary, embodied, and situated approaches. Within that
rewardsignalsassuch.Instead,thereareonly(bothlearnt context,seeinghowperception,action,learning,andatten-
and species-specific) expectations, across many spatial and tionmightallbeconstructedoutofthesamebasematerials
temporal scales, which directly enslave both perception (prediction andpredictionerrorminimization)ispowerful
and action. Cost functions, in other words, are replaced and illuminating. It is there that Friston’s ambitious syn-
by expectations concerning actions and their sensory thesis is at its most suggestive, and it is there that we
(especially proprioceptive) consequences. Here, I remain locate the most substantial empirical commitments of the
unconvinced. For even if such an austere description is account. Those commitments are to the computation (by
indeedpossible(andforsomecriticalconcerns,seeGersh- dedicated error units or some functionally equivalent
man&Daw2012),thatwouldnotimmediatelyjustifyour means) and widespread use by the nervous system of pre-
claiming that it thereby constitutes the better tool for cision-weighted prediction error, and its use as proxy for
understanding the rich organization of the cognitive the forward flow of sensory information. The more wide-
economy. To see this, we need only reflect that it’s all spread this is, the greater the empirical bite of the story.
“just” atoms, molecules, and the laws of physics too, but If it doesn’t occur, or occurs only in a few special circum-
that doesn’t mean those provide the best constructs and stances, the story fails as a distinctive empirical account.50
components for the systemic descriptions attempted by
cognitive science. The desert landscape theorist thus
5.2. Conclusions:Towardsagrandunifiedtheoryofthe
needstodomore,itseemstome,todemonstratetheexpla-
mind?
natory advantages of abandoning more traditional appeals
to value, reward, and cost (or perhaps to show that those Action-oriented predictive processing models come tanta-
appeals make unrealistic demands on processing or lizingly close to overcoming some of the major obstacles
implementation–seeFriston2011b). blocking previous attempts to ground a unified science of
Whatmaywellberightaboutthedesertlandscapestory, mind, brain,and action. They take familiar elements from
itseemstome,isthesuggestion thatutility (ormoregen- existing, well-understood, computational approaches
erally, personal and hedonic value) is not simply a kind of (suchasunsupervisedandself-supervisedformsoflearning
add-on, implemented by what Gershman and Daw (2011, using recurrent neural network architectures, and the use
p. 296) describe as a “segregated representation of prob- of probabilistic generative models for perception and
ability and utility in the brain.” Instead, it seems likely action) and relate them, on the one hand, to a priori con-
that we represent the very eventsoverwhich probabilities straints on rational response (the Bayesian dimension),
become defined in ways that ultimately fold in their and, on the other hand, to plausible and (increasingly)
200 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
testableaccountsofneuralimplementation.Itisthispotent hierarchical predictive coding regime? How confident are
positioning between the rational, the computational, and we of the basic Bayesian gloss on our actual processing?
the neural that is their most attractive feature. In some (Do we, for example, have a firm enough grip on when a
ways, they provide the germ of an answer to Marr’s system is computing its outputs using a “genuine approxi-
dream: a systematic approach that addresses the levels of mation” to a true Bayesian scheme, rather than merely
(in the vocabulary of Marr 1982) the computation, the behaving “as if” itdid so?)
algorithm, and the implementation. Thechallenges(empirical,conceptual,andmethodologi-
The sheer breadth of application is striking. Essentially cal) are many and profound. But the potential payoff is
thesamemodelshereaccountforavarietyofsuperficially huge. What is on offer is a multilevel account of some of
disparate effects spanning perception, action, and atten- the deepest natural principles underlying learning and
tion. Indeed, one way to think about the primary “added inference,andonethatmaybecapableofbringingpercep-
value” of these models is that they bring perception, tion, action, and attention under a single umbrella. The
action, and attention into a single unifying framework. ensuing exchanges between neuroscience, computational
They thus constitute the perfect explanatory partner, I theorizing, psychology, philosophy, rational decision
have argued, for recent approaches that stress the embo- theory, and embodied cognitive science promise to be
died, environmentally embedded, dimensions of mind among the major intellectual events of the early twenty-
and reason.51 Perception, action, and attention, if these first century.
views are correct, are all in the same family business: that
of reducing sensory prediction error resulting from our ACKNOWLEDGMENTS
exchanges with the environment. Once this basic family Thistargetarticlehasbenefittedenormouslyfromcommentsand
business is revealed, longer-term environmental structur- reactions from a wide variety of readers and audiences. Special
ing (both material and socio-cultural) falls neatly into thanks are due to the BBS referees, who provided an especially
place. We structure our worlds and actions so that most rich and challenging set of comments and suggestions. The
of our sensory predictions come true. present incarnation of this article owes a great deal to their
patient and extensive help and probing. Thanks also to Karl
But this neatness hides important complexity. For,
Friston, Jakob Hohwy, Tim Bayne, Andreas Roepstorff, Chris
another effect of all that material and socio-cultural scaf-
Thornton, Liz Irvine, Matteo Colombo, and all the participants
foldingistoinducesubstantialpath-dependenceaswecon-
at the Predictive Coding Workshop (School of Informatics,
front new problems using pre-existing material tools and
University of Edinburgh, January 2010); to Phil Gerrans, Nick
inherited social structures. The upshot, or so I have Shea, Mark Sprevak, Aaron Sloman, and the participants at the
argued, is that a full account of human cognition cannot first meeting of the UK Mind Network held at the Faculty of
hopeto“jump”directlyfromthebasicorganizingprinciples
Philosophy, Oxford University, March 2010; to Markus
of action-oriented predictive processing to an account of Werning, and the organizers and participants of the 2010
the full (and in some ways idiosyncratic) shape of human meeting of the European Society for Philosophy and
thought andreason. Psychology, held at Ruhr-Universität Bochum, August 2010; to
Nihat Ay, Ray Guillery, Bruno Olshausen, Murray Sherman,
What emerges instead is a kind of natural alliance. The
Fritz Sommer, and the participants at the Perception & Action
basic organizing principles highlighted by action-oriented
Workshop, Santa Fe Institute, New Mexico, September 2010;
predictive processing make us superbly sensitive to the
to Daniel Dennett, Rosa Cao, Justin Junge, and Amber Ross
structure and statistics of the training environment. But
(captain and crew of the hurricane-Irene-blocked 2011
our human training environments are now so thoroughly CognitiveCruise);toMiguelEckstein,MikeGazzaniga,Michael
artificial, and our explicit forms of reasoning so deeply Rescorla, and the faculty and students at the Sage Center for
infected by various forms of external symbolic scaffolding, the Study of Mind, University of California, Santa Barbara,
that understanding distinctively human cognition where,asaVisiting Fellowin September2011,Iwasprivileged
demands a multiply hybrid approach. Such an approach toroad-testmuchofthismaterial;andtoPeterKönig,JonBird,
would combine the deep computational insights coming Lee de-Wit, Suzanna Siegel, Matt Nudds, Mike Anderson,
Robert Rupert, Bill Phillips, and Rae Langton. A much earlier
from probabilistic generative approaches (among which
figure action-oriented predictive processing) with solid version of some of this material was prepared thanks to support
neuroscientific conjecture and with a full appreciation of from the AHRC, under the ESF Eurocores CONTACT
(ConsciousnessinInteraction)project,AH/E511139/1.
the way our many self-structured environments alter and
transform the problem spaces of human reason. The
NOTES
most pressing practical questions thus concern what 1. This remark is simply described as a “scribbled, undated,
might be thought of as the “distribution of explanatory aphorism” in the online digital archive of the scientist’s journal:
weight” between the accounts on offer, and approaches Seehttp://www.rossashby.info/index.html.
that explore or uncover these more idiosyncratic or evol- 2. I am greatly indebted to an anonymous BBS referee for
utionary path-dependent features of the human mind, encouraging me to bring these key developments into clearer
andthecomplextransformativeeffectsofthesocio-cultural (bothhistoricalandconceptual)focus.
cocoonin which itdevelops. 3. The obvious problem was that this generative model itself
Questions also remain concerning the proper scope of neededtobelearnt:somethingthatwouldinturnbepossibleif
a good recognition model was already in place, since that could
the basic predictive processing account itself. Can that
provide the right targets for learning the generative model. The
account really illuminate reason, imagination, and action-
solution (Hinton et al. 1995) was to use each to gradually boot-
selection in all its diversity? What do the local approxi- strap the other, using the so-called “wake-sleep algorithm”–a
mations to Bayesian reasoning look like as we depart computationallytractableapproximationto“maximumlikelihood
furtherandfurtherfromthesafeshoresofbasicperception learning”asseenintheexpectation-maximization(EM)algorithm
andmotor control? Whatnewformsofrepresentation are ofDempsteretal.(1977).Despitethis,theHelmholtzMachine
thenrequired,andhowdotheybehaveinthecontextofthe remained slow and unwieldy when confronted with complex
BEHAVIORALANDBRAINSCIENCES(2013)36:3 201
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
problemsrequiringmultiplelayersofprocessing.Butitrepresents impact of the driving sensory signal is effectively altered so that
animportantearlyversionofanunsupervisedmultilayerlearning the best interpretation flips. Attention thus engages the same
device,or“deeparchitecture”(Hinton2002;2007b;2010;Hinton (broadlyBayesian)mechanism,butviaadifferent(andpotentially
&Salakhutdinov2006;Hintonetal.2006;forreviews,seeBengio lessautomatic)route.Thisalsoexplains,withinthepresentframe-
2009;Hinton2007a). work,whywehavemuchmorecontroloverthealternationratein
4. This names the probability of an event (here, a worldly thecaseofambiguousfigures(asdemonstratedbyMeng&Tong
cause), given some set of prior beliefs and the evidence (here, 2004).
the currentpattern of sensorystimulation). For our purposes,it 12. Thisisalsoknown(see,e.g.,Fristonetal.2009)as“active
thus names the probability of a worldly (or bodily) cause, con- inference.” I coin “action-oriented predictive processing” as it
ditionedonthesensoryconsequences. makesclearthatthisisanaction-encompassinggeneralizationof
5. In speaking of “predictive processing” rather than resting the (hierarchical) predictive coding story about perception. It
withthemorecommonusage“predictivecoding,”Imeantohigh- also suggests (rightly) that action becomes conceptually primary
lightthefactthatwhatdistinguishesthetargetapproachesisnot in these accounts, since it provides the only way (once a good
simplytheuseofthedatacompressionstrategyknownaspredic- world model is in place and aptly activated) to actually alter the
tive coding. Rather, it is the use of that strategy in the special sensory signal so as to reduce sensory prediction error–see
contextofhierarchicalsystemsdeployingprobabilisticgenerative Friston (2009, p. 295). In addition, Friston’s most recent work
models.Suchsystemsexhibitpowerfulformsoflearningandare on active inference looks to involve a strong commitment (see
ableflexiblytocombinetop-downandbottom-upflowsofinfor- especially Friston 2011a) to the wholesale replacement of value
mationwithinamultilayercascade. functions,consideredasdeterminantsofaction,withexpectations
6. In what follows, the notions of prior, empirical prior, and (“priorbeliefs,”thoughnotethat“belief”hereisverybroadlycon-
priorbeliefareusedinterchangeably,giventheassumedcontext strued)aboutaction.Thisisaninterestingandchallengingsugges-
ofahierarchicalmodel. tionthatgoesbeyondclaimsconcerningformalequivalenceand
7. Because these proposals involve the deployment of top- even beyond the observations concerning deep conceptual
downprobabilisticgenerativemodelswithinamultilayerarchitec- relations linking action and perception. “Action-oriented predic-
ture,itistheorganizationalstructureoftheneocortexthatmost tive processing,” as I shall use the term, remains deliberately
plausibly provides the requisite implementation. This is not to agnosticonthisimportantmatter(seealsosect.5.1).
rule out related modes of processing using other structures, for 13. Inoteinpassingthatthisradicalviewresonateswithsome
example, in nonhuman animals, but simply to isolate the “best influential philosophical work concerning high level (reflective)
fit.” Nor is it to rule out the possibility that, moment-to- intentionsandactions:specifically,Velleman’s(1989)accountof
moment, details of the large-scale routing of information flow practical reasoning in which intentions to act are depicted as
within the brain might depend on gating effects that, although self-fulfillingexpectationsaboutone’sownactions(see,e.g.,Vel-
cortically mediated, implicate additional structures and areas. leman1989,p.98).
For some work on such gating effects among cortical structures 14. Themostfundamentalaspectoftheappealtofreeenergy,
themselves,seedenOudenetal.(2010). Friston claims, is that it provides an organismically computable
8. Ihaveadoptedtheneuroanatomistpracticeoflabelingcon- window on surprise (i.e., surprisal) itself, since “…surprise
nections simply as “backward” and “forward” so as to avoid the cannot be quantified by an agent, whereas free energy can”
functional implications of the labels “feedback” and “feedfor- (Friston 2010, p. 55). I read this as meaning, in the present
ward.” This is important in the context of predictive processing context, that prediction error is organismically computable,
models,sinceitisnowtheforwardconnectionsthatarereallypro- sinceitrepresents(aswesawinsect.1.2)aninternallycalculable
viding(byconveyingpredictionerror)feedbackonthedownward- quantity.This,however,isnotafeatureIwillattempttoexplorein
flowingpredictions–seeFriston(2005),Hohwy(2007),anddis- thepresenttreatment.
cussion in section 2.5 of the present article. Thanks to one of 15. Foraninterestingcritiqueofthemostambitiousversionof
theBBSreviewersforthishelpfulterminologicalsuggestion. the free energy story, see section 5.1 in Gershman and Daw
9. Noticethatanerrorsignalthusconstruedishighlyinforma- (2012).
tive, and in this respect it differs from the kinds of error signal 16. Thiskindofefficiency,asoneoftheBBSrefereesnicely
familiarfromcontroltheoryandsystemsengineering.Thelatter noted, is something of a double-edged sword. For, the obvious
aremostlysimplesignalsthatrepresenttheamountoferror/mis- efficiencies in forwardprocessing areherebought at the cost of
match. The former (“prediction error signals”) are much richer the multilevel generative machinery itself: machinery whose
and carry information not just about the quantity of error but implementationandoperationrequiresawholesetofadditional
(in effect) about the mismatched content itself. It is in this connections to realize the downward swoop of the bidirectional
sense that the residual errors are able, as it is sometimes said hierarchy.Thecasefor predictiveprocessing isthusnotconvin-
(Feldman & Friston 2010) to stand in for the forward flow of cingly made on the basis of “communicative frugality” so much
sensory information itself. Prediction errors are as structured asuponthesheerpowerandscopeofthesystemsthatresult.
and nuanced in their implications as the predictions relative to 17. In personal correspondence, Lee de-Wit notes that his
which they are computed. (Thanks to an anonymous BBS usage follows that of, for example, Murray et al. (2004) and
refereeforsuggestingthisimportantclarification). Dumoulin and Hess (2006), both of whom contrast “predictive
10. Hosoyaetal.herebuildonearlierworkbySrinivasanetal. coding” with “efficient coding,” where the former uses top-
(1982).Seealsoinformation-theoretictreatmentsofmutualinfor- down influence to subtract out predicted elements of lower-
mation,suchasLinsker(1989).Foralargerperspective,seeClif- level activity, and the latter uses top-down influence to enhance
fordetal.(2007). or sharpen it. This can certainly make it look as if the two
11. What about more common forms of perceptual alterna- stories (subtraction and sharpening) offer competing accounts
tion, such as those induced by ambiguous figures like the of,forexample,fMRIdatasuchasMurrayetal.(2002)showing
Necker cube or the duck-rabbit? In these instances, the gross a dampening of response in early visual areas as higher areas
driving sensory input is exactly the same for the two percepts, settled into an interpretation of a shape stimulus. The accounts
soswitchingcannotbeinducedsimplybytheongoinginfluence would be alternatives, since the dampening might then reflect
of the unexplained portions of bottom-up input. Instead, such eitherthesubtractionofwell-predictedpartsoftheearlyresponse
casesarebestexplainedbyasimilarprocessinvolvingattentional (“predictivecoding”)orthequashingoftherestoftheearlysignal
modulations(whichmay,butneednot,bedeliberate).Attention and the attendant sharpening of the consistent elements. The
(see sect. 2.3) serves to increase the gain on select error units. models I am considering, however, accommodate both subtrac-
By altering the gain on some error units and not others, the tionandsharpening(seemaintextfordetails).Thisistherefore
202 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
aninstance(seesect.5.1)inwhichmoreradicalelementsofthe 29. Foranexcellentdiscussionofthisrecentwork,seede-Wit
target proposals (here, the subtracting away of predicted signal etal.(2010).
elements) turn out, on closer examination, to beconsistent with 30. Leede-Wit(personalcommunication)raisestheintriguing
morefamiliareffects(suchastop-downenhancement). possibilitythatthedistinctionbetweenencodingerrorandencod-
18. The consistency between selective sharpening and the ing representational content might be realized in alternate
dampening effects of “explaining away” also makes it harder– dynamics of the very same neuronal substrate, with early
thoughnotimpossible–toteaseaparttheempiricalimplications responsesencodingerrorandlateronessettlingintoarepresen-
ofpredictivecodingand“evidenceaccumulation”accountssuch tation of something like “agreed content.” In a related vein,
as Gold and Shadlen’s (2001)–for a review, see Smith and Rat- Engeletal.(2001)discussthepotentialroleofneuralsynchrony
cliff (2004). For an attempt to do so, see Hesselmann et al. as a means of implementing top-down influence on early
(2010). processing.
19. Inthis(2008a)treatmentSpratlingfurtherarguesthatthe 31. These terms, according to a memoir by Wendy Lehnert
formsofhierarchicalpredictivecodingaccountwehavebeencon- (2007), were introduced by Bob Abelson as part of a keynote
sideringaremathematicallyequivalenttosomeformsof“biased address to the 3rd Annual Meeting of the Cognitive Science
competition” model, but that they nonetheless suggest different Societyin1981.
claims concerning neural implementation. I take no position on 32. The hierarchical predictive coding family of models that
theseinterestingclaimshere. (along with their extensions to action) form the main focus of
20. Foranearlyoccurrenceofthisproposalintheliteratureof the present treatment are not, in my view, happily assimilated
cognitiveneuroscience,seeAndersonandVanEssen(1994).That toeitherofthesecamps.TheyclearlyshareBayesianfoundations
treatmentalsoanticipates(althoughitdoesnotattempttomodel) withthe“pure”structuredprobabilisticapproacheshighlightedby
the crucial role of top-down expectations and dynamic forms of Griffithsetal.,buttheircomputationalrootslie(aswesawinsect.
Bayesianinference. 1.1)inworkonmachinelearningusingartificialneuralnetworks.
21. Thanks to one of the BBS reviewers for suggesting this Importantly, however, hierarchical predictive processing models
importantnuancetothetemporalstory. now bring “bottom-up” insights from cognitive neuroscience
22. Thismeansthatweneedtobeverycarefulwhengeneral- intoincreasinglyproductivecontactwiththosepowerfulcompu-
izing from ecologically strange laboratory conditions that effec- tationalmechanismsoflearningandinference,inaunifyingfra-
tively deprive us of such ongoing context. For some recent meworkable(asGriffithsetal.correctlystress)toaccommodate
discussion, see Kveraga et al. (2007), Bar (2007), Barrett and averywidevarietyofsurfacerepresentationalforms.Moreover,
Bar(2009),andFabre-Thorpe(2011). suchapproachesarecomputationallytractablebecauselocal(pre-
23. An interesting alternative to the inference-rich Bayesian diction-errorminimizing)routinesarebeingusedtoapproximate
account is suggested by Purves and Lotto (2003), who offer a Bayesian inference. For some excellent antidotes to the appear-
more direct account in terms of the bare statistics of image- ance of deep and irreconcilable conflict hereabouts, see
sourcerelationships.ForacomparisonwithBayesianapproaches, Feldman(2010)andLee(2010).
seeHoweetal.(2006). 33. We glimpse the power of the complex internal statistical
24. Some of the earliest work depicting perception and per- relationshipsenshrinedinhumanlanguagesinLandauerandcol-
ceptualillusionsasinvolvingBayesian inferenceis thatof Hans- leagues’fascinatingworkon“latentsemanticanalysis”(Landauer
Georg Geissler, working in the 1970s in East Germany. This &Dumais1997;Landaueretal.1998).Thisworkrevealsthevast
work, unfortunately, was not widely known outside the DDR amountofinformationnowembodiedinstatistical(butdeep,not
(DeutscheDemokratischeRepublik)butsee,forexample,Geiss- firstorder)relationsbetweenwordsandthelargercontexts(sen-
ler(1983;1991). tences and texts) in which they occur. The symbolic world we
25. I here adapt, merely for brevity of exposition, a similar humansnowimmerseourselvesinisdemonstrablychock-fullof
examplefromFriston(2002,p.237). information about meaning-relations in itself, even before we
26. Technically,thereisalwaysasinglehierarchicalgenerative (orourbrains)attempttohookanyofittopracticalactionsand
model in play. In speaking here of multiple internal models, I thesensoryworld.
mean only to flag that the hierarchical structure supports many 34. For example, Stanislas Dehaene’s (2009) “neural re-
levelsofprocessingwhichdistributethecognitivelaborbybuild- cycling”accountofthecomplexinterplaybetweenneuralprecur-
ingdistinct“knowledgestructures”thatspecializeindealingwith sors, cultural developments, and neural effects within the key
differentfeaturesandproperties(soastopredicteventsandregu- cognitivedomainsofreadingandwriting.
laritiesobtainingatdifferingtemporalandspatialscales). 35. Such hyperpriors could, for example, be “built-in” by
27. Theclearlineagehereiswithworkinconnectionismand “winner-takes-all” forms of lateral (within layer) cortical inhi-
recurrent artificial neural networks (see, e.g., Rumelhart et al. bition–seeHohwyetal.(2008,p.691).
1986, and early discussions such as Churchland 1989; Clark 36. AshelpfullypointedoutbyoneoftheBBSreferees.
1989). What is most exciting about the new proposals, it seems 37. Theintroductionofhyperpriorsintotheseaccountsisjust
to me, is that they retain many of the insights from this lineage aconvenientwayofgesturingattheincreasinglevelsofabstrac-
(which goes on to embrace work on Helmholz machines and tion at which prior expectations may be pitched. Some expec-
ongoing work on “deep architectures”– see sect. 1.1) while tations, for example, may concern the reliability or shape of the
making explicit contact with both Bayesian theorizing and con- space of expectations itself. In that sense, hyperpriors, although
temporaryneuroscientificresearchandconjecture. they can sound quite exotic, are in no way ad hoc additions to
28. Sucheffectshavelongbeenknownintheliterature,where the account. Rather, they are just priors in good standing (but
they emerged in work on sensory habituation, and most promi- maintaining the distinction makes it a bit easier to express and
nently in Eugene Sokolov’s pioneering studies of the orienting compute some things). Like all priors, they then impact system
reflex. Sokolov concluded that the nervous system must learn dynamicsinvariousways,accordingtotheirspecificcontents.
anddeploya“neuronalmodel”thatisconstantlymatchedtothe 38. This worry (concerning the appeal to hyperpriors) was
incoming stimulus, since even a reduction in the magnitude of first drawn to my attention by Mark Sprevak (personal
some habituated stimulus could engage “dishabituation” and communication).
prompt a renewed response. See Sokolov (1960). See also 39. Amuchbetterunderstandingofsuchmultipleinteracting
Bindra(1959),Pribram(1980),andSachs(1967).Hereandelse- mechanisms (various slow neuromodulators perhaps acting in
whereIamextremelygratefultooneoftheBBSreferees,whose complex concert with neural synchronization) is now needed,
extensive knowledge of the history of these ideas has greatly along with a thorough examination of the various ways and
enrichedthepresenttreatment. levelsatwhichtheflowofpredictionandthemodulatingeffects
BEHAVIORALANDBRAINSCIENCES(2013)36:3 203
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
oftheweightingofpredictionerror(precision)maybemanifest 50. Theempiricalbetisthus,asEgnerandcolleaguesrecently
(for some early forays, see Corlett et al. 2010; see also Friston putit,that“theencodingofpredictions(basedoninternalforward
& Kiebel 2009). Understanding more about the ways and levels models)andpredictionerrorsmaybeaubiquitousfeatureofcog-
atwhichtheflowandimpactofpredictionerrormaybemanipu- nitioninthebrain…ratherthanacuriosityofrewardlearning…
latedisvitallyimportantifwearetoachieveabetterunderstand- ormotorplanning”(Egneretal.2010,p.16607).
ingofthemultiplewaysinwhich“attention”(hereunderstood– 51. When brought under the even-more-encompassing
seesect.2.3–asvariouswaysofmodifyingthegainonprediction umbrellaofthe“freeenergyprinciple”(sect.1.6),thecombined
error)mayoperatesoastobiasprocessingbyflexiblycontrolling ambition is formidable. If these accounts were indeed to mesh
thebalancebetweentop-downandbottom-upinfluence. in the way Friston (2010) suggests, that would reveal the very
40. There are probably milder versions of this everywhere, deepestoflinksbetweenlifeandmind,confirmingandextending
both in science (Maher 1988) and in everyday life. We tend to theperspectiveknownas“enactivist”cognitivescience(see,e.g.,
see what we expect, and we use that to confirm the model that DiPaolo2009;Thompson2007;Varelaetal.1991).
is both generating our expectations and sculpting and filtering
ourobservations.
41. Intriguingly,theauthorsarealsoabletoapplythemodelto
onenon-pharmacologicalintervention:sensorydeprivation.
42. This need not imply an ability deliberately to engage in
Open Peer Commentary
such a process of self-generation. Suchrich, deliberate forms of
imagining may well require additional resources, such as the
language-driven forms of cognitive “self-stimulation” described
inDennett(1991),Chapter8.
43. Itisperhapsworthremarkingthat,deepdualitynotwith-
standing, nothing in the present view requires that the system,
The problem with brain GUTs: Conflation of
when engaged in imagery-based processing, will typically
support the very same kinds of stability and richness of experi- different senses of “prediction” threatens
enced detail that daily sensory engagements offer. In the metaphysical disaster
absence of the driving sensory signal, no stable ongoing infor-
mation about low-level perceptual details is there to constrain doi:10.1017/S0140525X1200221X
theprocessing.Asaresult,thereisnoobviouspressuretomain-
tainorperhapseventogenerate(seeReddyetal.2010)astable MichaelL.AndersonaandTonyChemeroa,b
hypothesisatthelowerlevels:thereissimplywhatevertask-deter- aDepartmentofPsychology,Franklin&MarshallCollege,Lancaster,PA
mineddownwardpressuretheactivehigher-levelencodingexerts. 17604-3003;bDepartmentsofPhilosophyandPsychology,Universityof
44. Common features include the appeal to forward models Cincinnati,Cincinnati,OH45221.
and the provision of mechanisms (such as Kalman filtering–see michael.anderson@fandm.edu http://www.agcognition.org
Friston 2002; Grush 2004; Rao & Ballard 1999) for estimating tony.chemero@fandm.edu http://edisk.fandm.edu/tony.chemero
uncertainty and (thus) flexibly balancing the influence of prior
expectations and driving sensory inputs. Indeed, Grush (2004, Abstract:Clarkappearstobemovingtowardepistemicinternalism,which
heoncerightlyrejected.Thisresultsfromadoubleover-interpretationof
p. 393) cites the seminal predictive coding work by Rao and
predictivecoding’ssignificance.First,Clarkarguesthatpredictivecoding
B w a it l h lar t d he (19 b 9 ro 9 a ) d a e s r a e n m a u c la c t o o u r nt fra o m f e v w isu or a k l . p I r n oce a s d s d in it g io c n o , m G p r a u ti s b h l ’ e s o re ff a e d r s s i a ts G e r p a i n s d tem Un ic ifi i e m d p T or h t e , o p r e y r ( h G ap U s T e ) v o e f n b c r o a n in fla fu ti n n c g ti c o a n u . s S a e l c a o n n d d e , p h i e st o e v m er ic -
accountofperceptionas“environmentalemulation”(seesection
mediators.Weargueinsteadforapluralityofneurofunctionalprinciples.
5.2 of Grush 2004) looks highly congruent with the depiction
(Friston 2003 and elsewhere) of perception as reconstructing Thepredictivecodingmodelofbrainfunctionisadeeplyimpor-
the hidden causes structuring the sensory signal. Where the tant development for neuroscience, and Andy Clark does the
accounts seem to differ is in the emphasis placed on prediction field a service with this careful, thorough, and accessible
error as (essentially) a replacement for the sensory signal itself, review. We are concerned, however, that Clark’s account of
the prominence of a strong Bayesian interpretation (using the the broad implications of model–and in particular his attempt
resourcesof“empiricalBayes”appliedacrossahierarchyofpro- toturnitintoaGrandUnifiedTheory(GUT)ofbrainfunction–
cessing stages), and the attempted replacement of motor com- may be at least four dogmas of empiricism out-of-date (Ander-
mands by top-down proprioceptive predictions alone (for a nice son 2006; Chemero 2009; Davidson 1974; Quine 1951). Clark’s
treatment of this rather challenging speculation, see Friston adoption of a thoroughgoing inferential model of perception,
2011a). It would be interesting (although beyond the scope of his neo-neo-Kantian view of the relationship between mind
thepresenttreatment)toattemptamoredetailedcomparison. and world, and his insistence that every sensory modality oper-
45. An account of such transformed uses might be possible ates according to the same underlying causal-epistemic logic–
within the action-oriented predictive coding framework. The all (individually and severally) threaten to return us to the bad
key to such an account would, I conjecture, be to consider the old days of epistemic internalism (e.g., Rorty 1979) that the
potential of the substituting technologies to deliver patterns of field, including the author of Being There (Clark 1997), rightly
sensorystimulationthatturnouttobebestpredictedbytheuse left behind.
of the very same intermediate-level generative models that HerewesuggestthatClark(althoughnothealone)hasmadean
characterizethesubstitutedmodality.SeealsoPrinz(2005). errorinconflatingdifferentsensesof“prediction”thatoughttobe
46. Thanks to Susanna Siegel for useful discussion of this kept separate. The first sense of “prediction” (henceforth
point. prediction ) is closely allied with the notion of correlation, as
1
47. Forsomefurtherdiscussion,seeFriston(2005,p.822). whenwecommonlysaythatthevalueofonevariable“predicts”
48. This way of describing things was suggested by my col- another (height predicts weight; education predicts income;
leagueMattNudds(personalcommunication). etc.).Prediction isessentiallymodel-free,anditcomesdownto
1
49. For the general story about combining specialization and simplerelationshipsbetweennumbers.Thesecondsenseof“pre-
integration, see Friston (2002) and discussion in Hohwy (2007). diction”(prediction ),incontrast,isalliedinsteadwithabductive
2
Foramorerecentaccount,includingsomeexperimentalevidence inferenceandhypothesistesting.Prediction involvessuchcogni-
2
concerning the possible role of prediction error in modulating tivelysophisticatedmovesasinferringthe(hidden)causesofour
inter-areacoupling,seedenOudenetal.(2010). currentobservations,andusingthathypothesistopredictfuture
204 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
observations,bothaswepassivelymonitorandactivelyintervene if the world that we experience and think about is a projection
intheworld.Itistheoryladenandmodel-rich. of our minds. Western philosophy has been down this lonely
We have no trouble believing that a fundamental part of our and unproductive road many times. It would be a shame if the
exquisite attunement to environmental contingencies involves spotlight that Clark helpfully shines on this innovative work in
sensitivity to (and the ability to make use of) inter- and cross- neuroscienceweretoleadusbackthere.
modalcorrelationsinsensorysignals.Sensitivitytotemporaland
spatial (e.g., across the retina) correlations could underwrite
manyfunctionaladvantages,includingtheonesClarkhighlights,
such as reducing sensory bandwidth and drawing attention to
salient departures from expectations. In this sense we share Attention and perceptual adaptation
Clark’s belief that predictive coding is likely to be a ubiquitous
1
and fundamental principle of brain operation; neural nets are doi:10.1017/S0140525X12002245
especiallygoodatcomputingcorrelations.
However, we don’t think that evidence for predictive coding NedBlockaandSusannaSiegelb
1
warrants a belief in predictive coding. And it is only from aDepartmentofPhilosophy,NewYorkUniversity,NewYork,NY10003;
2
predictive codingthatmanyofClark’slargerimplicationsfollow. bDepartmentofPhilosophy,HarvardUniversity,Cambridge,MA02138.
2
Clark makes the move from predictive coding to predictive ned.block@nyu.edu ssiegel@fas.harvard.edu
1 2
coding largely by relying on an innovative account of binocular http://www.nyu.edu/gsas/dept/philo/faculty/block/
rivalryofferedbyHohwyetal.(2008).InClark’ssomewhatsim- http://www.people.fas.harvard.edu/∼ssiegel/
plified version of their proposal, the experienced alternation
Abstract: Clark advertises the predictive coding (PC) framework as
between seeing the face stimulus presented to one eye and the
applyingto a widerange of phenomena, includingattention.We argue
house stimulus presented to the other is explained by a knowl-
that for many attentional phenomena, the predictive coding picture
edge-drivenalternationbetweenrivalhypotheses(faceatlocation
eithermakesfalsepredictions,orelseitoffersnodistinctiveexplanation
x,houseatlocationx)neitherofwhichcanaccountforallofthe ofthosephenomena,therebyreducingitsexplanatorypower.
observations.AccordingtoClark,thereasontheimagesdon’tfuse
andleadtoavisualsteady-stateisbecauseweknowthatfacesand According to the predictive coding view, at every level of the
housescan’tcoexistthatway.Ifthisknowledge-drivenaccountis visual/corticalhierarchy,therearetwokindsofunits:errorunits
thecorrectwaytounderstandsomethingasperceptuallybasicas and representation units. Representations propagate downward
binocularrivalry,thenpredictive codingcanbegintolooklikea in the visual hierarchy whereas error signals propagate upward.
2
plausible, multilevel and unifying explanation of perception, Errorinthissensemightbebettercalled“discrepancy,”sinceit
actionandcognition:perceptioniscognitiveandinferential;infer- is the discrepancy betweenwhat the visual systempredicts (at a
enceperceptual;andallofitisactive. givenlevel)andwhatisrepresentedatthatlevel.Clarkadvertises
Butwhilethepredictive codingmodelofbinocularrivalrymay thepredictivecoding(PC)frameworkasapplyingtoawiderange
2
beconsistentwithmuchofthedata,itisfarfromtheonlypossible ofphenomena,includingattention,whichClarksays“isachieved
explanationofthephenomenon.Hereisanoutlineofareasonable byalteringthegain(the‘volume,’touseacommonanalogy)on
predictive coding account: Given the generally high-level of theerror-units”(sect.2.3,para.6).Wearguethatformanyatten-
1
cross-correlation in the inputs of our two eyes, the left eye tional phenomena, the predictive coding picture either makes
signal wouldpredict greater correlationwith the righteye than false predictions, or else it offers no distinctive explanation of
1
iscurrentlyinevidence;thiswouldweakentheinputsassociated thosephenomena,therebyreducingitsexplanatorypower.
withthelefteye,unmaskingtheinputsassociatedwiththeright Considerabasicresultinthisarea(Carrascoetal.2004),which
eye, which would predict cross-correlated left eye signals . . . is that attention increases perceived contrast by enhancing “the
1
and so on. However far this particular proposal could be taken, representationofastimulusinamannerakintoboostingitsphys-
the point is one can account for the phenomenon with low- ical contrast” (Ling & Carrasco 2006, p. 1243). A cross-modal
level, knowledge-free, redundancy-reducing inhibitory inter- study using auditory attention-attractors (Störmer et al. 2009)
actions between the eyes (see, e.g., Tong et al. 2006). After all, showedthatthecontrast-boostingeffectcorrelatedwithincreased
binocularrivalryalsooccurswithorthogonaldiffractiongratings, activity in early stages of visual processing that are sensitive to
indicating that high-level knowledge of what is visually possible differences in contrast among stimuli. The larger the cortical
needn’t be the driver of the visual oscillation; humans don’t effect,thelargertheeffectonperceivers’judgments.Increasing
havehigh-levelknowledgeabouttheinconsistencyoforthogonal thecontrastofastimulushasaneffectonthemagnitudeofper-
gratings.Ingeneral,althoughnoteverypairofstimuliinducebis- ceptualadaptationtothatstimulus,causinggreaterthresholdacti-
tableperceptions,thedistinctionbetweenthosethatdoandthose vationin thetiltafter-effectand longerrecoverytime.Lingand
thatdon’tappearstohavelittletodowithknowledge(seeBlake Carrasco(2006)showedthatattendingtoastimuluswhileadapt-
[2001] for a review). Adopting a predictive coding account is a ingtothatstimulushasthesameeffectasincreasingthecontrast
2
theoretical choice not necessitated by the evidence. It is hardly oftheadaptingstimulus.Afterattendingtotheadaptor(70%con-
aninconsequentialchoice. trast),thecontrastsensitivityofallobserverswasequivalenttothe
Usingpredictive codingasaGUTofbrainfunction,asClark effectofadaptingtoa81–84%contrastadaptor.
2
proposes,isproblematicforseveralreasons.Thefirstproblemis HowdotheseresultslookfromaPCperspective?Supposethat
with the very idea of a grand unified theory of brain function. attimet ,theperceiverisnotattendingtotheleftsideofspace
1
There is every reason to think that there can be no grand butnonethelessseesastripedgridontheleftwithapparentcon-
unifiedtheoryofbrainfunctionbecausethereiseveryreasonto trastof70%.Becausethereisnomovementorotherchange,at
think that an organ as complex as the brain functions according timet ,thevisualsystempredictsthatthepatchwillcontinueat
2
to diverse principles. It is easy to imagine knowledge-rich 70%. But at t the perceiver attends to the patch, raising the
2
predictive codingprocessesemployedingeneratingexpectations apparentcontrastto,say,82%.Nowatt thereisanerror,adis-
2 2
thatwewillconfrontajarofmustarduponopeningtherefriger- crepancybetweenwhatispredictedandwhatis“observed.”Since
atordoor,whileknowledge-freepredictive codingprocesseswill thePCviewsaysattentionisturningupthevolumeontheerror
1
be used to alleviate the redundancy of sensory information. We representations, it predicts that at t the signal (the represented
3
should be skeptical of any GUT of brain function. There is also contrast) should rise even higher than 82%. But that does
a problem more specific to predictive coding as a brain GUT. nothappen.
2
Taking all of our experience and cognition to be the result of Therearetwoimportantlessons.First,theinitialchangesdue
high-level, knowledge-rich predictive coding makes it seem as toattendingcomebeforethereisanerror(att intheexample),
2 2
BEHAVIORALANDBRAINSCIENCES(2013)36:3 205
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Figure1(Block&Siegel). Adisplayofoneofthetexturedfigures(thesquareontheright)usedbyYeshurunandCarrasco(1998).The
square appeared at varying degrees of eccentricity. With low resolution in peripheral locations, attention improved detection of the
square;butwithhighresolutionincentrallocations,attentionimpaireddetection.
so the PC viewpoint cannot explain them. Second, the PC view pattern as occupying a larger area. Here too, predictive coding
makes the false prediction that the changes due to attending offersnodistinctiveexplanation.
willbemagnified. The facts of attention and adaptation do not fit well with the
SometimesPCtheoristsassumetheerrorsignalisequaltothe predictive coding view or any picture based on how “sensory
input.Perhapsthisidentificationmakessomesenseifthepercei- neuronsshouldbehave”(Lochmannetal.2012)ratherthanthe
ver’s visual system has no “expectations,” say because the eyes facts of how they do behave. Without a distinctive explanation
have just opened. But once the eyes have opened and things in of these facts,the explanatory promises of predictivecoding are
the environment are seen, it makes no sense to take the error overdrawn.
signaltobethesensoryinput.
ThePCpicturealsoseemsto lackadistinctiveexplanationof
why attention increases spatial acuity. Yeshurun and Carrasco
(1998)showedthatincreasedattentioncanbedetrimentaltoper- Attention is more than prediction precision
formancewhenresolutionwasalreadyontheborderoftoohigh
forthescaleof thetexture,increasingacuitytothepointwhere doi:10.1017/S0140525X12002324
thesubjectdoesnotseetheforestforthetrees.Toolittleatten-
tioncanalsobedetrimental,makingithardertoseethetrees.Yes- HowardBowman,aMarcoFiletti,aBradWyble,band
hurunandCarrascovariedresolutionofperceptionbypresenting ChristianOliversc
texturedsquares(suchastheoneinFig.1)atdifferenteccentri- aCentreforCognitiveNeuroscienceandCognitiveSystems,andtheSchoolof
cities (the more foveal, the better the resolution). But they also Computing,UniversityofKentatCanterbury,KentCT27NF,UnitedKingdom;
varied resolution by manipulating the focus of spatial attention: bDepartmentofPsychology,SyracuseUniversity,Syracuse,NY13244;
With the eyes focused at the center, they attracted attention to cDepartmentofCognitivePsychology,FacultyofPsychologyandEducation,
the left or to the right. Combining contributions to resolution VUUniversityAmsterdam,1081BTAmsterdam,TheNetherlands.
from eccentricity and attention, they found that there was an H.Bowman@kent.ac.uk M.Filetti@kent.ac.uk
optimallevelofresolutionfordetectingthesquare,withdetection bwyble@gmail.com c.n.l.olivers@vu.nl
falling off on both ends. Single cell recordings in monkey visual http://www.cs.kent.ac.uk/people/staff/hb5/
cortex reveal shrinking receptive fields (the area of space that a http://www.cs.kent.ac.uk/people/rpg/mf266/
neuron responds to) in mid-to-high level vision, specifically in www.bradwyble.com http://olivers.cogpsy.nl
V4,MT,andLIP,andthisshrinkageinreceptivefieldsisacontri-
butortoexplainingtheincreaseinacuity(Carrasco2011). Abstract:Acornerstoneofthetargetarticleisthat,inapredictivecoding
framework,attentioncanbemodelledbyweightingpredictionerrorwitha
DoesthePCframeworkhaveadistinctiveexplanationofatten-
tionaleffectsonspatialacuity,intermsof“gaininerror-units”?If, measureofprecision.Wearguethatthisisnotacompleteexplanation,
especially in the light of ERP (event-related potentials) data showing
duetothelevelofacuity,onedoesnotseethesquare,thenthe
large evoked responses for frequently presented target stimuli, which
predictionofnosquarewillbeconfirmed,andtherewillbenodis-
thusarepredicted.
crepancy(“error”)tobemagnified.Sincethegaininerrorunitsis
theonlydistinctiveresourceofthePCviewforexplainingatten- ThetargetarticlebyAndyClarkchampionspredictivecodingas
tional phenomena, the view seems to have no distinctive expla- a theory of brain function. Perception is the domain in which
nation of this result either. Can the predictive coding point of many of the strongest claims for predictive coding have been
view simply borrow Carrasco’s explanation? That explanation is made, and we focus on that faculty. It is important to note
a matter of shrinkage in receptive fields of neurons in the rep- that there are other unifying explanations of perception, one
resentation nodes, not anything to do with prediction error, so beingthatthebrainisasaliencedetector,withsaliencereferring
the predictive coding point of view would have to concede that broadlytorelevancetoanorganism’sgoals.Thesegoalsreflecta
attention can act directly on representation nodes without a short-termtaskset(e.g.,searchingacrowdforafriend’sface),or
detourthrougherrornodes. moreingrained,perhapsinnatemotivations(e.g.,avoidingphys-
Finally, attention to certain items–for example, random dot icalthreat).Aprominentperspectiveis,exactly,thatoneroleof
patterns–makes them appear larger. Anton-Erxleben et al. attention is to locate and direct perception towards, salient
(2007) showed that the size of the effect is inversely related to stimuli.
thesizeofthestimulus,explainingtheresultintermsofreceptive The target article emphasises the importance of evoked
fieldshift(suchshiftsarealsoobservedfromsinglecellrecordings responses, particularly EEG event-related potentials (ERPs), in
inmonkeyvisualareas;Womelsdorfetal.2006).Thisexplanation adjudicating between theories of perception. The core idea is
depends on the retinotopic and therefore roughly spatiotopic thatthelargerthedifferencebetweenanincomingstimulusand
organization common to many visual areas–not on error units. the prediction, the larger the prediction error and thus the
Neurons whose receptive fields lie on the periphery of the larger the evoked response. There are indeed ERPs that are
pattern shift their receptive fields so as to include the pattern, clearlymodulatedbypredictionerror,forexample,theMismatch
moving the portion of the spatiotopically represented space to Negativity(evokedbydeviationfromarepeatingpatternofstimu-
include the pattern, resulting in the representation of the luspresentation),theN400(evokedbysemanticanomalies),and
206 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
P3 responses to oddball stimuli. In addition, stimuli that violate obtain classically predictive or anti-predictive (i.e., salience
our expectations do often capture attention (Horstmann 2002), sensitive) patterns, and both patterns are found experimentally.
consistent with predictive coding. However, such surprise- Thus, the theory really requires a computational explanation of
driven orienting is justone aspect of attention, and we question howthemodulatoryeffectofprecisionvariesacrossexperimental
whether prediction error provides an adequate explanation for contexts, otherwise there is a risk that it becomes effectively
attentionalfunctioningasawhole. unfalsifiable.
A central aspect of attention, which makes perception highly Second,predictionerrorispassedbackupthesensorypathway
adaptive, is that it can purposefully select and enhance expected so that parameters can be adjusted to improve predictions (i.e.,
stimuli. This arises when an arrow cues where a target will learning), and the amount parameters change is a function of
appear,oraverbalinstructionindicatesitwillbered.However, the size of the precision-weighted prediction error. This,
in this context, ERPs are largest to the target stimuli (P1, N1, however, raisesafurther problemwitha big precision-weighted
N2pc,P3;Luck2006),inlinewithasaliencyaccount.Suchheigh- predictionerrorbeinggeneratedthroughalarge(attention-gov-
tenedresponsestopredictedstimulidonotseemtositcomforta- erned) precision, when observed and predicted are similar.
blywithpredictivecoding.AsClarkhighlights,resolutionofthis Specifically, in this case, the parameters should not change and
conundrum has, in analogy with statistical tests, focused on pre- certainly not a lot, even though precision-weighted prediction
cision (Feldman & Friston 2010). The two-sample t-test, say, is errormightmandateit.
aratioofthedifferenceoftwomeans,andvariabilityintheesti- Third, directing attention, and thus improving precision, at a
mate of that difference. Precision-weighted prediction error is pre-determined location is one thing. But what makes attention
such a test: The difference between prediction and observation soadaptiveisthatitcanguidetowardsanobjectatanunpredict-
is weighted by the precision or confidence in that difference– able location–simply on the basis of features. For example, we
that is, the inverse of variability, or, in other words, the signal could ask the reader to find the nearest word printed in bold.
fedbackupthesensorypathway,theevokedresponse,isapre- Attention will typically shift to one of the headers, and indeed
cision-weighted prediction error. Importantly, attention is pro- momentarily increase precision there, improving reading. But
posed to increase precision; that is, the brain has greater this makes precision weighting a consequence of attending. At
confidence in its estimate of disparity between predicted and leastasinterestingisthemechanismenablingstimulusselection
observed when that observation is being spot-lit by attention, inthefirstplace.Thebrainhastofirstdeployattentionbeforea
and,indeed,perceptiondoesseemmoreaccurateinthepresence precisionadvantagecanberealisedforthatdeployment.Salience
of attention (Chennu et al. 2009). This then enables predictive theory proposes that stimuli carrying a target feature become
coding to generate big bottom-up responses to expected, in the more salient and thus draw attention. But which predictive
sense of attended stimuli, as simulated for spatial attention in coding mechanism is sensitive to the match between a stimulus
(Feldman2010). featureandthetargetdescription?Intypicalvisualsearchexper-
Although predictive coding is an elegant and intriguing iments,observersarelookingfor,andfinding,thesametargetin
approach,obstaclesremaintoits beingfullyreconciledwith the trialaftertrial.Forexample,inourrapidserialvisualpresentation
saliency perspective. First, precision-weighting has a multiplica- experiments,eachspecificdistractorappearsveryrarely(onceor
tiveeffect.Hence,therehastobeadifferencebetweenobserved twice), while pre-described targets appear very frequently. We
and predicted in the first place for precision to work on. If obtained effectively no evoked response for distractors but a
observedisexactlyasexpected,howeverbigprecisionmightbe, largedeflectionforthetarget(seeFig.1).Itseemsthatpredictive
the precision-weighted prediction error will be zero. Yet classic coding mandates little if any response for this scenario. If any-
EEG experiments show that attentional enhancement of ERP thing, should the distractors not have generated the greatest
components(e.g.,P1andN1)isgreatestwhentargetsappearin response, since they were (a) rare, and (b) not matching
the same location for many trials (Van Voorhis & Hillyard predictions?
1977). One could of course argue that there is always some Evenifonecoulddeviseapredictivecodingframeworkthatallo-
error,andthattheeffectsofattentiononprecisionareextremely catedahigherprecisiontothetargetrepresentation(whichisastep
largerelativetothaterror.However,dependingupontheextent beyonditsspatialallocationinFeldman2010),itisunclearhowit
to which precision modulates the prediction error, one could could generate a massive precision-weighted prediction error
Figure1(Bowmanetal.). Ananti-predictiveERPpattern.
BEHAVIORALANDBRAINSCIENCES(2013)36:3 207
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
specificallyfortargets,wherepredictedandobservedmatchexactly. 10p.m.wefoundacellwithahuge,verticallyorientedreceptive
Itisalsounclearwhysuchanerrorisneeded. field. Perhaps it was an artifact, the bursting discharges of an
injured cell as the mapping stimulus swept vertically across our
screen.Sowechangedtoahorizontalscan.Thefieldremained,
fivetimesbiggerthananyorientedreceptivefieldeverrecorded
Applications of predictive control in from a cat. Our jaws dropped as we looked at each other, a
momentofdiscovery–thiswasn’tanormalcortex,butsomething
neuroscience
completelydifferent.Itwasthemagicalmomentinsciencewhen
you know something about nature that no one else knows. We
doi:10.1017/S0140525X12002282 coveredoneeye,thentheother;thereceptivefielddisappeared
and reappeared. Later that night we recorded several other
BruceBridgeman
similar fields, all vertical or horizontal, all monocular, and all
DepartmentofPsychology,UniversityofCalifornia–SantaCruz,SantaCruz, huge. It turned out later that the receptive field orientations
CA95064.
matched the mask orientations for the corresponding eye
bruceb@ucsc.edu http://people.ucsc.edu/∼bruceb/ (Hirsch & Spinelli 1970). Plasticity in this cat’s cortex extended
beyondanymereselectionofnormalreceptivefields,beyondany-
Abstract:Thesensorycortexhasbeeninterpretedascodinginformation
ratherthanstimuluspropertiessinceSokolovin1960showedincreased thing that anyone had suspected. The cat had reorganized its
responsetoanunexpectedstimulusdecrement.Themotorcortexisalso cortex from visual experience alone. Clearly the cortex, by the
organizedaroundexpectation,codingthegoalofanactratherthanaset
structureofitsreceptivefields,waspredictingfutureinput.
ofmusclemovements.Expectationdrivesnotonlyimmediateresponses Thiswouldbeaninterestingcuriosityifnotforitsunder-appreci-
but also the very structure of the cortex, as demonstrated by atedimplicationthatthesameprocessmustbeoccurringinnormal
development of receptive fields that mirror the structure of the visual cats,and,byextension,inhumansaswell.Sensoryreceptivefields
world.
aretunedtothestructureoftheworldthattheanimalencounters
initsearlyexperience.Thereceptivefieldsofnormalanimalshavea
Predictionisapowerfulprincipleinneuroscience,anditisnotanew
1/fstatisticalstructure,asdoesthenaturalworld.
one.Ithasbeencentraltointerpretationofbrainfunctionsincethe
influentialworkofE.N.Sokolov(1960)(seetargetarticle,Note28). Itisevenpossiblethatthedominanceofthefovealprojection
onto V1, a quarter of the entire surface in humans, is a conse-
Hefoundthatcorticalresponsesdependnotontheamplitudeofan
quence of the huge number of projections coming up from the
incomingsignal,butonitsinformationvalue.Anexpectedstimulus
periphery.ThesmallsizeofV1receptivefieldsrepresentingthe
caused hardly a ripple, while an unexpected one triggered what
foveamightoriginatefromthebetteropticsandsmallerconver-
Sokolovtermedanorientingresponse.Thekeyexperimentwasto
gence of the foveal anatomy. The distribution of receptive field
repeatastimulusuntilitscorticalsignalnearlydisappeared(habitu-
ationoftheorientingresponse,orClark’s“repetitionsuppression”).
orientationsandspatialfrequenciesreflectsthepropertiesofthe
normalvisualenvironment(Switkesetal.1978);thecortexispre-
Then Sokolov decreased the stimulus amplitude or its duration.
dictingitsowninputbyitsverystructure.Thisispreciselywhat
Sokolovreasonedthatifthecortexweremerelyechoingstimulus
Clark realizes when he concludes, “dig a little deeper and what
properties the response should have decreased, but instead it
we discover is a model of key aspects of neural functioning that
increased.Withaqualitativechange,noamountoffussingwithnon-
makesstructuringourworldsgenuinelycontinuouswithstructur-
linearitiesandthresholdscouldexplaintheresult.Thecortexwas
ingourbrains”(sect.3.4,para.1).Buttheevidencehasbeenthere
codingnotstimuluspropertiesbutstimulusinformation,thediffer-
allalong.
encebetweensignalandexpectation.Inthiscontextitisnowonder
thatweignoreandfailtoremember mostofthevaststreams of
signals emanating from our millions of sensory receptors. So
Clark’spredictionthesishasbeenthedominantinterpretationof
corticalsensorycodingformorethanahalf-century. When the predictive brain gets it really wrong
Another insight that shaped neuroscience is that the brain is
not about representing the stimulus; it is about organizing doi:10.1017/S0140525X12002233
action. The evidence begins with an anatomical paradox that
the precentral “motor” cortex is innervated by the dorsal thala- GavinBuckinghamandMelvynA.Goodale
mus, a region homologous to the dorsal spinal cord that pro- TheBrainandMindInstitute,NaturalSciencesCentre,TheUniversityof
cesses sensory information (Pribram 1971, p. 241). Pribram WesternOntario,LondonONN6A5B7,Canada.
askswhythemotorcortexshouldbecloselytiedtoanotherwise gbucking@uwo.ca mgoodale@uwo.ca
sensorystructure.Hisansweristhat themotorcortexisreallya http://publish.uwo.ca/∼gbucking/
sensory cortex for an image of achievement, analogous to the http://psychology.uwo.ca/faculty/goodale/
images in sensory regions and organized similarly. Motor cortex
Abstract:Clarkexaminesthenotionofthe“predictivebrain”asaunifying
codes environmental contingencies, not literal muscle move-
modelforcognitiveneuroscience,fromthelevelofbasicneuralprocesses
ments, and continuously compares progress in execution of an
tosensorimotorcontrol.Althoughweareingeneralagreementwiththis
act with its goal. notion,wefeelthattherearemanydetailsthatstillneedtobefleshed
Similarly,ithaslongbeenknownthatreceptivefieldsinsensory
outfromthestandpointofperceptionandaction.
cortex are shaped not onlyby anatomybut alsoby experience, so
thattheyencodebestwhatispredictedtobepresentintheenviron- Inhistargetarticle,Clarkpaintsadiversepictureofhowpredic-
ment. I was privileged to witness the first evidence that sensory tion is a ubiquitous part of brain and behaviour interactions.
experience could tune the receptive field properties of the Taking heavy cues from Friston’s “free energy principle,” his
primaryvisualcortex(V1).HelmutHirsch,thenaStanfordgraduate target article summarises ideas at the neural level, suggesting
student, was studying kittens that he raised wearing masks that that the critical variable for sensory coding and motor control is
exposed one eye to vertical stripes and the other to horizontal the deviation from the expected signal, rather than the sensory
stripes. Together with Nico Spinelli and Robert Phelps we began ormotorprocessingperse.Inthefieldofsensorimotorcontrol,
recordingfromsinglecellsinV1ofthemask-rearedkittens,using this Bayesian approach is a popular one (e.g., Körding &
thefirstautomatedreceptive-fieldmappingapparatus.Weprepared Wolpert 2004). Many researchers have built their careers
ourfirstkittenanddippedourmicroelectrodeintoitscortex. showingthat,inawiderangeofcontexts,anindividual’smotorbe-
Thefirstcellswerecordedhadlarge,poorlydefinedreceptive haviour can be modeled as the approximately optimal combi-
fieldsofthesorttoexpectinavisuallydeprivedcat.Thenaround nationofthe“undiluted”sensoryinputandthepriorprobability
208 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
ofthatsensoryeventoccurring,thusbiasingtheresponseoneway thatthenexttimeafreshbottleofwaterisgrasped,thesensori-
or the other. Similarly, a wide range of psychophysical exper- motor prediction will have a good chance of being accurate).
iments have demonstrated that our conscious perception of Thus, when lifting SWI-inducing cubes for the first time, lifters
events in the world represents not veridical sensory input, but will apply excess force to the large cube and apply insufficient
theintegrationofmultiplesourcesofevidencefromoursensory force to the small cube the first time they lift them, but will lift
system and our prior experience, rather than the veridical (and thesetwoidentically-weightedcubeswithappropriatelyidentical
noisy)sensoryinputitself(Gregory1998).Anespeciallycompel- forcesafteronlyafewexperienceswiththem(Flanagan&Beltz-
ling case for this Bayesian standpoint can be made from the ner2000).Clearly,thisadaptivebehaviourisaconsequenceofa
study of perceptual illusions, and several classic visual illusions complex interaction between short-term and long-term priors
can be explained with this optimal integration strategy (Geisler (Flanagan et al. 2008)–a process that looks far more like the
& Kersten 2002; Weiss et al. 2002). In these contexts, this inte- BayesianprocessesoutlinedbyClarkinhistargetarticle(Braya-
gration is thought to overcome the noise in the system of our nov&Smith2010).Itistemptingtoascribeacausalrelationship
sensory organs, maximising the likelihood of perceptual or between the force errors and the perceptual ones. Remarkably,
motor“success.” however,thetwokindsoferrorsappeartobecompletelyisolated
Despitetheapparentdescriptivepowerofoptimallycombining from one another: The magnitude of the SWI remains constant
sensory prediction with sensory input, there are common situ- from one trial to the next, even in the face of the rapid trial-to-
ationswhereconsciousperceptionisclearlynotaproductofBaye- trialadaptationofthegrippingandliftingforces.Thiscomplicates
sian-styleoptimalintegration.Infact,whenweliftanobjectand thesituationevenfurtherbysuggestingthattheremustbeinde-
experience its weight, our conscious perception of how heavy it pendentsetsofpriorsformotorcontrolandperceptual/cognitive
feelsisalmostexactlytheoppositeofwhatmightbeexpectedif judgements,whichultimatelyservequitedifferentfunctions.
a perceiver integrates perpetual priors with sensory input. This In conclusion, we have outlined how the deceptively simple
incongruence is easily demonstrated with the famous size– SWIparadigmcanuncovertheoperationofmultiplepriorsoper-
weight illusion(SWI),firstdescribedin 1891byAugustinChar- ating simultaneously, with different weightings and different
pentier (translation by Murray et al. 1999). The SWI occurs goals. It is worth noting, however, that while the predictive
when small and large objects, that otherwise look similar to one brainmakessenseinapost-hocway,providingacomputationally
another,areadjustedtohaveidenticalweights.Whenindividuals plausible parameter for both the perceptual and lifting effects
lifttheseobjects,thesmallonefeelssubstantiallyheavierthanthe (Brayanov&Smith2010),itisstillverymuchablack-boxexpla-
(equally-weighted) larger one–an effect that is persistent and nation–and, to date, the term “prior” seems to serve only as a
apparentlycognitivelyimpenetrable.Themechanismthatunder- convenient placeholder in lieu of any tangible mechanism
pinsthisillusionisstillsomethingofamystery.Ithaslongbeen linking expectations to the perceptual or motor effects they
contended (in a rather vague way) that the illusion is caused by appeartoentail.
the violation of an individual’s expectations about how heavy
each object will be–namely, the expectation that the large
objectswilloutweighthesmallobjects(Ross1969).Itisnotdiffi-
culttoimaginehowthispriorisbuiltup,giventheconsistencyof
Expecting ourselves to expect: The Bayesian
therelationshipbetweensizeandweightoutsideofthelaboratory
brain as a projector
setting. It is repeatedly encountering this positive size/weight
relationship throughout our entire lives that presumably serves
toestablishaverypowerfulpriorforourperceptionsofheaviness doi:10.1017/S0140525X12002208
(Flanagan et al. 2008). Crucially, however, this prior is not inte-
grated into the lifter’s percept of how heavy the objects feel, as DanielC.Dennett
onemightpredictfromaBayesianoptimalintegrationstandpoint. CenterforCognitiveStudies,TuftsUniversity,Medford,MA02155.
Instead, the lifter’s conscious perception of heaviness contrasts ddennett@tufts.edu
thepriorexpectation,leadingsomeauthorstolabeltheeffectas ase.tufts.edu/cogstud/incbios/dennettd/dennettd.htm
“anti-Bayesian” (Brayanov & Smith 2010). Variants of the SWI
Abstract:Clark’sessaylaysthefoundationforaBayesianaccountofthe
can even manifest in a single, unchanging, object, which can be
“projection” of consciously perceived properties: The expectations that
madetofeeldifferentweightsbysimplymanipulatinganindivid-
ual’s expectations of what they are about to lift (Buckingham & our brains test against inputs concern the particular affordances that
evolutionhasdesignedustocareabout,includingespeciallyexpectations
Goodale2010). ofourownexpectations.
The functional significance of this contrastive effect has been
the source of great (and largely unresolved) debate–why would The“Bayesian”brainasa“hierarchicalpredictionmachine”isan
ourperceptualsystembesostrickenwitherrors?Extendingthe enticing new perspective on old problems, for all the reasons
conclusions of a recent study by Baugh and colleagues (Baugh Clark articulates, ranging over fields as disparate as neuroanat-
etal.2012),itcouldbeproposedthattheSWIisaproductofa omy, artificial intelligence, psychiatry, and philosophy; but he
perceptual system specialised for the detection and subsequent also catalogues some large questions that need good answers.
flaggingofoutliersinthestatisticsoftheenvironment.Thus,con- Whilewaitingforthedetailstocomein,Iwanttosuggestsome
scious weight perception can be framed as an example of a task other benefits that this perspective promises. If it turns out not
whereitisimportanttoemphasisetheunexpectednatureofthe to be sound, in spite of all the converging evidence Clark
stimuli, in a system which presumably favours more efficient describes,wewillhaveallthemorereasonforregret.
codingofinformation. Itiseverybody’sjob–butparticularlythephilosophers’job–to
Asliftingbehaviourisalargelypredictiveprocess,ourfingertip negotiatethechasmbetweenwhatWilfridSellars(1962)calledthe
forces are driven by our expectations of how heavy something manifestimageandthescientificimage.Themanifestimageisthe
looks.And,inamoreconventionalBayesianfashion,theweight- everydayworldoffolkpsychology,furnishedwithpeopleandtheir
ingofthesepriorsisrapidlyadjusted(orrapidlyignored)bythe experiencesofallthemiddle-sizedthingsthatmatter.Thescienti-
presenceofliftingerrors.Thisprovidesthesensorimotorsystem ficimageistheworldofquarks,atoms,andmolecules,butalso(in
with the best of both worlds–lifting behaviour that is flexible thiscontextparticularly)sub-personalneuralstructureswithpar-
enough to rapidly adapt to constantly changing environments ticular roles to play in guiding a living body safely through life.
(e.g., a bottle of water which is being emptied by a thirsty Thetwoimagesdonotreadilyfallintoregistration,aseverybody
drinker), but will automatically “snap back” to the (generally knows, leaving lots of room for confusion and compensatory
correct) lifting forces when the context of the lift is altered (so adjustment(nicelyexemplifiedbythesurprise/surprisalpair).
BEHAVIORALANDBRAINSCIENCES(2013)36:3 209
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
ConsiderwhatIwillcallHume’sStrangeInversion(cf.Dennett prediction error signals is interpreted as confirmation that,
2009).Oneofthethingsinourworldiscausation,andwethinkwe indeed, the thing in the world we are interacting with has the
seecausationbecausethecausationintheworlddirectlycausesus propertiesweexpectedittohave.Cutenessasapropertypasses
toseeit–thesamewayroundthingsindaylightcauseustosee the Bayesian test for being an objective structural part of the
round things, and tigers in moonlight cause us to see tigers. world we live in, and that is all that needs to happen. Any
When we see the thrown ball causing the window to break, the further “projection” process would be redundant. What is
causationitselfissomehowperceptible“outthere.”Notso,says specialaboutpropertieslikesweetnessandcutenessisthattheir
Hume. This is a special case of the mind’s “great propensity to perception depends on particularities of the nervous systems
spread itself on external objects” (Treatise of Human Nature, thathaveevolvedtomakemuchofthem.Thesameisofcourse
Hume 1739/1888/1964, I, p. xiv). In fact, he insisted, what we alsotrueofcolors.ThisiswhatisleftofLocke’s(andBoyle’s)dis-
doismisinterpretaninner“feeling,”ananticipation,asanexternal tinctionbetweenprimaryandsecondaryqualities.
property.The“customarytransition”inourmindsisthesourceof
oursenseofcausation,aqualityof“perceptions,notofobjects,”
butwemis-attributeittotheobjects,asortofbenignuser-illusion,
tospeakanachronistically.AsHumenotes,“thecontrarynotionis
sorivetedinthemind”(p.167)thatitishardtodislodge.Itsur- Grounding predictive coding models in
vives to this day in the typically unexamined assumption that all empirical neuroscience research
perceptualrepresentationsmustbeflowinginboundfromoutside.
HereareafewotherfolkconvictionsthatneedStrangeInver- doi:10.1017/S0140525X1200218X
sions: sweetness is an “intrinsic” property of sugar and honey,
whichcausesus tolikethem;observed intrinsicsexinessiswhat TobiasEgneraandChristopherSummerfieldb
causes our lust; it was the funniness out there in the joke that aDepartmentofPsychology&Neuroscience,andCenterforCognitive
causedustolaugh(Hurleyetal.2011).Thereisnomorefamiliar Neuroscience,DukeUniversity,Durham,NC27708;bDepartmentof
and appealing verb than “project” to describe this effect, but of ExperimentalPsychology,UniversityofOxford,OxfordOX13UD,United
courseeverybodyknowsitisonlymetaphorical;colorsaren’tlit- Kingdom.
erally projected (as if from a slide projector) out onto the front tobias.egner@duke.edu
surfacesof(colorless)objects,anymorethantheideaofcausation http://sites.google.com/site/egnerlab/
issomehowbeamedoutontothepointofimpactbetweenthebil- christopher.summerfield@psy.ox.ac.uk
liardballs.Ifweusetheshorthandterm“projection”totrytotalk, https://sites.google.com/site/summerfieldlab/home
metaphorically,aboutthemismatchbetweenmanifestandscien-
tificimagehere,whatisthetruelongstory?Whatisliterallygoing Abstract:Clarkmakesaconvincingcaseforthemeritsofconceptualizing
oninthescientificimage?Alargepartoftheansweremerges,I brains as hierarchical prediction machines. This perspective has the
potential to provide an elegant and powerful general theory of brain
propose,fromthepredictivecodingperspective.
function, but it will ultimately stand or fall with evidence from basic
Every organism, whether a bacterium or a member of Homo
neuroscience research. Here, we characterize the status quo of that
sapiens, has a set of things in the world that matter to it and evidenceandhighlightimportantavenuesforfutureinvestigations.
whichit (therefore) needs to discriminate and anticipateas best
it can. Call this the ontology of the organism, or the organism’s Theintuitionthatourbrainsharborapredictive(forward)model
Umwelt(vonUexküll1934/1957).Thisdoesnotyethaveanything linking visual percepts to their probable external causes (Helm-
todowithconsciousnessbutisratheran“engineering”concept, holtz1876)hasbeenfleshedoutoverrecentdecadesbysophisti-
like the ontology of a bank of elevators in a skyscraper: all the catedmodels(Friston2005;Mumford1992;Rao&Ballard1999),
kinds of things and situations the elevators need to distinguish inspiringtheviewthatClarkputsforwardinthetargetarticle,that
and deal with. An animal’s Umwelt consists in the first place of predictive coding is a cardinal principle of neural systems (cf.
affordances (Gibson 1979), things to eat or mate with, openings Friston2010;Hawkins&Blakeslee2004).Whilethisperspective
to walk through or look out of, holes to hide in, things to stand offerselegantpost-hocexplanationsforawidearrayofbehavioral
on, and so forth. We may suppose that the Umwelt of a starfish andneuralphenomena,empiricalstudiesdirectlytestingthebasic
or worm or daisy is more like the ontology of the elevator than biologicalassumptionsofpredictivecodingremainscarce.Specifi-
like our manifest image. What’s the difference? What makes cally, the core empirical hypotheses derived from the predictive
ourmanifestimagemanifest(tous)? coding scheme are the presence of separable and hierarchically
HereiswhereBayesianexpectationscouldplayaniteratedrole: organized visual expectation and surprise computations (and
Ourontology(intheelevatorsense)doesaclose-to-optimaljobof associated neural units/signals) in the posterior brain (Friston
representingthethingsintheworldthatmattertothebehaviorour 2005). These predictions are provocative, because they differ
brains have to control. Hierarchical Bayesian predictions accom- drastically from traditional views of visual neurons as mere
plishthis,generating affordancesgalore:Weexpectsolidobjects bottom-upfeaturedetectors(Hubel&Wiesel1965;Riesenhuber
to have backs that willcome into view as we walkaround them, &Poggio2000).Butwhatistheempiricalevidencedirectlysup-
doors to open, stairs to afford climbing, cups to hold liquid, and portingtheseclaims?Wefirstaddressresultsfrommacroscopic,
soforth.ButamongthethingsinourUmweltthatmattertoour human neuroimaging studies, followed by microscopic data
well-beingareourselves!WeoughttohavegoodBayesianexpec- frominvasiveanimalexperiments.
tations about what we will do next, what we willthink next, and At the macroscopic level of inquiry provided by whole-brain
whatwewillexpectnext!Andwedo.Here’sanexample: functionalneuroimaging,thereareatpresentmodestbutpromis-
Thinkofthecutenessofbabies.Itisnot,ofcourse,an“intrin- ing lines of empirical support for predictive coding’s core prop-
sic”propertyofbabies,thoughitseemstobe.Whatyou“project” ositions.Mostfirmlyestablishedisthefindingofrobustoccipital
outontothebabyisinfactyourmanifoldof“felt”dispositionsto responses evoked by the surprising presence or absence of
cuddle,protect,nurture,kiss,cooover,...thatlittlecutie-pie.It’s visualstimuli,presumablyattributabletothecomputationofpre-
not just that when your cuteness detector (based on facial pro- dictionerror(e.g.,Alinketal.2010;denOudenetal.2009;Egner
portions, etc.) fires, you have urges to nurture and protect; you et al. 2010). Similarly, “repetition suppression,” the attenuated
expecttohavethoseveryurges,andthatmanifoldofexpectations neuralresponsetoarepeatedstimulusthatpredictivecodingattri-
justisthe“projection”ontothebabyofthepropertyofcuteness. butestoadecreaseinpredictionerror(Friston2005),hasrepeat-
Whenweexpecttoseeababyinthecrib,wealsoexpectto“findit edly been shown to be modulated by expectations, including in
cute”–thatis,weexpecttoexpecttofeeltheurgetocuddleitand humanfunctionalmagneticresonanceimaging(fMRI)(Summer-
so forth. When our expectations are fulfilled, the absence of field et al. 2008), electroencephalographic (EEG) (Summerfield
210 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
et al. 2011), and magnetoencephalographic (MEG) (Todorovic hypothesis are few but generally supportive. Looking to the
etal.2011)recordings.However,althoughevidenceforvisualsur- future, additional demonstrations of simultaneous prediction and
prisesignalsattheneuralpopulationlevelisfairlyabundant,the surprisecomputationswithinasingleprocessingstage(inparticular
attributionofthesesignalstolocalpredictionerrorcomputations fromsingle-neuronelectrophysiology),aswellasevidenceforhier-
isnotunequivocal,inthattheycouldinsteadbearguedtoreflect archical interactions with adjacent stages, are required. We hope
attentionalhighlightingofunexpectedstimuli(cf.Pearce&Hall that over coming years, neuroscientists will be inspired to collect
1980)drivenbypredictiveprocessingelsewhereinthebrain.In thesedata.
fact, the precise role that attention plays in the predictive
codingmachineryiscurrentlyunderdebate(Feldman&Friston
2010; Summerfield & Egner 2009) and represents an important
lineofrecent(Koketal.2011;Wyartetal.2012)andfutureinves-
Prediction, explanation, and the role of
tigationsintothepredictivebrainhypothesis.
Incontrasttothissupportfortheexistencevisualsurprisesignals, generative models in language processing
thepropositionthattherearesimultaneouscomputationsofpredic-
tionandpredictionerrorsignalscarriedoutbydistinctneuralpopu- doi:10.1017/S0140525X12002312
lations in visual cortex is presently only poorly substantiated. One
recentfMRIstudyshowedthatneuralpopulationresponsesinthe
ThomasA.Farmer,a,bMeredithBrown,aand
ventralvisualstreamcanbesuccessfullymodeledasreflectingthe MichaelK.Tanenhausa
summedactivityofputativepredictionandpredictionerrorsignals aDepartmentofBrainandCognitiveSciencesandbCenterforLanguage
(Egneretal.2010;Jiangetal.2012).Similarly,arecentcomputational Sciences,UniversityofRochester,Rochester,NY14627-0268.
modelcanaccountforawidearrayofauditoryEEGresponsesby tfarmer@bcs.rochester.edu mbrown@bcs.rochester.edu
supposing co-existing prediction and prediction error neurons mtan@bcs.rochester.edu
(Wacongneetal.2012).However,neitherofthesestudiesdemon-
stratesunambiguouslythesimultaneousoperationofdistinctneural Abstract:Wepropose,followingClark,thatgenerativemodelsalsoplaya
sub-populationscodingforexpectationsandsurprise,afindingthat centralroleintheperceptionandinterpretationoflinguisticsignals.The
dataexplanationapproachprovidesarationalefortheroleofpredictionin
would greatlybolster the biological feasibility of predictive coding language processing and unifies a number of phenomena, including
models.Finally,thepurportedhierarchicalnatureoftheinterplay
multiple-cue integration, adaptation effects, and cortical responses to
between expectation and surprise signals has garnered indirect violationsoflinguisticexpectations.
supportfromahandfuloffMRIstudies.Forinstance,Murrayand
colleaguesdemonstratedthe“explainingaway”ofactivityinlower- Traditional models of language comprehension assume that
level visual regions by activity in higher-level visual cortex when language processing involves recognizing patterns, for example,
presentingacoherentvisualobjectcomparedtoitsdissembledcon- words, by mapping the signal onto existing representations,
stituentparts(Murrayetal.2002).Otherinvestigatorshaveemployed retrieving information associated with these stored represen-
effectiveconnectivityanalysisoffMRIdatatoprobehowdynamic tations, and then using rules based on abstract categories (e.g.,
interactionsbetweendifferentbrainregionsmaymediateprediction syntacticrules)tobuildstructuredrepresentations.Fouraspects
andsurprisesignals(denOudenetal.2009;2010;Koketal.2011; oftheliteratureareinconsistentwiththisframework.First,listen-
Summerfield&Koechlin2008;Summerfieldetal.2006).Neverthe- ersareexquisitelysensitivetofine-grained,sub-categoricalprop-
less,acomprehensivedemonstrationofpredictivecoding“message erties of the signal, making use of this information rather than
passing”acrossseveraladjacentlevelsofthevisualprocessinghierar- discarding it (McMurray et al. 2009). Second, comprehenders
chyremainslackingfromtheliterature. rapidlyintegrateconstraintsatmultiplegrains.Third,theygener-
Perhaps most importantly, microscopic or cellular level data ateexpectationsaboutlikelyinputatmultiplelevelsofrepresen-
addressing the core tenets of the predictive coding hypothesis tation. Finally, adaptation is ubiquitous in language processing.
havebeenparticularlyscarce.Inpart,thismaybeformethodo- These results can be unified if we assume that comprehenders
logicalreasons:Forexample,neuronswithproposed“predictive useinternally generated predictionsat multiplelevels to explain
fields”mightbeexcludedfromrecordingstudieswherecellsare the source of the input, and that prediction error is used to
screened according to their bottom-up sensitivity. Moreover, updatethegenerativemodelsinordertofacilitatemoreaccurate
the dynamics of the reciprocal interaction within the hierarchy predictionsinthefuture.
mightgiverisetocomplexneuralresponses,makingithardtoseg- Extendedtothedomainoflanguageprocessing,Clark’sframe-
regatepredictionanderrorsignals.Nevertheless,recentworkhas workpredictsthatexpectationsathigherlevelsofrepresentation
supplied some promising data. First, Meyer and Olson (2011) (e.g., syntactic expectations) should constrain interpretation at
haverecentlydescribedsingleneuronsinmonkeyinferotemporal lowerlevelsof representation(e.g.,speechperception).Accord-
cortexthatexhibitsurpriseresponsestounexpectedstimulustran- ingtothisview,listenersdevelopfine-grainedprobabilisticexpec-
sitions,thuspossiblydocumentingvisualpredictionerrorneurons tations about how lexical alternatives are likely to be realized in
in the ventral visual stream. Two other recent studies, one in context (e.g., net vs. neck) that propagate from top to bottom
monkeys (Eliades & Wang 2008) and one in mice (Keller et al. throughthelevelsofahierarchicallyorganizedsystemrepresent-
2012), assessed neuronal activity in the context of sensorimotor ingprogressivelymorefine-grainedperceptualinformation.Pro-
feedback (e.g., the integration of movement with predicted visional hypotheses compete to explain the data at each level,
changes in visual stimulation), observing putative prediction with the predicted acoustic realization of each alternative being
errorsignalsinprimarysensorycortices(foralternativeinterpret- evaluated against the actual form of the input, resulting in a
ations, see Eliades & Wang 2008). Importantly, in Keller et al. residual feed-forward error signal propagated up the hierarchy.
(2012),thesesurprisesignalsco-occurredwithbothpuremotor- As the signal unfolds, then, the activation of a particular lexical
relatedandsensory-drivensignals,thusprovidinginitialevidence candidate should be inversely proportional to the joint error
for the possibility of co-habiting prediction and prediction error signalatalllevelsofthehierarchy(i.e.,thedegreeofdivergence
neuronsinearlyvisualcortex.Moreover,theputativeprediction betweenthepredictedacousticrealizationofthatcandidateand
error neurons were found in supra-granular layers 2/3, which theactualincomingsignal),suchthatcandidatewordswhosepre-
house precisely the superficial pyramidal cells that have been dictedrealizationsaremostcongruentwiththeacousticsignalare
posited to support prediction error signaling by theoretical favored.
modelsofpredictivecoding(Friston2008;Mumford1992). Hierarchicalpredictiveprocessingthereforeprovidesapoten-
Inconclusion, we submitthatthe extantdata from studies that tial explanatory framework for understanding a wide variety of
directly aimed at testing core tenets of the predictive coding context effects and cue integration phenomena in spoken word
BEHAVIORALANDBRAINSCIENCES(2013)36:3 211
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
recognition. Converging evidence suggests that the initial Active inference and free energy
moments of competition between lexical alternatives are con-
strainedbymultiplesourcesofinformationfromdifferentdimen- doi:10.1017/S0140525X12002142
sions of the linguistic input (e.g., Dahan & Tanenhaus 2004;
Kukonaetal.2011),includinginformationexternaltothelinguis- KarlFriston
tic system, such as visually conveyed social information (Hay & TheWellcomeTrustCentreforNeuroimaging,InstituteofNeurology,University
Drager2010;StaumCasasanto2008)andhigh-levelinformation CollegeLondon,QueenSquare,LondonWC1N3BG,UnitedKingdom.
aboutaspeaker’slinguisticability(Arnoldetal.2007).Crucially, k.friston@ucl.ac.uk
lexical processing is influenced by information preceding the
target word by several syllables or clauses (Dilley & McAuley Abstract: Why do brains have so many connections? The principles
2008; Dilley & Pitt 2010) and this information affects listeners’ exposed by Andy Clark provide answers to questions like this by
appealing to the notion that brains distil causal regularities in the
expectations(Brownetal.2011;2012).Theintegrationofthese
sensorium and embody them in models of their world. For example,
various constraints, despite their diversity, is consistent with the
connections embody the fact that causes have particular consequences.
hypothesis that disparate sources of constraint are integrated Thiscommentaryconsiderstheimperativesforthisformofembodiment.
withingenerativemodelsinthelanguageprocessingsystem.
Clark’sframeworkalsohelpsexplainarecentsetofresultson 1. Introduction. It is a pleasure to comment upon Andy Clark’s
contexteffectsinreadingthataresurprisingfromtheviewpoint exposition of the Bayesian brain, predictive coding, and the
of more traditional theories that emphasize the bottom-up, free-energy principle. Clark describes modern thinking about
feed-forward flow of information. Farmer et al. (2006) demon- thebrainasaconstructiveandpredictivemachineinacompelling
strated that when a sentential context conferred a strong expec- andaccessibleway.Furthermore,hedevelopsthefundamentsof
tation for a word of a given grammatical category (as in The this approach from basic questions about the nature of life and
childsavedthe…,whereanounisstronglyexpected),participants consciousness–remarkably, without recourse to mathematical
wereslowertoreadtheincomingnounwhentheformofit(i.e.,its equations.
phonological/orthographicproperties)wasatypicalwithrespectto Clark’s synthesis is impressive–it highlights the consistency
other words in the expected category. In a subsequent MEG (and convergence) of the underlying ideas from many perspec-
experiment,Dikkeretal.(2010)showedthatatabout100msec tives, ranging from the psychophysics of perceptual inference
post-stimulus onset–timing that is unambiguously associated through to motor control and embodiment. The key thing that
withperceptualprocessing–astrongneuralresponsewaselicited emergesfromhistreatmentisthatminimisingsurpriseorsurpri-
when there was a mismatch between form and syntactic expec- sal (Tribus 1961) accommodates many intuitions and theories
tation.Moreover,thesourceoftheeffectwaslocalizedtotheocci- aboutbrainfunctionthathaveemergedoverthepastcenturyor
pitallobe,suggestingthatthevisualsystemhadaccesstosyntactic so. Had space allowed, other ideas could have been celebrated
representations.TheseresultsprovidesupportforClark’shypoth- (developed)withinthisframework;forexample,theprincipleof
esisthat“ifthepredictiveprocessingstoryiscorrect,weexpectto efficient coding (Barlow 1961); the notion of perception as
seepowerfulcontexteffectspropagatingquitelowdownthepro- hypothesis testing (Gregory 1980), and the action-perception
cessinghierarchy”(sect.3.1,para.8).Linguisticcontextisusedto cycle(Fuster2001)–allrestonthepremisethatwebuildparsi-
generate expectations about form-based properties of upcoming moniousmodelstoexplainourworld(Dayanetal.1995).
words,andtheseexpectationsarepropagatedtoperceptualcor- In what follows, I revisit three challenges–highlighted by
tices(Tanenhaus&Hare2007). Clark–tothefree-energyprinciple,anditsincarnationslikepre-
Thisframeworkalsoservestospecifythefunctionalityofthepre- dictivecodingandtheBayesianbrain.Specifically,theseare:(1)
dictionerrorthatariseswhensomedegreeofmismatchbetweena the relationship between free-energy minimisation and predic-
prediction and the incoming signal occurs. In behavioral and tive coding, (2) the dark room problem, and (3) explanatory
Event-RelatedPotential(ERP)experiments,prediction-inputmis- power.
matchfrequentlyresultsinincreasedprocessingdifficulty,typically 2. Free-energy and predictive coding. Clark frames surprise
interpretedasevidencethatpredictionisbeingmade.But,under minimisation in terms of predictive coding in the Bayesian brain
Clark’sframework,theerrorsignalassumesfunctionality;inpart, (Mumford 1992; Rao & Ballard 1999; Yuille & Kersten 2006).
itservestoadjusthigher-levelmodelssuchthattheybetterapproxi- This works extremely well and is a useful way to introduce the
matefutureinput.Theexplanatorypowerofthishypothesiscan ideas. However, it may detract from a simple but important
best be seen when considering the large amount of relatively point:Predictivecodingisaconsequenceofsurpriseminimisation,
recent literature on adaptation within linguistic domains. not its cause. Free-energy is a mathematical bound on surprise,
Whether in the domain of speech perception (Kleinschmidt & wherepredictionerrorisameasureoffree-energythatiseasyto
Jaeger 2011; Kraljic et al. 2008), syntactic processing (Farmer compute (neurobiologically). Free-energy minimisation is an
etal.2011;Fineetal.underreview;Wellsetal.2009),prosody instance of the celebrated principle of least action–because the
(Kurumadaetal.2012),orpragmatics(Grodner&Sedivy2011), average energy over time is also called action. Furthermore, it
ithasbecomeincreasinglyapparentthatreadersandlistenerscon- entails the maximum entropy principle (Jaynes 1957)–because
tinuallyupdatetheirexpectationsaboutthelikelihoodofencoun- free-energy is expected energy minus the entropy of predictions.
tering some stimulus based on their exposure to the statistical These principles willbe familiarto anyonein physics orstatistics
regularitiesofaspecificexperimentalcontext.Adaptationofexpec- because they govern the behaviour of known physical systems.
tationsispredictedbyClark’sframework,anditmaybetakenas The important thing–for self-organising systems–is that the
evidencethatprediction-inputmismatchproducesanerrorsignal long-term average of surprise is (almost surely) equal to the
thatisfedforwardtoupdatetherelevantgenerativemodels. entropy of sensations. This means that minimising free-energy
In sum, Clark’s hierarchical prediction machine hypothesis minimises sensory entropy. As articulated nicely by Clarke, we
providesaframeworkthatwebelievewillunifytheliteratureon can minimise free-energy (prediction errors) by either changing
predictioninlanguageprocessing.Thisunificationwillnecessarily our predictions (perception) or changing the things that we
involvesystematicexaminationofwhataspectsofthestimulusare predict (action). The key thing that the free-energy principle
predicted,wheninthechainofprocessingthesepredictionsare bringstothetableisthatbothperceptionandactionminimisepre-
generatedandassessed,andthepreciseformofthesegenerative dictionerrorbutonlyactionminimisessurprise(becausesurpriseis
models.Thistaskwillbechallengingbecauseitislikelythatgen- anattributeofsensationsactivelysampled).Thisisactiveinference
erativemodelsusesignal-relevantpropertiesthatdonotmapto (Friston 2010). The imperative to minimise surprise rests on the
thestandardlevelsoflinguisticrepresentationthatareincorpor- need to resist a natural tendency to disorder–to minimise
atedintomostmodelsoflanguageprocessing. sensoryentropy(Ashby1947).TheBayesianbrainandpredictive
212 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
codingarethenseenasaconsequenceof,orrequirementfor,this Nevertheless,weremainunconvincedthattheHPMoffersthebestclue
fundamental imperative–not asa causal explanation for how our yettotheshapeof aunifiedscienceofmindandaction.Theapparent
brainswork.Thisisimportant,becauseanyevidencethatsuggests convergence of researchinterests is offset by a profounddivergence of
weareBayes-optimalcanbetakenasevidenceforactiveinference. theoreticalstartingpointsandidealgoals.
3.Thedarkroomproblem.Clarkintroducesandthen(almost)
WesharewithClarkacommitmenttoexploringthedeepconti-
dismissesthedarkroomproblembyappealtoitinerant(explora-
nuities of life, mind, and sociality (Froese & Di Paolo 2011).
tory)behavioursthatminimisesurpriseoverlongperiodsoftime Similar to the enactive notion of “sense-making,” Clark’s “hier-
(that is, minimise sensory entropy). I think that his discussion is archical prediction machine” (HPM) entails that perceiving
exactly right; however, the “grain of truth” in the dark room
cannot be separated from acting and cognizing. Nevertheless,
p th r a o t b p le r m edi c c a a n tio b n e er d r i o sm rs is a s r e e d on in ly a d n efi e n v e e d n in sim re p la le ti r on w t a o y p – r b e y dic n t o io ti n n s g . we disagree with Clark’s theoretical premises and their ideal
consequences.
Forexample,whenweenteradarkroom,thefirstthingwedois
Clark begins with the assumption that the task of the brain is
switchonalight.Thisisbecauseweexpecttheroomtobebrightly analogous to establishing a “view from inside the blackbox.” On
lit(ormoreexactly,weexpectourbodilymovementstobringthis
this view,the mind is locked insidethe head and it follows that,
about).Inotherwords,thestateofaroombeingdarkissurprising as Clark puts it, “the world itself is thus off-limits” (sect. 1.2,
because we do not expect to occupy dark rooms. This surprise
para. 1). This is the premise of internalism, from which another
depends upon (prior) expectations, but where do these prior
assumption can be derived, namely that knowledge about the
beliefs come from? They come from evolution and experience,
worldmustbeindirect.Accordingly,thereisaneedtocreatean
in the sense that if we did not have these prior beliefs, we
internal model of the external source of the sensory signals, or,
would be drawn to dark rooms and die there. In short, a inClark’sterms,of“theworldhiddenbehindtheveilofpercep-
dynamic world can only support a generative model of that tion”(sect.1.2,para.6).Thisisthepremiseofrepresentationalism.
world (prior beliefs) that predicts the dynamics it encounters–
Itisimportanttorealizethatthesetwopremisessetupthebasic
predictionsthatactionfulfils.
problemspace,whichtheHPMisdesignedtosolve.Withoutthem,
4. Evidence and explanatory power. Clark questions the evi- the HPM makes little sense as a scientific theory. To be sure,
dence for surprise minimisation and its explanatory power. I am
internalism may seem to be biologically plausible. As Clark
morecomplacentaboutthisissue,becausethefree-energyformu- observes,allthebrain“knows”about,inanydirectsense,arethe
l i a n t g io t n ha e t x a p n la a in g s en so td m o u e c s h n a o l t re h a a d v y e . a P m ot o en de t l e o xa f m its p w le o s r r l e d s – to it n is ap a p m re o c d ia e t l - . ways its own states (e.g., spike trains) flow and alter. However,
theenactiveapproachpreferstointerpretthiskindofautonomous
In other words, the form, structure, and states of our embodied
brains do not contain a model of the sensorium–they are that organizationnotasablack-boxprisonofthemind,butratherasa
self-organizedperspectivalreferencepointthatservestoenactaset
model. This allows one to equate the long-term minimisation of
surprise with the entropy of our physical (sensory) states–and of meaningful relations with its milieu (Di Paolo 2009). On this
view,mindandactionarecomplexphenomenathatemergefrom
explainsourcurious(biological)abilitytoresistthesecondlawof
the nonlinearinteractions of brain, body, andenvironment (Beer
thermodynamics (Ashby 1947). But what does this mean practi-
2000). Such a dynamical perspective supports a relational, direct
cally? It means that every aspect of our brain can be predicted
realistaccountofperception(Noë2004;2009).
fromourenvironment.Thisseemsapowerfulexplanationforneu-
An enactive approach to neuroscience exhibits many of the
roanatomyandneurophysiology.Aniceexampleistheanatomical
virtuesoftheHPMapproach.Followingthepioneeringworkof
divisionintowhatandwherepathwaysinvisualcortex(Ungerlei-
Varela (1999), it is also formalizable (in dynamical systems
der & Mishkin 1982). Could this have been predicted from the
free-energy principle? Yes–if anatomical structure in the brain theory);ithasexplanatorypower(includingbuilt-incontext-sensi-
tivity);anditcanberelatedtothefundamentalstructuresoflived
recapitulates causal structure in the environment, then one
experience (including multistable perceptions). Indeed, it
would expect independent causes to be encoded in functionally accounts for much of the same neuroscientific evidence, since
s e e n g t r p e l g a a c t e e s d ,t n h e e u y r p o o n s a s l e s s t s ru se c p tu a r r e a s b . l G ea iv t e tr n ib t u h t a e t s o o b f je “w ct h s a c t a ” n an b d ei “ n w d h i e f r fe e r .” - s g y lo n b c a h l ro se n l y f- – or r g e a q n u i i z r a e t s io e n xt o e f n b si r v a e in u a s c a t g i e vit o y f – w fo h r at ex C a l m ar p k le r , e v fe ia rs ne to ur a a s l
This translates into separate neuronal representations in segre- “backwardconnections”inordertoimposetop-downconstraints
gated visual pathways. In summary, the evidence for the free-
energyprinciplemaynotnecessarilybeinnextmonth’sscientific (Va
A
r
d
e
v
la
an
e
t
t
a
a
g
l
e
.
o
2
u
0
s
0
ly
1
,
).
the enactive approach avoids the HPM’s
journalsbutmaylieintheaccumulatedwealthofempiricalneuro-
essential requirement of a clean functional separation between
biologicalknowledgethatAndyClarkhasunpackedforus. “errorunits”and“representationunits,”anditexhibitsadifferent
kind of neural efficiency. Properties of the environment do not
needtobeencodedandtransmittedtohighercorticalareas,but
not because they are already expected by an internal model of
Thebrainisnotanisolated “blackbox,”noris the world, but rather because the world is its own best model.
The environment itself, as a constitutive part of the whole
its goal to become one brain-body-environment system, replaces the HPM’s essential
requirement of a multilevel generative modeling machinery (cf.
doi:10.1017/S0140525X12002348 Note16inthetargetarticle).
Theenactiveapproachalsoavoidsabsurdconsequencesofthe
TomFroesea,bandTakashiIkegamib
HPM, which follow its generalization into an all-encompassing
aDepartamentodeCienciasdelaComputación,InstitutodeInvestigaciones “free-energyprinciple”(FEP).TheFEPstatesthat“allthequan-
enMatemáticasAplicadasyenSistemas,UniversidadNacionalAutónomade titiesthatcanchange;i.e.thatarepartofthesystem,willchange
México,CiudadUniversitaria,A.P.20-726,01000MéxicoD.F.,México; to minimize free-energy” (Friston & Stephan 2007, p. 427).
bIkegamiLaboratory,DepartmentofGeneralSystemsStudies,Graduate
AccordingtoClark,thecentralideaisthatperception,cognition,
SchoolofArtsandSciences,UniversityofTokyo,Meguro-ku,Tokyo153-8902,
and action workclosely togetherto minimize sensoryprediction
Japan.
errorsbyselectivelysampling,andactivelysculpting,thestimulus
t.froese@gmail.com http://froese.wordpress.com
array. But given that there are no constraints on this process
ikeg@sacral.c.u-tokyo.ac.jp http://sacral.c.u-tokyo.ac.jp/
(according to the FEP, everything is enslaved as long as it is
Abstract: In important ways, Clark’s “hierarchical prediction machine” partofthesystem),thereareabnormalyeteffectivewaysofredu-
(HPM) approachparallelstheresearchagendawehave been pursuing. cingpredictionerror,forexamplebystereotypicself-stimulation,
BEHAVIORALANDBRAINSCIENCES(2013)36:3 213
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
catatonicwithdrawalfromtheworld,andautisticwithdrawalfrom “the attributionof agencyto another is a genuine result ofwhat
others.Theideathatthebrainisanisolatedblackbox,therefore, is truly experienced” (Gallagher 2004, p. 17, my italics). Some
formsnotonlythefundamentalstartingpointfortheHPM,but experiments suggest that this experience is the result of a prior
alsoitsidealendpoint.Ironically,raisingtheHPMtothestatus belief about the external origin of movement. This would be a
of a universal principle has the opposite effect: namely, making nicevindicationoftheseamlessstory.Ithink,however,thatthe
it most suitable as an account of patently pathological mental mindisnotquitesoseamlessandthatthereisanotherexplanation
conditions. consistentwiththepredictivecodingframework.
SimilarconcernsabouttheovergeneralizationoftheFEPhave How could someone experience his or her own movements as
beenraisedbyothers(Gershman&Daw2012),andareacknowl- alienated actions? The short answer is that right inferior parietal
edgedbyClarkinhis“desertlandscape”and“darkroom”scenarios. activationrepresents“surprisal”forintendedmovements.Surprisal
The general worry is that an agent’s values need to be partially isminimisedforintendedmovementsbecausethemotorcommand
decoupled from prediction optimization, since reducing surprise from the supplementary motor area (SMA) attenuates activity in
for its own sake is not always in the organism’s best interest. In the right interior parietal cortex. On the seamless story, unpre-
thisregardtheenactiveapproachmaybeofhelp.LikeFriston,it dicted/unattenuated parietal activation (surprisal) arising in the
rejects the need for specialized value systems, as values are context of action observation is experienced as alienation: “The
deemed to be inherent in autonomous dynamics (Di Paolo et al. patientsreallyhadnocues(asinferredfromthechangeinactivity
2010). But it avoids the FEP’s problems by grounding values in intheparietallobe)aboutwhethertheysawtheirownmovements
theviabilityconstraintsoftheorganism.Arguably,itistheorgan- orthoseofanalienagent”(Jeannerod2006,myitalics).Thus,they
ism’sprecariousexistenceasathermodynamicallyopensystemin experiencetheirownmovementsasalienated.
non-equilibrium conditions which constitutes the meaning of its InanimportantexperimentDapratiandcollaboratorshadsub-
interactionswiththeenvironment(Froese&Ziemke2009). jects tracea path from theirbody midline to a targetdirectly in
However, this enactive account forces the HPM approach to front of them. The subjects’ view of their moving hands was
make more realistic assumptions about the conditions of the occluded until the final 30% of the movement. For the first
agent. Notably, itis no longeracceptablethat the FEPrequires 70%,patientssawacomputer-generatedtraceofthemovement
a “system that is at equilibrium with its environment” (Friston path. On some trials the experimenters introduced a deviation
2010, p. 127). This assumption may appear plausible at a suffi- of15%intothemovementpathsothatifuncorrectedthetrace
ciently abstract level (Ashby 1940), but only at the cost of wouldveerofftotheright.Bothschizophrenicandneurotypical
obscuring crucial differences between living and non-living subjects were able to compensate for the perturbation, during
systems (Froese & Stewart 2010). Organisms are essentially the occluded section of the movement, with the result that
non-equilibrium systems, and thermodynamic equilibration when the hand came into view, the hand was to the left of the
with the environment is identical with disintegration and midline. Danckert et al. (2004) express the consensus in a large
death, rather than optimal adaptiveness. However, contra to literaturewhentheysaythatsuchcasesshowthat“on-linemoni-
the motivations for the FEP (Friston 2009, p. 293), this does toring and adjustment of action is unaffected in patients with
not mean that organisms aim to ideally get rid of disorder schizophrenia”(p.253).
altogether, either. Living beings are precariously situated InDaprati’sexperiment,thelast30%ofthemovementisnot
between randomness and stasis by means of self-organized cri- occluded.Whenthesubjectseesthehanditis15degreestothe
ticality, and this inherent chaos has implications for perception leftofastraightlinetothetarget.Neurotypicalsubjectsattributed
(Ikegami 2007). Following Bateson, we propose that it is more thisdiscrepancytothecomputer,indicatingthattheywereableto
important to be open to perceiving differences that make a becomeawarethattheyhadintendedadifferentmovementthan
difference, rather than to eliminate differences that could sur- the one they actually made. Schizophrenics with positive symp-
prise you. toms did not, leading to the conclusion that “online control can
coexist with a tendency to misattribute the source of error”
(Dapratietal.1997,p.253,emphasistheirs).
This tendency arises for schizophrenics when they visually
attend to the movement. In this case they seem lose access to
Unraveling the mind information about self-initiation. (Note: this is a problem of
degreenotkind.Thedominanceofvisualattentionoverproprio-
doi:10.1017/S0140525X1200235X ceptive/motor information generates similar misattributions in
manyconditions).
PhilipGerrans Blakemoreetal.(2003)hypnotizedsubjectswhosearmswere
DepartmentofPhilosophy,UniversityofAdelaide,NorthTerraceCampus,SA attached to a pulley apparatus and gave them two instructions.
5005,Australia. In the first they were told to raise their arms and in the second
philip.gerrans@adelaide.edu.au http://philipgerrans.com thatthepulleywouldraisetheirarms.Thepulleydidnotactually
exertanyforce.Highlyhypnotizablesubjectsmovedtheirarmsin
Abstract: A radical interpretation of the predictive coding approach responsetobothinstructionsbutinthesecondcasetheyreported
suggests that the mind is “seamless”–that is, that cancellation of error nofeelingofagency,attributingthemovementtothepulley.In
signals can propagate smoothly from highest to lowest levels of the
effect,hypnosisinducedtheexperienceoffailedactionmonitor-
controlhierarchy,dissolvingadistinctionbetweenbeliefandperception.
ing characteristic of delusions of alien control. The authors
Delusions of alien control provide a test case. Close examination explain:“Thepredictionmadebytheparietalcortexisconcerned
suggests that while they are evidence of predictive coding within the
cortex,theyarenotevidencefortheseamlessinterpretation. more with high level prediction such as strategic planning
actions.” Furthermore, they suggest, “Perhaps the predictions
Andy Clark describes delusions as the dark side of the seamless madeby theparietal cortexcan bemade available toconscious-
storyforpredictivecodinginwhich,“Inplaceofanyrealdistinc- ness”(Blakemoreetal.2003,p.243,myitalics).Inotherwords
tion between perception and belief we now get variable differ- we can experience ourselves as authors of our actions in virtue
ences in the mixture of top-down and bottom-up influence, and of attenuated parietal activity. Because schizophrenics cannot
differences of temporal and spatial scale in the internal models attenuate this activity, they cannot become aware of themselves
thataremakingthepredictions”(sect.2.3,para.8). asauthorsoftheiractionsinsomeconditions.
Theorists who endorse the predictive coding model have Doesitfollowthatunattenuatedparietalactivityrepresentsthat
arguedthatindelusionsofaliencontrol,patientsactuallyexperi- someoneelseistheauthoroftheaction?Fromwhatwehaveseen
encebeingcontrolledbyanexternalagent.AsGallagherputsit, so far, the modulation of parietal activity only tells the subject
214 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
whetheramovementisproducedbytheSMA.Thatisaverylow andreproducing–areonacontinuumofconnectedultimateand
levelofcognitiveprocessingfromwhichinformationaboutagency proximatecausesandperhapsfueltheorganizationofperception
isabsent. andaction?DoBayesiananimalspredictthefuturefromasetof
Evolution has not posed us with the problem of determining constantly updated priors to produce predictions of most impor-
which movements are ours rather than someone else’s. It has tance:findingamate,findingabettermate,ordying?
posed us with the problem of determining which aspects of a Fitnessisarelativeconceptanddemography-dependent.Here,
movement are consequences of motor intentions in order to we direct readers to a theoretical scenario (Figure 1) with its
computeandresolveerror.Therefore,thereseemsnoreasonto mathematical analytical solutions for the evolution of human
thinkthatwewouldneedtousepredictivecodingtodisambiguate and nonhuman Bayesian individuals who perceive their real
theagentofanactionratherthantosimplycontrolourownaction. time alternatives, predict the fitness that would accrue or not
This is true both at the level of automatic and of controlled from those alternatives and modify their behavior accordingly.
processing. One of our main assumptions is that individuals are able to
Ingeneral,then,Iconcludethatparietalactivationisnotspecial- predict(unconsciouslyorconsciously)theirowndemographiccir-
isedfordeterminingwhointendedtheaction.Rather,itdetermines cumstances (how they are doing/will do relative to others). To
foranymovementwhetheritisaconsequenceofamotorinstruc- someofourreaders,ourassumptionshaveseemedotherworldly.
tion. It evolved to control movement, not to identify the agent. Clark’sarticlesuggeststhatourassumptionsarenotsooddinthe
Becauseschizophrenicscannotattenuatethisactivitywhenvisually humancognitivesciencesandtheysignalnewempiricalresearch
monitoringactions,theycannotexperiencethemselvesasauthors aboutthemeaningsofanimalbehaviorintheunifiedcontextsof
of those actions. In both experiments, however, the context pro- linkedproximateandultimatecauses.
videsadefaultinterpretationofalienation. FromaDarwinianevolutionaryperspective(Darwin1871),who
If the fabric of the mind is stitched together seamlessly with among potential mates to accept and/or reject is one of the most
predictivecodingthreadsweshouldbeabletounravelitentirely importantofreproductivedecisions.Tobefitnessenhancingincon-
from the top down. But the fact that online control in schizo- temporarytime,reproductivedecisionsmustbeflexibleandmade
phreniaisintactsuggeststhattheseamlinkingautomaticandvisu- against the unavoidable context of demography (Gowaty &
ally guided motor control, while flexible, has been robustly Hubbell2005).Demographyisnotstatic:thingschange;stochastic
tailoredbyevolution. effectsareinevitable.Potentialmatesenterandleavepopulations;
some individuals may die and never appear again; and predators,
parasites,andpathogenscomeandgo,sothatthesurvivallikelihoods
ofdecision-makersalsochange.Theminimalsetofparameterscon-
tributing to stochastic demography (Hubbell & Johnson 1987) are
Bayesiananimalssenseecologicalconstraints thoseprovidingsensoryinformationabouttheavailabilityofpoten-
to predict fitness and organize individually tial mates (encounter probability, e), the likelihood of continued
flexible reproductive decisions w lif i e th o in fd t e h c e isi p o o n p -m ul a a k ti e o r n s( o su f rv fi i t v n a e l s p s ro th b a a t bil w it o y, ul s d ),a b n e d c t o h n e fe d r i r s e tr d ibu fr t o io m n
mating with this or that potential mate (w-distribution). The
doi:10.1017/S0140525X12002385 minimalsetofinformationnecessaryformakingreal-time,fitness-
enhancingreproductivedecisionsise,sandthew-distribution.
PatriciaAdairGowatyandStephenP.Hubbell
GowatyandHubbell(2005)hypothesizedthatindividuals,not
DepartmentofEcologyandEvolutionaryBiology,andInstituteofEnvironment sexes, are under selection to flexibly modify their reproductive
andSustainability,LosAngeles,CA90095;andSmithsonianTropical
decisions moment-to-moment as their ecological and social cir-
ResearchInstitute,Unit9100,BOX0948,DPOAA34002-9998.
cumstanceschangetoenhancetheirinstantaneouscontributions
gowaty@eeb.ucla.edu shubbell@eeb.ucla.edu tolifetimemeanfitness(Fig.1).Stochasticvariationine,s,andl
http://www.eeb.ucla.edu/indivfaculty.php?FacultyKey=8418
(latency from the end of one mating, to onset, to receptivity, to
http://www.eeb.ucla.edu/indivfaculty.php?FacultyKey=8416
the next mating) results in mean lifetime number of mates
Abstract: A quantitative theory of reproductive decisions (Gowaty & (MLNM).VariationinMLNMfavorstheevolutionofsensitivity
Hubbell 2009) says that individuals use updated priors from constantly to e, s, and l, while variation in the w-distribution favors assess-
changing demographic circumstances to predict their futures to adjust ment of fitness that would be conferred through mating with
actions flexibly and adaptively. Our ecological/evolutionary models of this or that potential mate. Once sensitivity and assessment
ultimate causes seem consistent with Clark’s ideas and thus suggest an evolve,thestageissetforflexibleindividualstomodifytheirbe-
opportunity for a unified proximate and ultimate theory of Bayesian havior in ways which their sensitivities and assessments predict
animalbrains,senses,andactions. are fitness enhancing. The analytical solution to this model is
the Switch Point Theorem (SPT). An SPT graph shows the
Reading Clark suggests possible connections between proximate
causes of animal–not just human–perception, mind, and action rule for acceptance and rejection of each potential mate,
rankedfrombestat1toworstatn,byasingleuniqueindividual
andtheirultimatecauses.Wesuggestthatitisworthconsidering
in the population, given variation in e, s, l, n and the w-
that nonhuman animals, not just humans, are Bayesian too, and
distribution.
thatthe world alsoappearstothem as a setofintertwined prob-
The assumptions of the analytical solution as to how many
ability density distributions. We think of all animals as Bayesian
and we define (Gowaty & Hubbell 2005; 2009) animals as adap- potential mates in a population will be acceptable or not to a
tively flexible individuals who “predict” (“visualize,” “imagine”) givenindividual(Gowaty&Hubbell2009)areasfollows:
alternativesandmakechoicesamongthem“controllingplasticity”
to serve fitness. We have argued previously that animals predict 1. Beforetherewasnaturalselectiontoacceptorrejectpoten-
their futures and act as though they are indeed perceiving and tialmates,therewasstochasticvariationinencounterswithpoten-
responding to “intertwined set[s] of probability density distri- tialmatesandwithdecision-makers’likelihoodofsurvival.
butions” (see target article, sect. 4.1, para. 3). We say explicitly 2. The encounter probability and survival probability deter-
that animals behave as if playing the odds of fitness against the minethemeanlifetimenumberofmatesandthevarianceinlife-
oddsoftime.Thus,wearguethatanimalsareflexibleindividuals timenumberofmates.
who act behaviorally and physiologically in real ecological time, 3. Potentialmatescomeinn-qualities,wheren=thenumber
not just evolutionary time, to enhance their real-time fitness. ofpotentialmatesinthepopulation.
Could it be that the intertwined set of probability density distri- 4. Mateassessmentisself-referentialanddependsuponinfor-
butionsassociatedwiththemainproblemsofindividuals–surviving mationlearnedduringdevelopmentaboutselfrelativetoothers.
BEHAVIORALANDBRAINSCIENCES(2013)36:3 215
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Figure 1(Gowaty& Hubbell). The hypothesisfor the evolution of adaptivelyflexiblebehavior (modified fromfigures in Gowaty&
Hubbell2005;2009).
5. Individuals update their information to predict adaptive Abstract:Wesuggestthatthehierarchicalpredictiveprocessingaccount
acceptance and rejection of potential mates thereby maximizing detailedbyClarkcanbeusefullyintegratedwithnarrativepsychologyby
instantaneouscontributionstolifetimefitness. situating personal narratives at the top of an individual’s knowledge
Theanalyticalsolutionofwhomtoacceptandrejectformatingis hierarchy. Narrative representations function as high-level generative
models that direct our attention and structure our expectations about
theswitchpointtheorem(SPTinFig.1). unfolding events. Implications for integrating scientific and humanistic
viewsofhumanexperiencearediscussed.
Resistance to our assumptions from behavioral ecologists is
perhaps not surprising, for we begin with individuals, rather Clark’s article presents the hierarchical predictive processing
than sexes, to predict sex differences. What surprises us, accountofhumancognitionasaunifyingmodelforunderstanding
however, is that there are critics who resist our assumption that mind and action. He also highlights the importance of bridging
animals use probabilistic information as instantaneous clues to thisperspectivewithourdaily“folk”or“humanistic”conceptions
predict their next move, which the SPT proved theoretically is ofselfandworld.Weproposethatsuchabridgeisprovidedbythe
adaptive.TheBayesianupdatingthatClarkdescribesasafunda- fieldofnarrativepsychology,withnarrativemodelsoftheworld
mentalaspectofneuralprocessingofwhattheworldis,suggests occupying the highest levels of an individual’s predictive
tousthathisandourideasareconceptuallylinked.Ouruseofthe hierarchy.
Bayesian metaphor suggests that there is something self-similar Agrowingbodyoftheoryandresearchindicatesthatthebroad-
linking proximate and ultimate causes. But, what if animals too estandmostintegrativelevelsofanindividual’sknowledgesystem
areBayesianswithlinkagesbetweenhowandwhybrainsinterpret can be characterized as narrative descriptions of reality (Bruner
theworld? 1986;1991;McAdams1997;Peterson1999;Ricoeuretal.1990;
We agree with Clark. What is on offer is a unified science of Sarbin 1986). Although narratives can take many different
perception, attention, prediction, and flexibility of action. The forms, they are distinguished by their ability to compress and
SPTsuggeststhatfitnessdrivesall.
encode a great deal of information about the world, including
the causal relations between events over time (Graesser et al.
1997), the planning and sequencing of goal-directed actions
(Schank & Abelson 1977), the emotional significance of an
event within a temporal context (Oatley 1992), the unfolding
Personal narratives as the highest level of nature of personal identity (McAdams 1997), and the dynamic
cognitive integration intentions of multiple social agents (Mar & Oatley 2008). It is
the integrative ability of narrative representations to coordinate
vastdomainsofknowledgeandbehaviorthathasledsometheor-
doi:10.1017/S0140525X12002269
ists to propose narrative as an organizing framework for under-
JacobB.Hirsh,aRaymondA.Mar,bandJordanB.Petersonc standing human psychology (Sarbin 1986). Narrative
aRotmanSchoolofManagement,UniversityofToronto,Toronto,ONM5S3E6, representations thus appear to function as high-level generative
Canada;bDepartmentofPsychology,YorkUniversity,Toronto,ONM3J1P3, models of the sort that Clark describes, structuring our expec-
Canada;cDepartmentofPsychology,UniversityofToronto,Toronto,ONM5S tationsaboutdailyexperiencesandprovidinganorganizingframe-
3G3,Canada. workforinterpretingincomingsensoryinformation(Bruner1986;
jacob.hirsh@utoronto.ca www.jacobhirsh.com Mandler 1984). Such representations are particularly crucial for
mar@yorku.ca www.yorku.ca/mar anticipatingthesequentialunfoldingofeventsovertime,allowing
peterson@psych.utoronto.ca www.psych.utoronto.ca/users/ forthepredictionofactionsandoutcomeswithinachainofevents
peterson (Abelson 1981). Integrating narratives into predictive modeling
216 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
means that information consistent with an individual’s currently high-level generative models (instantiated as narrative represen-
active narrative schema will be “explained away” in the fashion tations) is thus one of the core requirements for mental health
that Clark describes; events that were not predicted by the and well-being. Insomuch as the humanities help to provide us
schema,ontheotherhand,willrequiremoredetailedprocessing withnarrativerepresentationsthatcapturetheemotionalvicissi-
andaccommodation. tudesofdailylifeinagivenculturalenvironment(Oatley1999),
Incorporating narrative psychology into the hierarchical pre- they help to orient and constrain our predictive modeling and
dictive processing account brings with it an important advan- provide critical components of our adaptive functioning in the
tage. In particular, narratives provide a point of contact world. Integrating narrative psychology with the predictive pro-
between the predictive processing account and the socio-cul- cessing account thus highlights the importance of humanistic
tural context in which individual minds develop. Narrative rep- approaches for arriving at a complete understanding of human
resentations are fundamentally social in nature, as children are cognitivescience.
socialized to adopt particular modes of narrative thought
during development (Nelson & Fivush 2004). An individual’s
personal narrative representations of the world are selectively
constructed from the many social and public narratives that
Whenever next: Hierarchical timing of
are available within the broader cultural context (Nelson
2003). Inplacingthesenarrativestructuresatthetopofthepre- perception and action
dictive hierarchy, an individual’s cultural context is afforded a
powerfulinfluenceonthetop-downregulationofdomain-specific doi:10.1017/S0140525X12002336
knowledge structures and behavioral patterns (Kitayama &
Cohen 2010). LinusHolmandGuyMadison
More broadly, this hybrid narrative predictive processing DepartmentofPsychology,UniversityofUmeå,90187Umeå,Sweden.
accounthighlightstherelevanceofthehumanitiesforthecogni- linus.holm@psy.umu.se guy.madison@psy.umu.se
tivesciences,suggestingaunifiedframeworkfortheirintegration.
http://www.psy.umu.se/om-institutionen/personal/guy-madison
A primary function of the humanities is elaborating upon the
“manifest”imageoftheworldasitisdirectlyexperiencedbyus, Abstract:Thetargetarticlefocusesonthepredictivecodingof“what”and
incontrasttothe“scientific”imagethatprovidesadepersonalized “where” something happened and the “where” and “what” response to
make. We extend that scope by addressing the “when” aspect of
view of the world (Sellars 1963). Narrative psychology acknowl-
edges the importance of these “manifest” images, as they guide perception and action. Successful interaction with the environment
an individual’s expectations and shape the cascade of cognitive requires predictions of everything from millisecond-accurate motor
timing to far future events. The hierarchical framework seems
operations that give rise to subjectiveexperience. Within such a appropriatefortiming.
framework, a full appreciation of an individual’s subjectivity is
thuscrucialtoadequatelymodelingherconstrualofandreactions Timingintrinsicallyinvolvesprediction.Determiningwhentoact
totheworld. uponafutureeventrequirestheabilitytopredictit.Forinstance,
Althoughhigher-ordernarrativesinfluencecognitiveprocesses, ensemble music performance requires precise estimation of the
the coherence of these narrative representations varies from passage of time in order to synchronize and coordinate sounds
person to person, with some having more clearly articulated tore-producethemusicalstructure.
stories for situating their experiences than others (McAdams Acentralideainthepredictivecodingaccountofcognitionis
2006). A crucial consequence of this variation is that those with that prior knowledge is used to guide sensory interpretations
onlyvaguenarrativerepresentationsoftheworldwillhavemore and action decisions. Identifying the periodicity of an event in
difficulty selectively focusing attention on the most relevant the world is typically an ill-posed problem: How does the
aspects of the environment. From a predictive processing per- agent know beforehand what constitutes the signals that indi-
spective, a lack of narrative coherence will produce an inability cate a period? To infer the beat in a complex musical piece,
togenerateanadequatepredictivemodeloftheworld,hindering or when a quail will reappear from behind a bush, are under-
the ability to “explain away” the majority of the sensory infor- specified problems in the sensory signal. In both cases, prior
mation being received and producing a burdensome processing experience appears necessary to play to the beat or to catch
load. When no high-level generative model is available to ade- the quail.
quatelyanticipatetheongoingunfoldingofevents,thecognitive Anotherkey ideain thepredictivecoding frameworkisinfor-
system can very easily be overwhelmed by the large volume of mation compression. Representing music or other temporally
“error”informationbeingcarrieduptheneuralhierarchy(Hirsh structuredeventsascyclesreducestheentropyinthesignaland
etal.2012).Thishasdownstreamconsequencesfortheindividual, allowsformoreefficientstorage.Actioncanservetofurtherboot-
as a lack of personal narrative integration is associated with straptiming.Forinstance,humansspontaneouslytapalongwith
reduced well-being (Baerger & McAdams 1999). In contrast, theirhandsorfeettomusic(Brown2003)andentraintheirmove-
developingclearlyarticulated narrativeaccountsofone’sexperi- mentstootherpeople’smovements(Demosetal.2012;Merker
encesisassociatedwithanumberofpositivehealthbenefits(Pen- et al. 2009). Just like active interactions with an object improve
nebaker&Seagal1999). perception (Harman et al. 1999), timed activities have been
Althoughtheaffectivesignificanceofpredictionerrorswasnot shown to improve the reliability of temporal perception (Grahn
highlightedinClark’sarticle,thenarrativeaccountanditsbaseof & McAuley 2009; Phillips-Silver & Trainor 2007). A benefit of
subjectivitymakesthisclear,aspredictionerrorscanreflectviola- having induced the rhythm is that violations of rhythm are
tionsofbasiclifeassumptions.Sucherrorsareoftenexperienced easiertodetect(Ladinigetal.2009).
asaversiveandthreatening(Hajcak&Foti2008)andcantriggera Bayesianinferenceoftimingrequirestemporaluncertaintiesto
variety of attempts to minimize or suppress error information berepresented.Thenatureofthetimingsignalremainsopento
(Proulxetal.2012),someofwhichveertowardthepathological debate. One candidate is trace strength that decays with time
(Peterson 1999). The emotional impact of expectancy violations (Buhusi & Meck 2005). A function of decay, trace strength
alsoappearstovarydependingontheleveloftheneuralhierarchy conveys information about the time since it occurred. Another
at which they occur, such that relatively low-level errors are time signal candidate is populations of oscillating neurons.
experiencedasfairlybenignwhileviolationsofone’scorenarra- Timing could then be established by coincidence detection in
tives about the world are often associated with severe forms of the oscillating network (Matell & Meck 2004; Miall 1989).
emotional trauma (Janoff-Bulman 1992). Within the narrative Regardless of the signal format, its representation is noisy and
framework, the ability to flexibly maintain the integrity of one’s its uncertainty should reasonably increase with timing over long
BEHAVIORALANDBRAINSCIENCES(2013)36:3 217
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
durations.Indeed,humantemporalperceptionandproductiondo Two kinds of theory-laden cognitive
deterioratemonotonicallywithtimescale(Buhusi&Meck2005). processes: Distinguishing intransigence
Exactlyhowthehumansystemdealswithtemporalsignaluncer-
from dogmatism
taintyremainsanopenquestion.
Akeynotioninthetargetarticleisthehierarchicaldivisionof
doi:10.1017/S0140525X12002403
labor from bottom sensory to top associative cortical control.
For timing, the scaling of time appears as a likely attribute to EliasL.Khalil
stretch across such a hierarchical structure. Millisecond control
DepartmentofEconomics,MonashUniversity,Clayton,Victoria3800,
ofmotortimingcannotfeasiblybecarriedoutdirectlybythepre-
Australia.
frontalcorticalregionsinvolvedinworkingmemory,duetotrans-
elias.khalil@monash.edu www.eliaskhalil.com
ferspeed,andtheaccumulatedsignalerrorthatsuchanextensive
chainoftransmissionwouldinvolve.Instead,millisecondcontrol Abstract:Thebrainisinvolvedintheory-ladencognitiveprocesses.But
might be represented closer to the action output (e.g., cortical there are two different theory-laden processes. In cases where the
effector representation and the cerebellum) and involve a more theory is based on facts, more facts can either falsify or confirm a
directpathwaybetweensensoryinputandmotoroutput.Incon- theory.Incaseswherethetheoryisaboutthechoiceofabenchmarkor
trast, when observation and action become more detached in a standard, more facts can only make a theory either more or less
time,thewindowofopportunityforplanningopensup,involving warranted.
moreprefrontalprocessing.
Consistently,manystudiessupporttheviewthatthereisadis- Clarkoffersareviewofaviewofthebrainwherethebrainpro-
tinction in neural representation, for example, above and below cessesinputinformationinawaythatconfirmsitspriorsoritspre-
about one second (Gooch et al. 2001; Lewis & Miall 2003; dictions.Thisdoesnotmeanthatthebraincreatesitsownreality.
Madison 2001). Furthermore, time representation for sub- Thebrain,rather,processesinputdata,butitdoessoinlightofits
second intervals appears at least to some extent to be sensory own priors. The brain is a bidirectional hierarchical structure.
specific(Morroneetal.2005; Nagarajanetal.1998), andunder While the top layers generate priors, the lower layers process
some conditions even limited to spatial locations (Burr et al. input data. The brain amounts to the dynamics of image-
2007; Johnston 2006). Additionally, there appear to be break- making, where the top-down process generates unified images,
pointsinintervaldiscriminationsuchthattherearescalarproper- while the bottom-up process, which takes data, corrects the
tiesintimingperformanceforintervalsaboveaboutonesecond, images.
but nonlinear relationships between time and perception below Suchaniterativecognitiveprocessisnotsimple.Thetop-layer
one second (Karmarkar & Buonomano 2007; Rammsayer generatedpriorsgreatlydeterminetheassimilatedinputs.Butthe
1999)–further supporting the notion that longer time intervals input data are not fully manipulated by the priors. As such, it is
are controlled by different brain regions from those involved in best to characterize the brain as a medium that tries to balance
sub-secondtiming.Also,withlongertimeperiodsunderconsider- betweentwocompetingneeds:First,thebrainneedstogenerate
ation,alargerpartoftheprefrontalcortexgetsactivated(Lewis& a unified, that is, meaningful, image of the real world. The top
Miall2006; Simonsetal.2006).This timing-relatedfrontal lobe layers, which generate the priors or the predictions, function to
network is also largely overlapping with those employed by fulfilltheneedforunity.Second,thebrainneedstoaccommodate
working memory and executive control processes (Jahanshahi raw input data to stay as truthful as possible to the given real
etal.2000;Owenetal.2005),suggestingthattimingconstitutes world.Ifthebrainperformsonlythefirstfunction,thatis,preser-
a general cognitive control problem at longer time durations. vingtheunityoftheimage,thebrainwouldgenerateimagesthat,
The hierarchical organization from accurate and dedicated although unified, are disconnected from reality. On the other
timing devices at sensory levels and less accurate but flexible hand, if the brain performs only the second function, that is,
timing at longer time frames in the prefrontal cortex might be preserving the details of the world, the brain would generate
accounted for by signal averaging in the time domain from images that, although detailed, are tremendously messy and
sensorytofrontalcorticalregions(Harrisonetal.2011).Harrison meaningless.
and colleagues suggested that decay rate is faster close to the As a result of trying to meet these two competing needs, the
sensoryinputlevelandsloweratlaterstagesinthevisualhierar- images that cognitive processes generate are theory-laden. This
chy, thus allowing for a differentiation across time scale and has long been understood by the emerging new philosophy of
brain region. Taken together, there is abundant support for the science, most epitomized by the contribution of Thomas Kuhn,
differentiation of brain regions involved in timing at different andcanevenbetracedtoImmanuelKant.Thisisnottheplace
timescales. toreviewthehistoryofphilosophyofscience,characterizedulti-
Communication of temporal information across the levels of mately as a conflict between rationalism (demanding unity of
the outlined timing hierarchy is currently rather unclear. Intui- image) and empiricism (demanding detailed images) (see Khalil
tively,themoretemporallyextendedcontrolprocessesassociated 1989).WhatisgermanehereisthatClarkfailstonotetwodiffer-
with prefrontal working memory processes might still influence entkindsoftheory-ladencognitiveprocesses:thefirst,whichcan
control at shorter time frames without interfering in direct becalled“perception-laden”processes,whereone’stheorycanbe
control, such as in initiation of a drumming exercise, without ultimatelycorrected by sensory input; the second, whichcan be
employingmomenttomomentvolitionalcontroloftheindividual called “conception-laden” processes, where one’s theory cannot
beats. Recent findings from our research group suggest that beultimatelycorrectedbysensoryinput.
executive functions are indirectly related to motor timing via, Perception-laden beliefs, for example, let one predict stormy
forexample,effectorcoordination(Holmetal.,inpress).Further- weather or that the Earth is flat. In light of sensory input, and
more,thereisawell-establishedyetpoorlyspecifiedrelationship using Bayes’ rule, one may adjust such a prediction and reach
between intelligence and simple motor timing (Galton 1883; the conclusion that the weather will be stable and the Earth is
Madisonetal.2009).Moreresearchisclearlyneededtoidentify round.Manypeoplemaynotadjustquicklyandinsiston“explain-
howhigh-leveltemporalexpectationsmightinfluencebriefinter- ing away” the data to justify their priors. But such manipulation
valtiming.Anotherimportantquestionishowthebrainidentifies can be delineated from the normal course of belief adjustment.
the time scales from noisy input and learns how to treat those When perception-laden processes are at issue, priors must ulti-
signals. The predictive account of cognition seems like a useful mately adjust to correspond to the mounting evidence. The
theoreticalframeworkforunderstandingtiming,andtheBayesian legal system, and everyday science, cannot function without the
formalism is a promising tool to investigate and explain its adherencetothepossibilityofbelief-freegroundsthatcanallow
operation. sensorydata,inthefinalanalysis,todominatetop-downpriors.
218 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
Conception-laden beliefs, for example, let one view a picture theories of cognition. For illustration we consider the visual
such as the famous Rubin Vase, where the brain switches neurosciences, a paradigmatic field for the investigation of
between perceiving the vase and perceiving the two profiles. sensory processes. A discourse given by standard textbooks
The image depends on what the brain judges to be the back- depictsaworldexternaltotheagent,withasetofpre-established
ground. If the background is judged to be white, the brain sees attributesandobjects.Sensoryprocessingstartswithtransmitting
the two profiles. If the background is judged to be black, the theseattributesbylow-levelneuronstosubsequentstages.There,
brainseesthevase.Noamountofdatacancompelthetoplevel moreelaboratecomputationsextractpatternsofstimulusfeatures
hierarchy of the brain to abandon its prior. The prior here andobjects.Uptothispoint,processingfocusesonaveridicalrep-
cannot be confirmed or refuted by evidence because it is not resentation of the external world,serving for later decisionsand
based on evidence as with perception-laden processes. The actions.Weargueinfavorofaradicalchangeofthisview,assign-
choice of background, the basis of conception, is similar to the ingacentralroletopredictionsofsensoryconsequencesofone’s
choiceofabenchmark,whereonecanjudgeaglasstobeeither own actions and thereby eliminating the strict separation of
half-fullorhalf-empty.Likewise,onejudgesone’sincomeassat- sensoryandmotorprocessing.
isfactoryornon-satisfactorydependingonone’sbenchmark.Hap- In the target article, Andy Clark beautifully describes the
piness seems to depend, at least partially, on the choice of an central role of predictions in sensory processing. We endorse
arbitraryincomeasthebenchmarkincome. thisview–yettwocomplementaryaspectsareneeded.First,pre-
The conflation of the perception- and conception-laden pro- dictability of sensory signals serves as a normative principle
cesses leads to the commitment of a Bayesian fallacy. The guiding sensory processing and as a boundary constraint in the
fallacy arises from the supposition that all beliefs are percep- selectionofinformationtoprocess.Second,predictionsareper-
tion-laden and, hence, can be corrected by further empirical formed only in the context of the agents’ action repertoire
investigation (Khalil 2010). It is imperative to distinguish con- (König & Krüger 2006). These two specifications have crucial
ceptionsfromperceptions.Asidefromallowingustounderstand implications.
happiness, the distinction sheds light on two kinds of stubborn- Theinformationcontentoftheprimarysensorysignalisenor-
ness:intransigence,relatedtoperception-ladenbeliefs,anddog- mous,andextractionofinformationwithoutfurtherconstraintis
matism, related to conception-laden beliefs. Belief in a flat an ill-posed problem. However, it is not the task of the sensory
Earthandinconspiracytheoriesillustratesintransigence.Incon- systems to process all possible details, and a reduction of infor-
trast,toinsistonabackground,despitetherisingevidencetothe mationisparamount.Eveninsimplemodelsystems,takinginto
contrary,illustratesdogmatism.TousetheRubinVaseexample,if account a limited behavioral repertoire converts demanding
a person chooses the black as the background and, hence, the sensory processing into a tractable problem (Wyss et al. 2004).
imageisthevase,butcontinuestochoosetheblackdespitecon- Applying the normative principle of predictability generalizes
trary added evidence–such as added eyes and moustache–the this idea and serves as a selection criterion for features to
personwouldbedogmatic.Whilethedogmaticbeliefcannotbe processandvariabilitytoignore.Indeed,withinthehierarchyof
judgedastrue orfalse,itcanbejudged aswarrantedorunwar- the visual system, neuronal response properties are invariant to
rantedgiventhedetailsoftheprofiles.Thechoiceofbackground, more and more parametric changes of the sensory input
to remind ourselves, is non-empirical and, hence, cannot be (Tanaka 1996). Even category learning at higher levels of the
characterizedastrueorfalse. visualsystemcanbeinterpretedwithinthisframework.Thecom-
monalitiesbetweendifferentinstancesofthesamecategoryrelate
tosimilarsensorimotorpatternsgeneratedbytheinteractionwith
these“objects.”Finally,actionsaredirectlyrelatedtotheagent’s
survivalandtherebyprocessingfeaturesthatchangepredictably,
Predictions in the light of your own action given chosen actions, are more relevant than those that do not.
repertoireasageneralcomputationalprinciple Hence, processing of sensory signals is guided by the relevance
forbehavior,andrelevanceisexpressedbytheabilitytopredict
doi:10.1017/S0140525X12002294 sensorychangescontingentontheownactionrepertoire.
A paradigm is based on the active interpretation of incoming
PeterKönig,a,bNiklasWilming,aKaiKaspar,a sensory information such that it makes sense for the agent.
SaskiaK.Nagel,aandSelimOnatc Hence, it is intended to replace a passive representationalist
aInstituteofCognitiveScience,UniversityOsnabrück,49076Osnabrück, view. In such a paradigm, the predicted future state of the
Germany;bDepartmentofNeurophysiologyandPathophysiology,University worldisimportantinsofarasitinteractswithownactionsandvari-
MedicalCenterHamburg-Eppendorf,20251Hamburg,Germany; ablesofimportanceareco-determinedbytheactionrepertoire.A
cDepartmentofSystemsNeuroscience,UniversityMedicalCenterHamburg- demonstration of the integration of new sensory information
Eppendorf,20251Hamburg,Germany. (magnetic north) that is co-determined by own movements
koenig@uni-osnabrueck.de nwilming@uni-osnabrueck.de (yaw-turns) is given by the feelSpace project (Kärcher et al.
kkaspar@uni-osnabrueck.de snagel@uni-osnabrueck.de 2012; Nagel et al. 2005). Comparing different species, for
sonat@uos.de example, cat and human, with similar visual input (Betsch et al.
http://cogsci.uni-osnabrueck.de/∼NBP/ 2004; Einhäuser et al. 2009), the remarkable differences in the
http://cogsci.uni-osnabrueck.de/∼nwilming/ sensoryhierarchyappeartobeatoddswithapassiverepresenta-
http://kai-kaspar.jimdo.com/ tionalist view and await an explanation. Here, differences in be-
http://cogsci.uni-osnabrueck.de/en/changingbrains/people/saskia havioral repertoire offer themselves. Pointedly, we speculate
www.selimonat.com that the huge action repertoire of humans, due to, for example,
opposablethumbs,mightfostertheillusionofaveridicalpercep-
Abstract: We argue that brains generate predictions only within the tionoftheworld.Ithasbeenemphasizedearlyonthatcognitive
constraints of the action repertoire. This makes the computational
andmotorcapabilitiesdevelopinparallelandmutualdependence
c se o n m so p r le y x a it n y d tr m ac o t t a o b r le sy a s n te d m f s o . s H te e rs nc a e, st i e t p is -b m y- o st r e e p of pa a ra b l e le n l e d fi e t v t e h l a o n pm a e li n t t er o a f l (Piaget 1952). To grow up means to harden specific action rou-
tines,ontheonehand,buttolosethebulkofalternativeaction
constraint and may serve as a universal normative principle to
understandsensorimotorcouplingandinteractionswiththeworld. capabilitiesand cognitiveflexibility,onthe otherhand. Further-
more, a large variability of perceptual interpretation of identical
Presentcognitivescienceischaracterizedbyadichotomysepar- physical stimuli is found between humans of the same culture
ating sensory and motor domains. This results in a perceived area aswell asbetween differentcultures (Segallet al. 1963). A
gap between perception and action and is mirrored in leading critical view of our own culture reveals many aspects that serve
BEHAVIORALANDBRAINSCIENCES(2013)36:3 219
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
toincreasethereliabilityofpredictions.Insummary,agentswith predicting sensory inputs becomes trivial and precise. In
identical sensory organs but different action repertoires might response, Clark suggests that “animals like us live and forage
haveverydifferentviewsoftheworld. in a changing and challenging world, and hence ‘expect’ to
Istheconceptofnormativeprinciplesplausibleinviewofour deploy quite complex ‘itinerant’ strategies” (sect. 3.2, para. 2).
knowledgeofcorticalnetworks?Neuronalcomputationsarecon- At first, this response seems tautological: We act so that we
strained by properties of the brain in the form of number of can predict the outcome of our actions; we predict that our
neurons and synapses, and space and energy consumption. The actions will be complex and interesting; and therefore we act
latter has served as an argument for sparse coding–that is, low in complex and interesting ways. The tautology is broken by
meanactivityatconstantvarianceofactivity(Barlow1961).The invoking a prior expectation on action, one presumably hard-
insight that receptive fields of simple cells in primary visual wired and selected for by evolutionary pressures. But, such an
cortex form such an optimally sparse representation of natural assumption would seem to remove the explanatory power of
imagesdrasticallyincreasedinterestinnormativemodels(Olshau- the MPE principle in describing complex behaviors. Further-
sen & Field 1996; Simoncelli & Olshausen 2001). Properties of more, it goes against the common view that the evolutionary
the second major neuron type in primary visual cortex, complex advantageofthebrainliesin theabilitytobeadaptiveandalle-
cells, can be understood along similar lines as optimizing stable viate much of the need for hardwired pre-programming (pre-
representations (Berkes & Wiskott 2005; Körding et al. 2004). expectations) of behavior. A more satisfying solution to the
Importantly, both optimization principles can be easily “Dark Room Dilemma” may potentially be found in a different
implementedbyrecurrentconnectivitywithinacorticalarea(Ein- information theoretic interpretation of the interaction between
häuseretal.2002).Hence,existingnormativemodelsoftheearly action and perception.
visualsystemareplausibleinviewofanatomicalandphysiological Clark turns to the free-energy formulation for an information
data. theoretic interpretation of the MPE principle (Friston &
Acriticaltestoftheconceptwillbetheapplicationwellbeyond Stephan 2007). Within this framework, average prediction error
processingintheprimaryvisualcortex.Thestepfromsparseness is captured by the information theoretic measure entropy,
andstabilitytopredictabilityasanoptimizationprinciplerequires which quantifies an agent’s informational cost for representing
criticalextensions.Phillipsetal.(1995)putforwardaveryprom- the sensory input by its internal model. An alternative quantifi-
isingproposal:Coherentinfomaxselectsandcoordinatesactivities cation of the predictive accuracy of an internal model would be
as a function of their predictive relationships and current rel- toconsiderits mutualinformation(MI)withthesensoryinputs.
evance. The relation of this approach (see Phillips’ commentary MIquantifiestheinformationsharedbetweentwodistributions–
in this issue) to the free energy principle (Friston 2010) and in this case, the informational content the internal states of the
optimal predictability (König & Krüger 2006) has to be investi- brain hold regarding its future sensory inputs. MI and entropy
gated. These developments hold the promise to apply to areinasenseconversesofoneanother.Entropyistheinforma-
“higher” cognitive functions as well as giving rise to a true tionalcostofa(bad)internalmodel,whileMIistheinformational
theoryofcognitivescience. gainsofa(good)internalmodel.Whenselectingamodel,mini-
mizingentropyandmaximizingMIbothyieldminimalprediction
error.Whenselectingactions,however,thesetwoprinciplesyield
verydifferentresults.
Actions allow an agent, through the sensor-motor loop, to
Maximal mutual information, not minimal
change the statistics of its sensory inputs. It is in response to
entropy, for escaping the “Dark Room” suchchangesthattheprinciplesofmaximizingMIandminimizing
entropydiffer.Thisdifferencecanbehighlightedbyahypotheti-
doi:10.1017/S0140525X12002415 calextreme,inwhichanagentacts toremoveallvariationin its
sensory inputs–that is, it dwells in a “Dark Room.” Here, a
DanielYing-JehLittleandFriedrichTobiasSommer trivial model can perfectly predict sensory inputs without any
RedwoodCenterforTheoreticalNeuroscience,UniversityofCalifornia– informationcost.Entropythusgoestozerosatisfyingtheprinciple
Berkeley,Berkeley,CA94720-3198. of minimal entropy. Similarly, MI also goes to zero in a Dark
dylittle@berkeley.edu fsommer@berkeley.edu Room.Withoutvariationinsensoryinputsthereisnoinformation
http://redwood.berkeley.edu/wiki/Daniel_Little fortheinternalmodeltotrytocapture.Thisviolatesthemaximal
http://redwood.berkeley.edu/wiki/Fritz_Sommer MIprinciple. Instead,of entering a“DarkRoom,”an agentfol-
lowing a principle of maximal MI would seek out conditions in
Abstract:Abehavioraldrivedirectedsolelyatminimizingpredictionerror which its sensory inputs vary in a complex, but still predictable,
would cause an agent to seek out states of unchanging, and thus easily
fashion. This is because MI is bounded below by the variability
predictable, sensory inputs (such as a dark room). The default to an
in sensory input and bounded above by its ability to predict.
evolutionarily encoded prior to avoid such untenable behaviors is
Thus,MIbalancespredictabilitywithcomplexity.Passively,max-
unsatisfying. We suggest an alternate information theoretic
interpretationtoaddressthisdilemma. imizing MI accomplishes the same objective as minimizing
entropy,namelythereductionofpredictionerror,butactivelyit
We would like to compliment Clark for his comprehensive and encouragesanescapefromtheDarkRoom.
insightful review of the strengths and limitations of hierarchical Theprediction–complexitydualityofMIanditsimportanceto
predictive processing and its application to modeling actions as learninghasbeenarecurringfindingincomputationalmethods.
well as perception. We agree that the search for fundamental Important early implementations of a maximal MI principle in
theoretical principles will be key in explaining and uniting the modelingpassivelearningincludetheComputationalMechanics
myriad functions of the brain. Here, we hope to contribute to approach for dynamical systems of Crutchfield and Young
the discussion by reconsidering a particular challenge to the (1989) and the Information Bottleneck Method of Tishby et al.
minimum prediction error (MPE) principle identified by Clark, (1999)foranalyzingtimeseries.Recently,theInformationBottle-
which we dub the “Dark Room Dilemma,” and by offering an neckmethodhasbeenextendedtoactionselectionbyStill(2009).
alternate solution that captures both the drive to reduce errors Further,thePredictiveInformationModelofAyetal.(2008)has
andthedrivetoseekoutcomplexandinterestingsituations. shownthatcomplexbehaviorscanemergefromsimplemanipula-
As described by Clark, a common challenge to extending the tions of action controllers towards maximizing the mutual infor-
principleofminimumpredictionerror(MPE)toactionselection mation between states. And our own work utilizes MI to drive
is that it would drive an animal to seek out a dark room where exploratorybehaviors(Little&Sommer2011).
220 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
The principle of minimum prediction error and the related forpredictivebrainprocessingbeforestimulusonsetandimpor-
hierarchical prediction models offer important insights that tant information about cortico-cortical communication would
should not be discounted. Our aim is not to suggest otherwise. remainconcealed.Motivatingthesearchforpredictivesignalsin
Indeed, we favor the view that hierarchical prediction models thesystemisthereforeanotherimportantcontributionofthecon-
could explain the motor implementation of intended actions. ceptualframework.
But we also believe its explanatory value is limited. Specifically, Concrete level description. On the concrete conceptual level,
it would be desirable for a theoretical principle of the brain hierarchical cortical prediction provides a scaffold on which we
to address and not spare the intriguing question of what can constrain variants of predictive coding models. Predictions
makesanimals,eventhesimplestones,ventureoutoftheirdark are proposed to explain away the incoming signal or filter away
rooms. the unexpected noise (Grossberg 2013). Rao and Ballard (1999)
proposed a model in which forward connections convey predic-
tionerrorsonly,andinternalmodelsareupdatedonthebasisof
the prediction error (Rao & Ballard 1999). Grossberg on the
otherhandproposesAdaptive ResonanceTheory(ART)models
Backwards is the way forward: Feedback in
that update internal models based on recognition error. It
the cortical hierarchy predicts the expected remains an empirical question which combination of these
future models suffices to explain the rich and diverse cortical response
properties. A recent brain imaging study shows that under con-
doi:10.1017/S0140525X12002361 ditionsoffacerepetition,somevoxelsshowrepetitionsuppression
consistent with the concept that the prediction error is reduced
LarsMuckli,LucyS.Petro,andFraserW.Smith with every repetition of the identical image, while others (30%)
CentreforCognitiveNeuroimaging,InstituteofNeuroscienceandPsychology, show repetition enhancement (De Gardelle et al. 2012). Rep-
UniversityofGlasgow,GlasgowG128QB,UnitedKingdom. etition enhancement in a subpopulation of fusiform face area
Lars.Muckli@glasgow.ac.uk lucyp@psy.gla.ac.uk (FFA)voxelscouldreinforcetheinternalmodelofthefaceiden-
Fraser.Smith@glasgow.ac.uk http://muckli.psy.gla.ac.uk/ tity and be used to stabilize the prediction. The claim that the
brain is a prediction machine might be true regardless of the
Abstract:Clarkoffersapowerfuldescriptionofthebrainasaprediction preciseimplementationofpredictivecodingmechanism.Internal
machine,whichoffersprogressontwodistinctlevels.First,onanabstract modelsmightupdateonerror,stabilizeonconfirmationorscruti-
conceptuallevel,itprovidesaunifyingframeworkforperception,action, nize on attention (Hohwy 2012). A recent brain imaging study
andcognition(includingsubdivisionssuchasattention,expectation,and
investigated whether expectation induced signal suppression
imagination). Second, hierarchical prediction offers progress on a
coincideswithsharpeningoftheunderlyingneuronalcode(Kok
concrete descriptive level for testing and constraining conceptual
et al. 2012). Consistent with the predictive coding framework,
elements and mechanisms of predictive coding models (estimation of
predictions,predictionerrors,andinternalmodels). auditory-cuedstimuliledtoreducedV1fMRIactivity.Although
the overall activity was reduced, the activation profile was more
Abstractleveldescription.Understanding the brain as a predic- distinct, “sharpened,” for the expected conditions as measured
tion machine offers a compelling framework for perception, using multivariate decoding analysis. The study concludes that
action, and cognition. Irrespective of the neuronal implemen- expectationhelpstoexplainawaythesignalwhileattentionampli-
tation,theframeworkascribesafunctiontointernalmodelsand fies the remaining prediction error (Hohwy 2012; Spratling
neuronalprocessestobestpreparefortheanticipatedfuture.At 2008b).
an abstract level, the predictive coding framework also draws Another concrete level aspect of predictive coding relates to
attentiontotwoblindspotsinneuroscience:(1)internalcortical the question of spatial precision. Are the back-projected predic-
communication (i.e., maintaining internal models) and (2) the tions at the precision level of the “sending” brain area (i.e.,
brain processes prior to stimulation onset (i.e., predictive coarse), or at the precision level of the “receiving” brain area
processing). (i.e., spatially precise)? We have evidence in favor of both; V5
Astartingpointtoexploreinternalcommunicationisbyinves- feedback signals spread out to a large region in primary visual
tigatingcorticalfeedback(VanEssen2005;Muckli&Petro2013). cortex (de-Wit et al. 2012; Muckli et al. 2005) but spatio-tem-
Conventional paradigms struggle, however, to isolate cortical poral predictions in V1 which have been relayed by V5 can
feedbackduringsensoryprocessing(whichincludesbothfeedfor- also be spatially precise (Alink et al. 2010). The optimal way to
ward and feedback information). We have demonstrated such account for this discrepancy is by assuming an architecture that
separationbyblockingfeedforwardstimulationusingvisualocclu- combinescoarsefeedbackwiththelateralspreadoffeedforward
sion and reading out rich information content (multivariate pat- signals (Erlhagen 2003). If this principle holds true, it helps to
terns) from within non-stimulated regions of the retinotopic explain why the architecture of cortical feedback as described
cortex (which receive cortical feedback activation; Muckli & by Angelucci et al. (2002) contributes to precise predictions
Petro2013;Smith&Muckli2010).Bydecodingcorticalfeedback, even though it is divergent.
we begin to shed light on internal processing. With regard to The examples above show that on an abstract level important
investigating brain processes prior to stimulationonset, we have new research is motivated by the hierarchical predictive coding
shownthatmotionpredictionsarecarriedovertonewretinalpos- framework and on a concrete conceptual level, the many inter-
itions after saccadic eye-movements (Vetter et al. 2012), which actions of cortical feedback of predictions, processing of predic-
confirms that saccadic updating incorporates predictions gener- tion errors, and different accounts of feedforward connections
ated during pre-saccadic perception. This is an important proof (some stabilizing the internal model, others explaining away
of concept of predictive coding in saccadic viewing conditions. signal discrepancies) await further empirical scrutiny. However,
Moreover, Hesselmann et al. (2010), have shown that variations the developing narrative of predictive coding becomes increas-
in baseline activity influence subsequent perception, and a inglycompellingwithattentionfromsophisticatedhumanneuroi-
causal role of V5 in generating predictions sent to V1 can be maging and animal neurophysiological studies (Muckli & Petro
demonstrated using transcranial magnetic stimulation (TMS). 2013).Notonlyisextendingourknowledgeofcorticalfeedback
Pilot data show that TMS interferes with predictive codes anditsencapsulatedpredictionsessentialforunderstandingcorti-
during the baseline prior to stimulation onset (Vetter et al., calfunction,butimportantopportunitieswillarisetoinvestigate
under revision). If the brain would be seen as a “representation deviationsofpredictivecodinginagingandneuropsychiatricdis-
machine”insteadofa“predictionmachine,”onewouldnotlook easessuchasschizophrenia(Sandersetal.2012).
BEHAVIORALANDBRAINSCIENCES(2013)36:3 221
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Skull-bound perception and precision there and then to ensure optimal encoding. Precisely because
optimization through culture the mind is destined to be behind the veil of sensory input,
itthenmakessenseforittodevisewaysofoptimizingtheinfor-
doi:10.1017/S0140525X12002191 mation channel from the world to the senses. Thus, through
activeinferencepredictionerrorisminimized,notonlybyselec-
BryanPaton,aJoshSkewes,bChrisFrith,candJakobHohwya tive sampling, but also by optimizing its precision: removing
aPhilosophyandCognitionLaboratory,PhilosophyDepartment,Monash sourcesofnoiseintheenvironmentandamplifyingsensoryinput.
University,Clayton,VIC3800,Australia;bDepartmentofCultureandSociety, Manyofthetechnical,socialandculturalwaysweinteractwith
AarhusUniversity,DK8000AarhusC,Denmark,andInteractingMindsCentre, the world can be characterized as attempts to make the link
AarhusUniversityHospital,DK8000AarhusC,Denmark;cInstituteof betweensensoryinputandenvironmentalcauseslessvolatile.We
Neurology,UniversityCollegeLondon,London,WC1E6BT,andAllSouls see this in the benefits of the built environment (letting us
College,OxfordUniversity,OxfordOX14AL,UnitedKingdom. engageinactivitiesunperturbedbywindandweather),intechnical
Bryan.Paton@monash.edu filjcs@hum.au.dk c.frith@ucl.ac.uk andelectronicdevices(radioletsushearthingsdirectlyratherthan
Jakob.Hohwy@monash.edu through hearsay), and in language (communicating propositional
https://sites.google.com/site/bryanpaton/home content). This picture relies on the internal nature of the neural
http://www.cfin.au.dk/menu538-en
mechanism that minimizes prediction error, relative to which all
https://sites.google.com/site/chrisdfrith/Home ourculturalandtechnologicaltrappingsareexternal.Cultureand
https://sites.google.com/site/jakobhohwy/ technologysituatethemindclosertotheworldthroughimproving
the reliability of its sensory input. But perception remains an
Abstract:Clarkacknowledgesbutresiststheindirectmind–worldrelation
inferredfantasyaboutwhatliesbehindtheveilofinput.
inherentinpredictionerrorminimization(PEM).Butdirectnessshouldalso
Bymaintainingfocusontheinternalnatureofperceptualpro-
beresisted.Thiscreatesapuzzle,whichcallsforreconceptualizationofthe
cesses,inthiscausalsetting,wecanappreciateanotherperspec-
relation.Wesuggestthatacausalconceptioncapturesbothaspects.With
this conception, aspects of situated cognition, social interaction and tive on social interaction and culture than the “mutual
culturecanbeunderstoodasemergingthroughprecisionoptimization.
predictionerrorreduction”thatClarkrightlypointsto.
AsLockeinsisted,communicationisthesharingofeachother’s
AndyClarkacknowledgesthe“challengingvision”ofpredictionerror
hiddenideas.Ideasarewell-hiddencauses,soPEMisthetoolfor
minimization(PEM),accordingtowhichrepresentationisinnerand inferring them through a mix of prediction (“after saying A, he
skull-bound such that perception is a fantasy that coincides with tendstosayB”)andactiveinference (askingsomethingtoelicita
reality (Frith 2007). This view does not require homunculi and predictedanswer).Anoverlookedaspecthereishowthisisfacili-
sense-databutdoesconveyasomehowindirectmind–worldrelation. tatednotjustbyrepresentingtheother’smentalstatesbutalsoby
Clarkresistsindirectness.HestatesthatPEM“makesstructur-
aligningourmentalstateswitheachotherinaprocessofneuralher-
ing our worlds genuinely continuous with structuring our brains meneutics–a fusion of expectation horizons. We do this, not to
andsculptingouractions”(sect.3.4,para.1),andthat“whatwe
change thesensoryinputitself,buttoenhance theprecisionwith
perceive is not some internal representation or hypothesis but whichwecanprobeeachother’scurrentmentalstates,perhapsto
(precisely)theworld”(sect.4.4,para.3,emphasisClark’s).
such an extent that the receiver in a social interaction ends up
Thesentimentisright,butcautionaboutdirectnessisneeded. having more precise information about the sender’s mental states
Withoutindirectnessweignorehowthemindisalwaysprecariously thanthesenderhim-orherself(Frith&Wentzer,inpress).
hostagetotheurgetoriditselfofpredictionerror.Thisurgeforces Perhapsculturetoo,inaverywidesense,canbeseenas,atleast
veryimprobableandfantasticalperceptionsuponuswhentheworld partly, a tool for precision optimization through shared context.
doesnotcollaborateinitsusual,uniformway.Forexample,inthe Ritual,convention,andsharedpracticesenhancemutualpredict-
contemporary swathe of rubber-hand and full-body illusions, we ability between people’s hidden mental states. This wouldmake
easilyandcompellinglyexperiencehavingarubberhand(ortwo), sense of cultural diversity because this process is concerned
occupyinganother’sbodyoralittledoll’sbody,orhavingmagnetic
with signal reliability rather than with what the signals are
forces or spectral guns operating on our skin (Hohwy & Paton about, and there are many different ways of using cultural tools
2010;Lenggenhageretal.2007;Petkova&Ehrsson2008).More- to align our mental states. Furthermore, when precision has
over, more stable and fundamental aspects of mind, such as our been optimized, alignment enables simple, information rich sig-
senseofagency,privilegedaccesstoself,andmentalizing,allseem nalingandtherebycommunicationefficiency.
tomakesenseonlyintermsofperceptualfantasizing(Frith2007). Ifalignmentofmentalstatesisanintegralpartofhowculture
Thisleavesapuzzle.OnPEM,theperceptualrelationcannotbe optimizes precision and communication efficiency, then culture
direct. But neither is it wholly indirect. The challenge is then to shouldbeseenasprovidingasetofframeworksforinterpretation,
reconceive the mind–world relation to encompass both aspects. ratherthanmerelyforscaffoldinginterpretation.Ifthebrainisa
Wesuggestacausalconception,anduseitsinternalaspecttolever- hierarchical Bayesian network providing a perceptual fantasy of
ageanunderstandingofsituatedandsocialcognition. theworld,thenculturedeterminesandconstrainsthehyperpriors
Theimplicitinversionofagenerativemodelhappenswhenpredic- neededbysuchaneuralsystem.
tionerrorisminimizedbetweenthemodelmaintainedinthebrain
andthesensoryinput(howtheworldimpingesonthesenses).This
yieldscausalinferenceonthehiddencauses(thestatesofaffairsin
theworld)ofthesensoryinput.Thisisadistinctlycausalconception
ofhowthebrainrecapitulates–providesamultilayeredmirrorimage Neuronal inference must be local, selective,
of–thecausalstructureoftheworld.Thisrepresentationalrelationis
and coordinated
direct in the sense that causation is direct: There is an invariant
relation between the model and world, such that, given how the doi:10.1017/S0140525X12002257
model is, it changes in certain ways when the world changes in
certainways.But,seenfromtheinside,thereisindirectnessinthe WilliamA.Phillips
sensethatcausalrelataaredistinctexistences,givingrisetoaneed PsychologyDepartment,UniversityofStirling,FK94LAStirling,Scotland,
forcausalinferenceonhidden,environmentalcauses. UnitedKingdom,andFrankfurtInstituteofAdvancedStudies,60438Frankfurt
Though the brain can optimize precisions on its prediction amMain,Germany.
error, it is hostage to the causal link from environmental causes wap1@stir.ac.uk
to sensory input. If the variance in the signal from the world to http://www.psychology.stir.ac.uk/staff/staff-profiles/honorary-staff/bill-
the senses is large, then there is only so much the brain can do phillips
222 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
Abstract: Life is preserved and enhanced by coordinated selectivity in relevance. This is emphasized by the theory of Coherent
local neural circuits. Narrow receptive-field selectivity is necessary to Infomax (Kay et al. 1998; Kay & Phillips 2010; Phillips et al.
avoid the curse-of-dimensionality, but local activities can be made 1995), which synthesizes evidence from neuroanatomy, neuro-
coherent and relevant by guiding learning and processing using broad
physiology, macroscopic neuroimaging, and psychophysics (Phil-
coordinating contextual gain-controlling interactions. Better
lips & Singer 1997; von der Malsburg et al. 2010). That theory
understanding ofthe functionsand mechanisms of thoseinteractions is
is further strengthened by evidence from psychopathology as
thereforecrucialtotheissuesClarkexamines.
reviewed by Phillips and Silverstein (2003), and extended by
MuchinClark’sreviewisoffundamentalimportance.Probabilistic manysubsequentstudies.KördingandKönig(2000)arguefora
inferenceiscrucialtolifeingeneralandneuralsystemsinparticular, closelyrelatedtheory.
butdoesithaveasinglecoherentlogic?Jaynes(2003)arguedthatit Free-energy theory (Friston 2010) and Coherent Infomax
does,butforthatlogictoberelevanttobraintheory,itmustbe assumethatgoodpredictionsarevital,andformalizethatassump-
shown how systems built from local neural processors can tionasaninformationtheoreticobjective.Thoughthesetheories
performessentialfunctionsthatareassumedtobetheresponsibility
havesuperficialdifferences,withCoherentInfomaxbeingformu-
ofthescientistinJaynes’theory(Fiorillo2012;Phillips2012). latedattheneuronalratherthanthesystemlevel,itmaybeposs-
Mostcrucialofthosefunctionsareselectionoftheinformation ible to unify their objectives as that of maximizing prediction
relevanttotheroleofeachlocalcellormicrocircuitandcoordi- success,which,underplausibleassumptions,isequivalenttomini-
nation of their multiple concurrent activities. The information mizingpredictionerror(Phillips&Friston,inpreparation).For-
available to neural systems is so rich that it cannot be used for mulatingtheobjectiveasmaximizingtheamountofinformation
inference if taken as a single, multi-dimensional whole because correctly predicted directly solves the “dark-room” problem dis-
the number of locations in multi-dimensional space increases cussed by Clark. That objective, however, does not necessarily
exponentially with dimensionality. Most events that actually implythatpredictionerrorsarethefundamentalcurrencyoffeed-
occurinhigh-dimensionalspacesarethereforenovelanddistant forwardcommunication.Inferencescouldbecomputedbyredu-
frompreviousevents,precludinglearningbasedonsampleprob- cing prediction errors locally, and communicating inferences
abilities. This constraint, well-known to the machine-learning more widely (Spratling 2008a). That version of PC is supported
community as the curse-of-dimensionality, has major conse- by much neurobiological evidence, though it remains possible
quences for psychology and neuroscience. It implies that for thatneuralsystemsusebothversions.
learning and inference to be possible large data-bases must be Anotherimportantissueconcernstheobviousdiversityofbrains
dividedintosmallsubsets,asamplyconfirmedbytheclearselec- andcognition.Howcouldanyunifyingtheorycastlightonthat?
tivityobservedwithinandbetweenbrainregionsatallhierarchical Though possible in principle, detailed answers to this question
levels.Creationofthesubsetsinvolvesbothprespecifiedmechan- arelargelyahopeforthefuture.CoherentInfomaxhypothesizes
isms,asinreceptivefieldselectivity,anddynamicgroupingaspro- a local building-block from which endlessly many architectures
posedbyGestaltpsychology(Phillipsetal.2010).Thecriteriafor couldbebuilt,butuseofthattoenlightentheobviousdiversity
selection must be use-dependentbecause information crucial to is a task hardly yet begun. Similarly, though major transitionsin
one use would be fatal to another, as in the contrast between the evolution of inferential capabilities seem plausible, study of
dorsal and ventral visual pathways. Contextual modulation is what they may be remains a task for the future (Phillips 2012).
also crucial because interpretations with low probability overall By deriving algorithms for learning, Coherent Infomax shows in
may have high probability in certain contexts. Therefore, the principlehowendlessdiversitycanarisefromdiverselives,andit
activity of local processors must be guided by the broader hasbeenshownthattheeffectivenessofcontextual-coordination
context,andtheirmultipleconcurrentdecisionsmustbecoordi- varies greatly across people of different ages (Doherty et al.
nated if they are to create coherent percepts, thoughts, and 2010), sex (Phillips et al. 2004), and culture (Doherty et al.
actions. 2008).Useofthispossiblesourceofvariabilitytoenlightendiver-
Mostmodelsofpredictivecoding(PC)andBayesianinference sityacrossandwithinspeciesstillhasfartogo,however.
(BI)assumethattheinformationtobecodedandusedforinfer- Overall, Iexpect theories such as those examined by Clark to
enceisagiven.Inthosemodels,itis–bythemodelers.Modelers have far-reaching consequences for philosophy, and human
mayassumethatintherealworldthisinformationisgivenbythe thought in general, so I fully endorse the journey on which he
externalinput,butthatprovidesmoreinformationthancouldbe hasembarked.
usedforinferenceiftakenasawhole.Self-organizedselectionof
the information relevant to particular uses is therefore crucial.
Efficientcodingstrategies,suchasPC,areconcernedwithways
oftransmittinginformationthroughahierarchy,notwithdeciding
God,thedevil,andthedetails:Fleshingoutthe
what information to transmit. They assume lossless transmission
predictive processing framework
ofallinputinformationtobethegoal,andsoprovidenowayof
extracting different information for different uses. Models using
BI show how to combine information from different sources doi:10.1017/S0140525X12002154
when computing a single posterior decision; but they do not
DanielRasmussenandChrisEliasmith
show how local neural processors can select the relevant infor-
mation, nor do they show how multiple streams of processing CentreforTheoreticalNeuroscience,UniversityofWaterloo,Waterloo,ONN2L
can coordinate their activities. Thus, local selectivity, dynamic- 3G1,Canada.
grouping, contextual-disambiguation, and coordinating inter- drasmuss@uwaterloo.ca celiasmith@uwaterloo.ca
actions are all necessary within cognitive systems, but are not
Abstract: The predictive processing framework lacks many of the
adequatelyexplainedbytheessentialprinciplesofeitherPCorBI.
Clark’s review, however, does contain the essence of an idea a e r v c a h lu it a e t c e tu th ra e l i a d n e d as im it p p l r e e m se e n n t t s a . ti O on n a e l w de ay ta t il o s b n e e g e i d n ed to t fi o ll fu in lly th in e v se es d ti e g t a a t i e ls o i r s
that could help resolve the mysteries of selectivity and coordi- by turning to standard control-theoretic descriptions of these types of
nation,thatis,context-sensitivegain-control,forwhichthereare systems (e.g., Kalman filters), and by building complex, unified
severalwidely-distributedneuralmechanisms.Acrucialstrength computationalmodelsinbiologicallyrealisticneuralsimulations.
of the free-energy theory is that it uses gain-controlling inter-
actions to implement attention (Feldman & Friston 2010), but Godisinthedetails
such mechanisms can do far more than that. For example, they
—MiesvanderRohe
can selectand coordinateactivities by amplifyingorsuppressing Thedevilisinthedetails
them as a function of their predictive relationships and current —Anonymous
BEHAVIORALANDBRAINSCIENCES(2013)36:3 223
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Despite their theologically contradictory nature, both of these processingframework uses the prediction error signal to update
statementsaretrue:thefirstisnotingthatdetailsareimportant, its representations). Clark claims that the predictive processing
and the second that getting the details right is difficult. It is for framework differs from these structures in that it contains a
exactlythispairofreasonsthatwebelievethepredictiveproces- richer error signal (see Note 9 in the target article). However,
singframeworkislimitedinitsabilitytocontribute,inadeepway, the Kalman filter is often employed in a multidimensional form
toourunderstandingofbrainfunction. (Villalon-Turrubiates et al. 2004; Wu 1985), allowing the error
This is not to deny that the brain does prediction. This is a signal to encode rich and complex information about the world.
view that has been beautifully articulated by Clark, and lies in Makinguseoftheseparallelsprovidesmanypotentialadvantages.
a great tradition. For instance, in his 1943 book, Kenneth For example, Clark describes the need to adjust the relative
Craik devotes several chapters to his central hypothesis that: weight of the model’s predictions versus the incoming infor-
“One of the most fundamental properties of thought is its mation, but he does not indicate how that balance is to be
power of predicting events” (Craik 1943, p. 50). The evidence achieved. This is a well-studied problem in Kalman filters,
for prediction-related signals is strong, and the high-level where there are specific mechanisms to adjust these weights
models are often tantalizing. However, we (and, in our experi- depending on the measurement or estimate error (Brown &
ence, most neuroscientists) want more: We want specific Hwang1992).Thus,itmaybepossibletoreplacethepoorlyspeci-
neural mechanismsthat areemployed in specific circumstances, fiednotionof“attention”usedtocontroltheseweightsinthepre-
and we want to know how such models can be arranged to dictive processing framework (sect. 2.3) with well-defined
explain complex behavior (i.e., we want an architectural mechanisms, providing a more grounded and concrete
specification). description.
Unfortunately,asClarkhimselfpointsout,thepredictivepro- Thisisawayofprovidingcomputationaldetailstotheapproach,
cessingframework“fail[s]tospecifytheoverallformofacogni- but we advocate going further–providing implementational
tive architecture” and “leaves unanswered a wide range of details as well. For instance, there is more than one way to
genuine questions concerning the representational formats implementaKalmanfilterinaspikingneuralnetwork(Eliasmith
used by different brain areas” (sect. 3.3, para. 4). The extent of &Anderson2003,Ch.9),eachofwhichhasdifferentimplications
the predictive processing framework’s architectural claims is for the neurophysiological behavior of those networks. Once a
that the brain is organized in a hierarchical manner, with error neural implementation has been specified, detailed comparisons
signals passing up the hierarchy and predictions of world state betweencomputationalmodelsandempiricaldatacanbemade.
passing down. However, this description seems to miss all the Morecritically,forthegrandersuggestionthatthepredictivepro-
interesting details: What is the specific form and function of cessingframeworkisunifying,theimplementationofsomesmall
the connections between levels of this hierarchy? In the setofmechanismsshouldexplainawideswathofempiricaldata
human brain, along what neuroanatomical pathways should we (see, e.g., Eliasmith et al. [2012] or Eliasmith [in press] for one
expect to see this information flowing? And, more generally, suchattempt).
how do different hierarchies interact? How does information TheideaspresentedbyClarkarecompelling,compatiblewith
pass between them? Is there a unifying representational empiricaldata,andattempttounifyseveralinterestingaspectsof
format? The predictive processing framework leaves all of cognition. However, given the current lack of implementational
these details unspecified, but it strikes us that the filling-in of detailorfirmarchitecturalcommitments,itisimpossibletodeter-
thesedetailsiswheretheframeworkwouldgaindeep,empirical mine whether the predictive processing framework is largely
content. correct or empirically vacuous. The real test of these ideas will
It may seem as if some of these questions are answered. For comewhentheyareusedtobuildamodelthatunifiesperception,
instance,theprimarymethodofrepresentationinthebrainissup- cognition,andactioninasinglesystem.Suchaneffortwillrequire
posedtobethroughprobabilitydensityfunctionsacrosstheposs- adeeperinvestigationofthedetails,andeitherfilltheminwith
ible states/concepts. However, as Clark mentions, these answers, or if answers are not to be found, require a reworking
representations could be implemented with a “wide variety of of the theory. Either way, the predictive processing framework
different schemes and surface forms” (sect. 3.2, para. 4). For willbenefitenormouslyfromtheexercise.
example,aprobabilitydensityp(x)couldberepresentedasahis-
togram (whichexplicitly stores howmany times each statex has NOTE
occurred) or as a summary model (e.g., storing just the mean 1. We have in mind here all the varieties of Kalman filters (e.g.,
extended,unscented,etc.).
and variance of a normal distribution). These different schemes
have enormously different resource implications for a physical
implementation.Aslongasthecharacterizationofrepresentation
isleftatthelevelofspecifyingageneral,abstractform,itisdiffi-
culttoempiricallyevaluate. Interactively human: Sharing time,
Evenwhatseemstobethemostspecificclaimofthepredictive constructing materiality
processing framework–that there exist functionally distinct
“error” and “representation” units in the brain–is ambiguous. doi:10.1017/S0140525X12002427
Given multidimensional neuron tuning (Townsend et al. 2006;
Tudusciuc& Nieder2009),unitscouldbesimultaneouslysensi- AndreasRoepstorff
tive to both error and representation, and still perform the rel- InteractingMindsCentre,andCentreforFunctionallyIntegrative
evant computations (Eliasmith & Anderson 2003). This would Neuroscience,InstituteofCultureandSociety,AarhusUniversity,DK-8000
be compatible with the neurophysiological evidence showing AarhusC,Denmark.
neurons responsive to prediction error, without requiring that andreas.roepstorff@hum.au.dk
there be a sharp division in the brain into these two different
sub-populations.Again,thedetailsmatter. Abstract: Predictive processing models of cognition are promising an
Onewaytobegintofillinthemissingdetailsinthepredictive elegant way to unite action, perception, and learning. However, in the
processingframeworkisbybeingmorespecificastowhatfunc- current formulations, they are species-unspecific and have very little
tions are computed. For example, Kalman filters1 (Kalman particularly human about them. I propose to examine how, in this
framework, humans can be able to massively interact and to build
1960) are standard control-theoretic structures that maintain an sharedworldsthatarebothmaterialandsymbolic.
internal representation of the state of the world, and then use
thedifferencebetweenthepredictionsofthatinternalstateand AndyClarkhaswrittenanimpressivepiece.Predictiveprocessing
incoming data to update the internal model (as the predictive ideas have been the hype in the neurocognitive community for
224 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
some years, for all the reasons that the target article’s review and that the dimensions of materiality “we” can spin ourselves
identifies. They propose to unify models of perception, action, into seem to be constantly changing. Humans appear to live
andlearningwithinaframework–whichiselegant,alignedwith liveswherebothpriorsand possibilitiesforaction–andperhaps
neuroanatomical and functional findings, computationally plaus- also, increasingly, the world–are shaped by actions of others
ible, and able to generate empirical research with relatively and constrained, stabilised, and afforded by those structures
clearhypotheses. built in the process. But if “being human” in general is about
Sofartheideashavebeenawell-keptsecretwithinthecommu- livinginunfoldedpractices,what,then,isitaboutourcognition
nity.ThisBBSarticleislikelytochangethat.Asoneofthefirst, that allows us to do that? We don’t know. But something about
Clark brings the predictive processing framework in touch with howhumanscanbridgethematerialandthesymbolic,andsome-
more general views in cognition and philosophy of mind in a thingabouthowtheyinandthroughinteractionscanshareboth
formatavailabletoawideraudience.Strippingitofthemathemat- externalandinternaltime,maybecritical.
ical formality without losing out on the conceptual stringency, The predictive framework, in “linking action, perception, and
opens for a wider discussion of potential implications for how learning,” is highly relevant also to researchers outside of the
wethinkofthebrainandofourselves.Keytermslikeanticipation, neurosciences. But at this stage, there is much to fillin for itto
expectancy, models of reality, attention, agency, and surprise functionasageneralmodelofhumancognitionandaction.Cer-
appeartomoveseamlesslybetweentheneuronal,themathemat- tainly,thefreeenergyprinciple,thepredictivehierarchicalstuff,
ical,thephenomenological,andthebehavioral.Theambitionto theputativelinksbetweenaction,perception,andlearningseem
extendthistoageneralmodelofhumancognitionisimpressive, tobegoodcandidatesforthenew“roughguide”tobrainfunction.
butthisisalsowheretheproposalbecomesveryopen-ended.For, However,theseguidingprinciplesappeartoworkequallywellin
ultimately, how human-specific is this predictive framework? In rats,inmacaques,andinhumans.Forthoseofuswhoareparticu-
the current formulation, hardly at all. The underlying neural larlyinterestedinwhathumansdotothemselves,toeachother,
models are basically species-unspecific, and the empirical cases and to their world, there seem to be a lot of lacunae to be
move back and forth between many different model systems. explored, and a lot of gaps to be filled. Getting these right may
This is not a weakness of the framework; on the contrary, the perhapsalsoteachsomethingaboutwhathumans,asinteractive
ambitionistolayoutageneraltheoryofbrainfunction,cortical agents, embedded in sociocultural worlds, may do to their
responses, predictive coding, free energy, and so forth. brains. Will this throw new light on neuroscience too? Perhaps.
However, it leaves a lot of work open when gauging how this There is certainly much work to be done by researchers from
relatestoaspecificunderstandingofhumanactionandcognition. manydisciplines.
To begin this, one may need to ask what is characteristic of
humans as a life form? We don’t knowfor sure, but there are a
few candidates. One is an unusual ability for interaction–
people coordinate, couple, take turns–at many different levels
(Levinson 2006). Through interactions, they come to share a Action-oriented predictive processing and the
structuringofactivitiesintime,and,perhaps,bringbraininternal neuroeconomics of sub-cognitive reward
processes in sync too. Another, probably not unrelated, is an
amazingabilitytoco-constructartefactsandbuildsharedworlds doi:10.1017/S0140525X12002166
that are at the same time material and symbolic (Clark 2006b;
Roepstorff2008):worldsthatexistoutsidetheindividual,andin DonRoss
time-windows,whichextendsbeyondthehere-and-nowofinter- SchoolofEconomics,UniversityofCapeTown,Rondebosch7701,Cape
action;worldsthat,somehow,getinternalized.Arethesetwoprin- Town,SouthAfrica.
ciples uniquely human? Probably not: Other species also don.ross@uct.ac.za http://uct.academia.edu/DonRoss
coordinateactions,andotherspeciesalsomodifytheirsurround-
ings,buildingnichesthatarebothmaterialandcognitive,butthe Abstract: Clark expresses reservations about Friston’s reductive
degreetowhichpeopledoitisamazing,andwestillneedtofigure interpretation of action-oriented predictive processing (AOPP) models
of cognition, but he doesn’t link these reservations to specific
outhowthiscancomeabout,alsoatacognitivelevel.
Insociologyandanthropology,oneinfluentialattempttorelate alternatives. Neuroeconomic models of sub-cognitive reward valuation,
which, like AOPP, integrate attention with action based on prediction
interactions and the co-constructed shared worlds has been a
error, are such an alternative. They interpret reward valuation as an
focus on human practices (Bourdieu 1977; Roepstorff et al. inputtoneocorticalprocessinginsteadofreducingit.
2010) as particular unfoldings of temporality set within specific
materialities.Translatedintopredictivecodinglingo,theseprac- Clark impressively surveys the prospects, based on current evi-
ticesmayhelpestablishpriorsorevenhyperpriors,setsofexpec- dence and speculations tethered to clearly specified models,
tationsthatshapeperceptionandguideaction(Roepstoff&Frith that action-oriented predictive processing (AOPP) accounts of
2012).Followingfromthis,humanpriorsmaynotonlybedriven cortical activity offer the basis for a deeply unified account of
bystatisticalpropertiesintheenvironment,pickedupbyindivid- perception, cognition, and action. It is indeed clear that such
ualexperience,orhardwiredintothedevelopingcognitivesystem. accountsprovide,attheveryleast,afreshandstimulatingframe-
They are also a result of shared expectations that are communi- work for explaining the apparently expectation-driven nature of
cated in interactions, mediated by representations, solidified perception. And once one gets this far, it would be a strangely
through materiality, and extended into an action space, going timidmodelerwhodidnotseevalueinexploringthehypothesis
way beyond the physical body and into proximal and distal that such perception was closely linked to preparation of action
formsoftechnology. and to monitoring of its consequences. However, Clark struc-
This means that both the “predictive” and the “situated” in tures his critical discussion around the most ambitious efforts
Clark’s title may get a radical twist. It is not so much a matter to use AOPP as the basis for a reductive unification of “all
of living inside a “socio-cultural cocoon,” as Clark puts it (sect. elements of systemic organization” in the brain (sect. 1.6, para.
5.2, para. 4). This metaphor suggest that we will at some point 3), efforts mainly associated with the work of Karl Friston and
grow up and come out of the cocoon into the real world. It is his co-authors. Clark expresses some reservations about this
alsonotjustamatterof“man”as“ananimalsuspendedinwebs strong, over-arching hypothesis. My commentary amplifies
ofsignificancehehimselfhasspun,”asCliffordGeertz(1966),fol- some of these reservations, based on neglect of the role of
lowing Max Weber, famously suggested. This formulation over- specialized subsystems that may integrate valuation, attention,
emphasizes the symbolic and the individualistic, and it fails to and motor preparation semi-independently of general cortical
see that the webs“we”have spun areindeedalso verymaterial, processing.
BEHAVIORALANDBRAINSCIENCES(2013)36:3 225
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Clark’s survey is notable for the absence of any discussion of generalcognition,allowsustostraightforwardlymodelthediscon-
relative reward-value computation. Studies of such valuation nect Clark identifies between surprise to the brain (“surprisal”)
based on single-cell recordings in rat striatum were the original andsurprisetotheagent.Clark’sexampleisofasurprise-minimiz-
locus of models of neural learning as adjustment of synaptic ingperceptualinferencethatsurprisestheagent.Butdisconnects
weights and connections through prediction-error correction intheotherdirectionarealsoimportant.Gamblingaddictionmay
(Schultz et al. 1997). The temporal difference (TD) learning resultfromthefactthatthemidbrainrewardcircuitisincapable
that has been progressively generalized in descendents of of learning that there is nothing to learn from repeatedly
Schultzetal.’smodelisaformofRescorla-Wagnerconditioning, playingaslotmachine,evenafterthemechanism’svictim/owner
notBayesianequilibration,andsocouldnotplausiblybeexpected hasbecomesadlyawareofthistruth(Rossetal.2008).
toprovideageneralaccountofmammaliancognition.However, Thesuggestionhereisthatneuroeconomicsisoneresource–of
neuroeconomists have subsequently embedded TD learning in course we should expect there to be others–for addressing
modelsof widerscopethat exploit driftdiffusionand meta-con- Clark’s concern that “even taken together, the mathematical
ditioning to track such complex targets as stochastic dominance model(theBayesianbrain)andthehierarchical,action-oriented,
of strategies in games with shifting mixed-strategy equilibria predictive processing implementation fail to specify the overall
(Glimcher2010;Lee&Wang2009).Suchmodelscaneffectively form of a cognitive architecture. They fail to specify, for
approximateBayesianlearning.However,asClarkreports,Fris- example, how the brain … divides its cognitive labors between
ton’s most recent work “looks to involve a strong commitment multiple cortical and subcortical areas” (sect. 3.3, para. 4). But
… to the wholesale replacement of value functions, considered in that case it seems most natural to join the neuroeconomists
as determinants of action, with expectations … about action” inunderstandingsub-cognitivevaluationasaninputtocognition,
(seeNote12inthetargetarticle). ratherthanassomethingthatamodelofcognitiveactivityshould
Onetheorist’seliminationisfrequentlyanothertheorist’scon- reduceaway.
struct implementation. Neuroeconomic models of the striatal
dopamine circuit do away with the need to posit learned or
innaterewardvaluehierarchiesthatprovidetargetsforthelearn-
ingofactionandthetrainingofattention.LikeAOPPtheory,such
Affect and non-uniform characteristics of
models effectively fuse attentional capture and entrenchment
withreward,explainingbothasfunctionalproductsofthepredic- predictive processing in musical behaviour
tion error learning encoded by dopamine signals. Extensions of
neuroeconomic models to account for pathologies of attention doi:10.1017/S0140525X12002373
andvaluation,suchasaddiction,haveincorporatedevidencefor
direct dopaminergic/striatal signaling to motor preparation RebeccaS.Schaefer,KatieOvery,andPeterNelson
areas. For example, Everitt et al. (2001) suggest that direct InstituteforMusicinHumanandSocialDevelopment(IMHSD),ReidSchoolof
signals to motor systems to prepare to consume addictive Music,UniversityofEdinburgh,EdinburghEH89DF,UnitedKingdom.
targetswhenattentionisdrawntopredictorsoftheiravailability r.schaefer@ed.ac.uk k.overy@ed.ac.uk p.nelson@ed.ac.uk
arethebasisforthevisceralcravingsthat,inturn,causeaddictive http://www.ed.ac.uk/schools-departments/edinburgh-college-art/music/
preoccupation. More basically, Glimcher’s (2003) proposal to research/imhsd/imhsd-home
model some neural response using economics was originally
motivatedbyobservationsofactivityincellsthatcontroleyesac- Abstract:Theimportantrolesofpredictionandpriorexperiencearewell
establishedinmusicresearchandfitwellwithClark’sconceptofunified
cades when monkeys implement incentivized choices through
perception,cognition,andactionarisingfromhierarchical,bidirectional
gazedirection(Platt&Glimcher1999).
predictive processing. However, in order to fully account for human
Thisintegrationofattentionandneurallearningwithactionis
musical intelligence, Clark needs to further consider the powerful and
crucial in the present context, because, like the prediction variableroleofaffectinrelationtopredictionerror.
errorsmodeledinAOPP,thisallowsthemto“carryinformation
notjustaboutthequantityoferrorbut…aboutthemismatched The roles of prediction, expectation, and prior experience in
contentitself,”asClarksays(Note9ofthetargetarticle). musical processing are well established (Huron 2006; Large
So far, we might seem to have only a semantic difference et al. 2002; Meyer 1956; Narmour 1990; Phillips-Silver &
between neuroeconomics and Friston’s radical interpretation of Trainor 2008; Vuust & Frith 2008), and indeed have led to the
AOPP: Neuroeconomists take themselves to be furnishing a proposal that music has the capacity to create an environment
theoryofneuralvaluefunctions,whileFristonproposestoelimin- of minimized prediction error within individuals and within
atethem.Butthisinfactrepresentssubstantivedivergences,allof groups(e.g.,viaasteadypulse)(Overy&Molnar-Szakacs2009).
which reflect worries that Clark notes but doesn’t connect with Bayesian models have been shown to account for a range of
particularalternativeaccounts. phenomena in music perception (Temperley 2007) and have
First, consider the problem of why, if AOPP is the general been used to bring together apparently diverging datasets from
account of cognitive dynamics, animals do not just sit still in rhythm perception and production tasks (Sadakata et al. 2006).
dark rooms to maintain error-minimizing equilibria. Clark cites Moreover, it has been shown that the motor system is engaged
Friston’ssuggestioninresponsethat“somespeciesareequipped during auditory rhythm perception (e.g., Grahn & Brett 2007),
with prior expectations that they will engage in exploratory or andthatmusicalimageryevokessimilarneuralresponsesasper-
social play” (Friston 2011a; see sect. 3.2, para. 2, in the target ception(Schaeferetal.2011a;2011b).Clark’sunifiedframework
article). However, good biological methodology recommends of perception, action, and cognition is thus well supported by
against positing speculative innate knowledge as inferences to recentmusicresearch.
bestexplanationsconditionalonone’shypothesis.Theneuroeco- However,thecurrentaccountdoesnotattempttodealwiththe
nomicmodelofstriatalvaluationmakesthispositunnecessary– rangeofwaysinwhichpredictionerrorinducesarousalandaffect.
or,onanotherphilosophicalinterpretation,replacesthedubious Theextenttowhichourpredictionsaremetorviolated,histori-
IBEbyevidenceforamechanism–bysuggestingthatdiscovery cally theorized to lead to an arousal response (Berlyne 1970),
of mismatches between expectations and consequences of can make a piece of music more or less coherent, interesting,
action is the basis of phasic dopamine release, and such release and satisfying. Aesthetically, this leads to the concept of an
isthefoundationofreward,attention,andfurtheraction. optimallevelofsurprisal,which(althoughinitiallyformulatedto
Second, allowing for a relatively encapsulated and cognitively describe liking or hedonic value for differing levels of musical
impenetrable pre-frontal mechanism in striatum that integrates complexity;e.g.,North&Hargreaves1995)canbedescribedas
attention and action in a way that is partly independent of an inverted U-shaped function in which, on the x-axis of
226 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
predictionerror,thereisapreferredlevelofsurprisalthatleadsto and communication, from simple group clapping, a uniquely
a maximally affective response, plotted on the y-axis. However, human behaviour requiring constant automatic adjustments of
this optimal surprisal level is not uniform over musical features probabilistic representation (Molnar-Szakacs & Overy 2006;
(e.g., expressive timing, harmonic structure), but rather is Overy & Molnar-Szakacs 2009), to more sophisticated rhythmic
closely coupled to the specific characteristics of that musical organizationandself-expression(Nelson2012)withanemphasis
featureorbehaviour.AsClarkstates,contextsensitivityisfunda- on“error”aspositive,meaningfulinformation.
mental,andinthecaseofmusic,differentlevelsofconstraintwill
exist simultaneously across different systems of pitch space and
time. For example: Singing often has high constraints in terms
of pitch, tuning, and scale, while timing constraints may be
more flexible; but drumming usually involves strict timing con-
straints, with more flexibility in terms of pitch. Our perceptual Extending predictive processing to the body:
systems are finely attuned to these constraints, to the point that Emotion as interoceptive inference
rhythmic deviations that fit with certain aspects of perceived
musical structure are less well detected (Repp 1999), and doi:10.1017/S0140525X12002270
humanlyproduceddeviationsfromasteadyrhythmarepreferred
overrandomlyaddednoise(Hennigetal.2011). AnilK.Setha,bandHugoD.Critchleya,c
This tuning of our perceptual system to specific deviations aSacklerCentreforConsciousnessScience,UniversityofSussex,Brighton
from an internal model is seen not only in performance aspects BN19QJ,UnitedKingdom;bDepartmentofInformatics,UniversityofSussex,
of music (such as expressive microtiming), but also in compo- BrightonBN19QJ,UnitedKingdom;cDepartmentofPsychiatry,Brightonand
sitional aspects found in the score (such as syncopation). Most SussexMedicalSchool,BrightonBN19QJ,UnitedKingdom.
musical styles require and indeed “play” with levels of surprisal a.k.seth@sussex.ac.uk H.Critchley@bsms.ac.uk
in the temporal domain, from the musical rubato of Romantic www.anilseth.com www.sussex.ac.uk/sackler/
piano performance, to the syncopated off-beat rhythms of jazz,
to the complex polyrhythms of African percussion. Proficient Abstract:TheBayesianbrainhypothesisprovidesanattractiveunifying
musicians and composers are implicitly aware of these effects, framework for perception, cognition, and action. We argue that the
framework can also usefully integrate interoception, the sense of
and tailor their efforts to interact with the surprisal responses
t o i f ve th p e r l e is s t s e u n re e ” r. i T n h c is re le at a i d n s g to m w us h ic at ( h T a e s m b p e e e r n le c y oi 2 n 0 e 0 d 4) “ : co a m n m im u p n l i i c c a i - t t “ h in e ter i o n c te e r p n ti a v l e p p h r y e s d io ic lo ti g v i e cal cod co in n g d ” iti e o n n tai o ls f a th n e ew bo v d i y e . w O o u f r em m o o t d io e n l o as f
interoceptive inference and may account for a range of psychiatric
knowledgeof themusicaldimensionin whichpredictioncan be disordersofselfhood.
manipulated stylistically, without leading to a lack of clarity of
the musical ideas. While this complexity corresponds closely to In his compelling survey, Clark powerfully motivates predictive
what Clark refers to as a designed environment, it is important processing as a framework for neuroscience by considering the
to note that different musical environments have different “viewfrominsidetheblackbox,”thenotionthatthebrainmust
rules, that different listeners (due to their different exposure discover information about the world without any direct access
backgrounds,suchascultureandtraining)seekdifferentenviron- to its source. The ensuing discussion, and the large majority of
ments, and that the desired outcome is a complex affective the literature surveyed, is focused on just these relations
response. Indeed, exposure has been shown to influence liking between brain and (external) world. Perhaps underemphasized
for a completely new musical system after only 30 minutes of in this view is the question of how perceptions of the body and
exposure (Loui et al. 2010). This finding supports the idea of a selfarise.However,thebrain’saccesstothefactsofitsembodi-
strong personalized configuration of one’s own preference for ment and of its physiological milieu is arguably just as indirect
unpredictability, reflected in musical likes and dislikes, as well as its access to the surrounding world. Here, we extend Clark’s
as one’s own prediction abilities, shown to be quite stable over integrative analysis by proposing that interoception–the sense
time per individual, affecting interpersonal coordination ofthephysiologicalconditionofthebody(seeCraig2003)–can
(Pecenka & Keller 2011). An individual personality might be alsobeusefullyconsideredfromtheperspectiveofpredictivepro-
thrill-seeking and seek out highly unpredictable new musical cessing.Ourmodelof“interoceptivepredictivecoding”(Critchley
experiences,or,morecommonly,mightseekouthighlypredict- &Seth2012;Sethetal.2011)suggestsanewviewofemotional
ablefamiliar,favoritemusicalexperiences. feelingsasinteroceptiveinference,andshedsnewlightondisso-
Thus, different kinds of musical experience, different musical ciativedisordersofself-consciousness.
styles,andpersonalmusicalpreferencesleadtodifferentpredic- Interoceptive concepts of emotion were crystallized by James
tions,errorresponses,arousal,andaffectresponsesacrossarange (1890) and Lange (1885/1912), who argued that emotions arise
ofmusicaldimensionsandhierarchicallevels.Theupshotisthat fromperceptionofchangesinthebody.Thisbasicidearemains
thesurprisalresponseisnon-uniformformusic:Thepositioning influential more than a century later, underpinning frameworks
ofacurvedescribing“optimalsurprisal”foraffectiveoraesthetic forunderstandingemotionanditsneuralsubstrates,suchasthe
reward will be determined by culture, training, or musical style, “somatic marker hypothesis” (Damasio 2000) and the “sentient
and its precise shape (e.g., kurtosis) may be specific to the type self”model(Craig2009),bothlinkedtothenotionof“interocep-
andlevelofthepredictionormentalmodel.Andwhilethecharac- tive awareness” or “interoceptive sensitivity” (Critchley et al.
teristicsoftheoptimalsurprisalforeachaspectofmusicdiffers, 2004).Despitetheneurobiologicalinsightsemergingfromthese
the commonality remains affect, which, we propose, plays a frameworks, interoception has remained generally understood
major part in what makes prediction error in music (large or along “feedforward” lines, similar to classical feature-detection
small)meaningful,andindeeddeterminesitsvalue. or evidence-accumulation theories of visual perception as sum-
Totheextentthatpredictionisestablishedasapowerfulmech- marizedbyClark.However,ithaslongbeenrecognisedthatexpli-
anisminconveyingmusicalmeaning,itseemsclearthenthatitis citcognitionsandbeliefsaboutthecausesofphysiologicalchanges
theaffectiveresponsetothepredictionerrorthatgivestheinitial influencesubjectivefeelingstatesandemotionalbehaviour.Fifty
predictionsuchpower.Wethusproposethat thevalenceof the years ago, Schachter and Singer (1962) famously demonstrated
prediction error, leading to a range of affective responses, is a thatinjectionsofadrenaline,proximallycausingastateofphysio-
necessarycomponentofthedescriptionofhowpredictiveproces- logicalarousal,wouldgiverisetoeitherangerorelationdepend-
singcanexplainmusicalbehaviour.Thefunctionofsuchaffective ingontheconcurrentcontext(anirritatedorelatedconfederate).
predictabilitywillrequirediscussionelsewhere,butwepostulate This observation was formalized in their “two factor” theory, in
thatthiswillincludedeepconnectionswithsocialunderstanding which emotional experience is determined by the combination
BEHAVIORALANDBRAINSCIENCES(2013)36:3 227
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
Figure1(Seth&Crichley). Amodelofinteroceptivepredictivecodingaccordingtowhichsubjectivefeelingstatesareconstitutedby
continuallyupdatedpredictionsofthecausesofinteroceptiveinput.Predictionsareshapedbygenerativemodelsinformedby“efference
copies” of visceral, autonomic, and motor control signals. These are generated, compared, and updated within a salience network
anchoredontheanteriorinsularandanteriorcingulatecorticesthatengagebrainstemregionsastargetsforvisceromotorcontroland
relaysofafferentinteroceptivesignals.AdaptedfromSethetal.(2011).
ofphysiologicalchangeandcognitiveappraisal,thatis,emotionas potentialroleofVENsinthisprocessandinconsciousawareness
interpretedbodilyarousal. moregenerally(Critchley&Seth2012).
Thoughtheyinvolveexpectations,two-factortheoriesfallcon- Disruptedinteroceptivepredictivecodingmaycausallyaccount
siderablyshortofafullpredictiveprocessingmodelofemotion. for a range of psychiatric disorders. Chronic anxiety has been
Byanalogywithcorrespondingmodelsofvisualperception,pre- suggested to result from heightened interoceptive prediction
dictive interoception involves hierarchically cascading top-down errorsignals(Paulus&Stein2006).Byanalogywithcomparator
interoceptivepredictionsthatcounterflowwithbottom-upintero- models of schizophrenia (Frith 2012; Synofzik et al. 2010), we
ceptive prediction errors. Subjective feeling states are then alsosuggestthatdissociativesymptoms,notablydepersonalization
determined by the integrated content of these predictive rep- andderealizationarisefromimprecise(asopposedtoinaccurate)
resentations across multiple levels (Seth et al. 2011). In other interoceptivepredictionerrorsignals.Bythesametoken,thesub-
words, the model argues that emotional content is determined jectivesenseofrealitycharacteristicofnormalconsciousexperi-
by a suite of hierarchically organized generative models that ence (i.e., “conscious presence”) may depend on the successful
predict interoceptive responses to both external stimuli and the suppressionbytop-downpredictionsofinformativeinteroceptive
internalsignalscontrollingbodilyphysiology(Fig.1). signals(Sethetal.2011).
Insummary,subjectiveemotionsandevenconsciouspresence
Itisimportanttodistinguishinteroceptivepredictivecodingor maybeusefullyconceptualizedintermsofinteroceptivepredic-
processing from more generic interactions between prediction tive coding. A key test of our model will be to identify specific
andemotion(e.g.,Gilbert&Wilson2009;Ploghausetal.1999). interoceptivepredictionerrorresponsesintheAICorelsewhere.
Crucially, predictive coding involves prediction at synchronic, This challenge is also yet to be met for predictive processing
fasttime-scales,suchthatpredictions(andpredictionerrors)are models of perception in general, and the relevant evidence
constitutive of content. For example, while Paulus and Stein wouldgoalongwaytowardsexperimentallyvalidatingtheBaye-
(2006) hypothesize the existence of interoceptive prediction sianbrainhypothesis.
errorswithininsularcortexinthegenerationofanxiety,theydo
notcontend,inthefullpredictivecodingsense,thatinteroceptive
predictions are the constitutive basis of emotions. Similarly,
althoughBarrettandBar(2009)proposethataffective(interocep-
tive) predictions within orbitofrontal cortex shape visual object Perception versus action: The computations
recognitionatfasttime-scales,theyagaindonotdescribeintero- may be the same but the direction of fit differs
ceptivepredictivecodingperse.
Severalstrandsofevidencelendsupporttoourmodelandpoint doi:10.1017/S0140525X12002397
to its implications for dissociative psychiatric symptoms such as
depersonalizationandchronicanxiety(Sethetal.2011).Anterior NicholasShea
insularcortex(AIC)inparticularprovidesanaturallocusforcom- DepartmentofPhilosophy,King’sCollegeLondon,Strand,LondonWC2R
parator mechanisms underlying interoceptive predictive coding, 2LS,UnitedKingdom.
throughitsdemonstratedimportanceforinteroceptiverepresen- nicholas.shea@kcl.ac.uk
tation (Craig, 2009; Critchley et al. 2004) and by the expression http://www.kcl.ac.uk/artshums/depts/philosophy/people/staff/academic/
within AIC of prediction error signals across a variety of affect- shea/index.aspx
ladencontexts(Paulus&Stein2006;Singeretal.2009;Palaniyap-
pan & Liddle 2011). Human AIC is also rich in Von Economo Abstract:Althoughpredictivecodingmayofferacomputationalprinciple
neurons(VENs),largeprojectionneuronswhicharecircumstan-
thatunifiesperceptionandaction,stateswithdifferentdirectionsoffitare
involved(withindicativeandimperativecontents,respectively).Predictive
tially associated with self-consciousness and complex social
statesareadjustedtofittheworldinthecourseofperception,butinthe
emotions(Craig2009).Inourmodel,fastVEN-mediatedconnec- caseofaction,thecorrespondingstatesactasafixedtargettowardswhich
tionsmayenabletherapidregistrationofvisceromotorandviscer-
theagentadjuststheworld.Thiswell-recogniseddistinctionhelpsside-
osensory signals needed for efficient updating of generative stepsomeproblemsdiscussedinthetargetarticle.
models underlying interoceptive predictive coding. The recent
discovery of VENs in the macaque monkey (Evrard et al. 2012) One of the central insights motivating Clark’s interest in the
opens important new avenues for experimental tests of the potential for predictive coding to provide a unifying
228 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictive brains, situated agents, and thefuture ofcognitivescience
computational principle is the finding that it can be the basis of in a darkened room will be entirely ineffective in reducing such
effective algorithms in both the perceptual and motor domains errorsignals.Forexample,ifthereisoneofthesegoalstaterep-
(Eliasmith 2007, p. 380). That is surprising because perceptual resentationsforthelevelofsugarintheblood,whensensoryfeed-
inference in natural settings is based on a rich series of sensory backfailstomatchthetargettheagentdoesnothavetheoptionof
inputsatalltimes,whereasanaturalmotorcontroltaskonlyspe- reducingtheerrorsignalbychangingitsexpectation;instead,the
cifiesafinaloutcome.Manyvariationsinthetrajectoryareirrele- agent must act so as to change the sensory feedback (i.e., to
vant to achieving the final goal (Todorov & Jordan 2002), a increase the level of sugar in the blood). This answer is comp-
redundancy that is absent from the perceptual inference lementarytoClark’sobservationthatsomeformsofpriorexpec-
problem. Despite this disanalogy, the two tasks are instances of tationcouldleadagentstoengageinexploratoryactionsorsocial
thesamegeneralmathematicalproblem(Todorov2006). play. It is orthogonal to the distinction between exploratory and
Clark emphasises the “deep unity” between the two tasks, exploitativeactions(whichcan,inanyevent,onlybedrawnrela-
whichisjustifiedbutmightservetoobscureanimportantdiffer- tivetosomesetofgoalstates).
ence.Intheperceptualtask,apredictionerrorisusedtochange Afinalobservationconcernsthequestionofwhethertheexpec-
expectationssoastomatchtheinput,whereas,asClarknotes,in tations involved in predictive coding calculations refer to the
themotortaskthepredictionerrorisusedtodrivemotorbehav- externalworld.Itissometimessuggestedthatpredictionsandpre-
iour that changes the input. In perception, prediction error is diction errors only concern the states of other computational
minimised by changing something internal (expectations), elements in the system. Goal states are perhaps the most
whereasinactionpredictionerrorisminimisedbychangingsome- obvious candidate for representations that refer to the external
thing external (acting on the world so as to alter sensory input). world. Since the feedback to which they are compared is
Although itistruein onesense thatthere isacommoncompu- changedbyactionontheworld,itisplausiblethattheycometo
tational principle that does not distinguish between perceptual represent the external world affairs that must be changed if the
andmotortasks(sect.1.5),weshouldnotoverlookthefactthat predictionerroristobecancelled.
those computations are deployed quite differently in the two Toconclude,Clark’spersuasivecasefortheimportanceofpre-
cases. In the two cases state representations have what philoso- dictivecodingasaunifyingcomputationalprinciple,likeanyfruit-
phershavecalleddifferent“directionsoffit.”Amotortasktakes ful research agenda, brings new issues into focus. An important
as input a goal state, which is held fixed; a motor program to one is the question of what makes that computational principle
attain that goal state is then calculated (Todorov 2004). These operateinindicative(perceptual)modeinsomesubsystemsand
goal states have a world-to-mind direction of fit and imperative inimperative(action)modeinothers.
content. By contrast, the state descriptions in the perceptual
task (expectations fed back from higher levels in the processing
hierarchy) are continually adjusted so as to match the current
sensory input more closely. They display a world-to-mind direc-
tionoffitandhaveindicativecontent.Thedifferenceisapparent Schizophrenia-related phenomena that
initsconsequencesforthebehaviouroftheorganism:Prediction challenge prediction error as the basis of
errors in respect of indicative representations can be fully can- cognitive functioning
celled without the agent having to perform any action, whereas
prediction errors in respect of imperative representations doi:10.1017/S0140525X12002221
cannotbecancelledunlesstheagentmovesinsomeway.
Iftheseaccountsareright,thenthedeepunityconsistsinthefact StevenM.Silverstein
thatbothperceptionandactioninvolvethereductionofprediction UniversityBehavioralHealthCareandDepartmentofPsychiatry,RobertWood
error.However,sincetheydosobyquitedifferentmeans,adeep JohnsonMedicalSchool,UniversityofMedicineandDentistryofNewJersey,
differencebetweenperceptionandactionremains.Somesensori- Piscataway,NJ08854.
motoraccountsofourinteractionswiththeworlddoindeedserve silvers1@umdnj.edu
todissolve theboundarybetweenperceptionandaction(Hurley
1998),butthepredictivecodingframeworkonitsowndoesnot. Abstract: There are aspects of schizophrenia that pose challenges for
(Itdoes,however,undermineaclearboundarybetweenperception Clark’s model. These include: (1) evidence for excitatory activity
underlying self-organizing neural ensembles that support coordinating
andcognition.)Thisgivesrisetoanimportantquestionforthepre-
functions,andtheirimpairmentinschizophrenia;(2)evidenceregarding
dictivecodingprogramme:Whatdetermineswhetheragivenpre-
hallucinations that suggest they are not due to excessive prediction
diction/expectation is given a mind-to-world functional role,
error;and(3)thecriticalroleofemotionalfactorsas settingconditions
allowing it to be adjusted in the light of prediction errors, and fordelusionformation.
what gives other expectations a world-to-mind functional role,
such that prediction errors cause bodily movements/action? As Clark’smodelemphasizestheprocessingofpredictionerror,and,
theevidenceforacommoncomputationalprincipleinperception insection4.2,thisisappliedtoanunderstandingofhallucinations,
andactionmounts,theneedbecomespressingtospecifyhowthis delusions,andschizophrenia.Thiscommentaryemphasizesthree
fundamentaldifferencebetweenitstwomodesofoperationarises. points related to these themes, with the overall goal of demon-
Clark goes on to consider whether an austere “desert land- stratingthatClark’sview,atpresent,doesnotprovideafullyade-
scape” description of the computational processing is possible quateheuristicforunderstandingpsychoticphenomena.
that does away with goals and reward entirely (sect. 5.1), in the Clark’s theory emphasizes anti-Hebbian feedforward proces-
sense that neither are represented in the model. If action gui- sing, in which correlated activity across neurons is suppressed,
dance requires states with a world-to-mind direction of fit, then presumably because no deviation from what is expected is
stateswhichfunctionasgoalshavenotbeeneliminated.Evenif present, therefore allowing any signals related to deviation from
the difference is a matter of degree, with many cases in the what is expected (i.e., prediction error) to become relatively
middle, we are still operating with a continuum marked by the more salient. While this would appear to be a useful data-com-
extent to which a state operates as a goal state at one end or as pressionstrategyforcodinginvariantbackgroundinformation,it
anindicativestateattheother. doesnotaccountforcasesinwhichitispreciselythecorrelation
Thedistinctionbetweenindicativeandimperativecontentsalso between stimulus elements that codes their object properties,
throws light on the darkened room problem: Why don’t agents thereby signaling stimulus significance. Numerous demon-
minimise prediction error by just sitting still in a darkened strationsexist(e.g.,Kinoshitaet al.2009; Silversteinetal.2009;
room?Ifsomesubsystemsareconstrainedtominimiseprediction Singer 1995) wherein increasing the correlation between an
errornotbychangingexpectationsbutbyacting,thensittingstill aspect of elements (e.g., stimulus orientation in contour
BEHAVIORALANDBRAINSCIENCES(2013)36:3 229
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press

Commentary/Andy Clark: Predictivebrains,situated agents,and thefutureof cognitive science
integration paradigms) leads to increased signal strength. Of models. It also must be noted that the delusions that patients
course,itispossibletoargue,asClarkdoes,thatthisisduetoa develop are not about random events, but typically are framed
cancellationoftheactivityinerrorunitsandsubsequentenhance- inreferencetotheself,withappreciationofthestatisticalstruc-
mentofthesignalcodingthecontourorshape.However,itisnot tureoftherestoftheworldbeingintact.Similarly,auditoryhal-
clear how these competing hypotheses could be pitted against lucinations often involve negative comments about the self, and
eachotherinadefinitivestudy. ithasbeensuggested,duetothehighprevalenceofhistoriesof
ConsistentwithClark’sview,evidenceexiststhat,forexample, childhoodphysicalandsexualabuseinpeoplewithschizophrenia
asrandomorientationaljitterisappliedtodisconnectedcontour (Readetal.2005),thatvoicesareaspectsofmemorytracesassoci-
elements, increases in fMRI BOLD signal are observed (Silver- ated with the abuse experience that have been separated from
stein et al. 2009). Clark’s view is also consistent with Weber’s other aspects of the memory trace due to hippocampal impair-
(2002) view that much of our direct understanding of visual ment secondary to chronic cortisol production (Read et al.
forms results from perception of “metamorphoses of geometry” 2001) (as opposed to being due to top-down expectancy driven
ortopological(isotopic)alterationsofbasicforms,aviewconsist- processing). A purely computational theory of hallucinations
entwithevidencethattopologicalinvariantsaretheprimitivesto and/or delusions is like a mathematical theory of music–it can
which our visual system responds most strongly (Chen 2005). explain aspects of it, but not why one piece of music creates a
However, it is also the case that compared to a non-informative strongemotionalresponseinonepersonyetnotinanother.Psy-
background of randomly oriented Gabors, perception of a choticsymptomformationmustbeunderstoodwithinthecontext
contour is associated with increased activity (Silverstein et al. ofpersonalvulnerabilityandemotionalfactors,andthesearenot
2009). Clarifying the extent to which these two forms of signal wellaccountedforbyaBayesianviewatpresent.
increaserepresentfunctioningofdifferentcircuitsisanimportant
taskforfutureresearch.Untilthisisclarified,Clark’sviewappears
to be most appropriate for understanding signaling of objects in
theenvironment,asopposedtobrainactivityinvolvedincreating
representations of those objects. This is relevant for schizo- What else can brains do?
phrenia,asitischaracterizedbyabreakdownincoordinatingpro-
cesses in perception and cognition (Phillips & Silverstein 2003; doi:10.1017/S0140525X12002439
Silverstein & Keane 2011). A challenge for Clark’s view is to
accountforthesephenomena,whichhavebeenpreviouslyunder- AaronSloman
stood as reflecting a breakdown in Hebbian processing, and SchoolofComputerScience,UniversityofBirmingham,BirminghamB152TT
reduced self-organization at the local circuit level, involving UnitedKingdom.
reducedlateral(andre-entrant)excitation. a.sloman@cs.bham.ac.uk http://www.cs.bham.ac.uk/∼axs
Clarknotesthatwhileperceptualanomaliesalonewillnottypi-
cally lead to delusions, the perceptual and doxastic components Abstract: The approach Clark labels “action-oriented predictive
should not be seen as independent. However, there are several processing” treats all cognition as part of a system of on-line control.
This ignores other important aspects of animal, human, and robot
syndromes (e.g., Charles Bonnet Syndrome, Dementia with
LewyBodies,Parkinson’sDiseaseDementia)wherevisualhallu- i
a
n
ls
t
o
ell
i
i
g
g
n
e
o
n
r
c
e
e
s
.
t
H
he
e
d
co
e
n
p
t
t
r
h
as
a
t
n
s
d
it
v
w
ar
it
i
h
ety
an
of
al
A
le
I
g
/
e
R
d
ob
“
o
m
ti
a
c
in
r
s
e
t
s
r
e
e
a
a
r
m
ch
”
.
a
I
pp
d
r
o
o
n
a
’
c
t
h
th
th
in
a
k
t
cinationsareprominentanddelusionsaretypicallyabsent(Sant-
thetheorypresentedisworthtakingseriouslyasacompletemodel,even
house et al. 2000). Moreover, it would appear to be difficult to ifthereismuchthatitexplains.
explainthewell-formedhallucinationscharacteristicofthesesyn-
dromes as being due to prediction error, given their sometimes Clark’spaperdeservesfarmorethan1,000words,butIhaveto
improbablecontent(e.g.,verysmallpeopledressed in Victorian be brief and dogmatic. Characterizing brains as predicting
era attire), and apparent errors in size constancy (ffytche & machinesignoresmanyabilitiesproducedbyevolutionanddevel-
Howard 1999; Geldmacher 2003) that argue against Bayes- opment,1includingmathematicaldiscoveryandreasoning,using
optimal perception in these cases. There are also many cases of evolved mechanisms (perhaps) shared by several species
schizophreniawheredelusionsarepresentwithouthallucinations. capableofthe“representationalredescription”postulatedinKar-
Finally,whileevidenceofreducedbinoculardepthinversionillu- miloff-Smith (1992) and the meta-configured competences
sionsinschizophrenia(Keaneetal.,inpress;Koetheetal.2009) suggestedinChappell&Sloman(2007),including(largelyunstu-
providesevidence,ontheonehand,foraweakenedinfluenceof died) discoveries of “toddler theorems” (Sloman 2010). The
priors(orofthelikelihoodfunction)(Phillips2012)onperception, “action-oriented predictive processing” approach treats every-
this evidence also indicates more veridical perception of the thing as on-line control (Powers 1973), like “enactivist” theorists
environment.Therefore,thesedatasuggestthat,ratherthanpre- who usually ignore competences required to make predictions
dictionerrorsignalsbeingfalselygeneratedandhighlyweighted true and processes generating and choosing (sometimes uncon-
(asClarksuggests),suchsignalsappearnottobegeneratedtoa sciously) between goals, plans, designs (for houses, machines,
sufficient degree, resulting in a lack of top-down modulation, etc.), preferences, explanations, theories, arguments, story plots,
and bottom-up (but not error) signals being strengthened. formsofrepresentation,ontologies,grammars,andproofs.Predic-
Indeed, this is exactly what was demonstrated in recent studies tive processing doesn’t explain termite cathedral building.
using dynamic causal modeling of ERP and fMRI data from a (CompareChittka&Skorupski2011).
hollow-mask perception task in people with schizophrenia Simultaneous localisation and mapping (SLAM) robotic tech-
(Dima et al. 2009; 2010). A developing impairment such as this niques,partlyinspiredbythingsanimalsdo,createuseful(topolo-
would lead to subjective changes in the meaning of objects and gical, metrical, and possibly logical) representations of enduring
theenvironmentasawhole,andoftheself–which,inturn,can extended environments. That’s not learning about mappings
spawndelusions(Mattusek1987;Sass1992;Uhlhaas&Mishara between inputs and outputs. It’s a special case of using actions,
2007),eventhoughthedelusionalthoughtsareunrelatedtothe percepts, and implicit theories to derive useful information
likelihoodfunctionsandbeliefsthatexistedpriortotheonsetof abouttheenvironment.Anotherisproducingatheoryofchemical
thedelusion. valency.
Finally,Clark’sviewofhallucinationsissimilartomanymodels Systematically varying how things are squeezed, stroked,
of schizophrenia, in that it is based on computational consider- sucked, lifted, rotated, and so forth, supports learning about
ationsonly.But,asnoted,delusionsoftengrowoutofphenomen- kinds of matter, and different spatial configurations and pro-
ologicalchangesandemotionalreactionstothese(seealsoConrad cesses involving matter (Gibson 1966). Predicting sensory
1958), and this cascade is typically ignored in computational signals is only one application. Others include creating future
230 BEHAVIORALANDBRAINSCIENCES(2013)36:3
https://doi.org/10.1017/S0140525X12000477 Published online by Cambridge University Press