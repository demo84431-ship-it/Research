Behavior Research Methods
2007, 39 (2), 175-191
G*Power 3: A flexible statistical power analysis
program for the social, behavioral, and
biomedical sciences
FRANZ FAUL
Christian-Albrechts-Universität Kiel, Kiel, Germany
EDGAR ERDFELDER
Universität Mannheim, Mannheim, Germany
AND
ALBERT-GEORG LANG AND AXEL BUCHNER
Heinrich-Heine-Universität Düsseldorf, Düsseldorf, Germany
G*Power (Erdfelder, Faul, & Buchner, 1996) was designed as a general stand-alone power analysis program
for statistical tests commonly used in social and behavioral research. G*Power 3 is a major extension of, and
improvement over, the previous versions. It runs on widely used computer platforms (i.e., Windows XP, Win-
dows Vista, and Mac OS X 10.4) and covers many different statistical tests of the t, F, and (cid:79)2 test families. In
addition, it includes power analyses for z tests and some exact tests. G*Power 3 provides improved effect size
calculators and graphic options, supports both distribution-based and design-based input modes, and offers all
types of power analyses in which users might be interested. Like its predecessors, G*Power 3 is free.
Statistics textbooks in the social, behavioral, and biomed- reviews of which we are aware (Kornbrot, 1997; Ortseifen,
ical sciences typically stress the importance of power analy- Bruckner, Burke, & Kieser, 1997; Thomas & Krebs, 1997).
ses. By definition, the power of a statistical test is the prob- It has been used in several power tutorials (e.g., Buchner,
ability that its null hypothesis (H ) will be rejected given that Erdfelder, & Faul, 1996, 1997; Erdfelder, Buchner, Faul, &
0
it is in fact false. Obviously, significance tests that lack sta- Brandt, 2004; Levin, 1997; Sheppard, 1999) and in statis-
tistical power are of limited use because they cannot reliably tics textbooks (e.g., Field, 2005; Keppel & Wickens, 2004;
discriminate between H and the alternative hypothesis (H ) Myers & Well, 2003; Rasch, Friese, Hofmann, & Naumann,
0 1
of interest. However, although power analyses are indispens- 2006a, 2006b). Nevertheless, the user feedback that we re-
able for rational statistical decisions, it was not until the late ceived coincided with our own experience in showing some
1980s that power charts (see, e.g., Scheffé, 1959) and power limitations and weaknesses of G*Power 2 that required a
tables (see, e.g., Cohen, 1988) were supplemented by more major extension and revision.
efficient, precise, and easy-to-use power analysis programs In the present article, we describe G*Power 3, a program
for personal computers (Goldstein, 1989). G*Power 2 (Erd- that was designed to address the problems of G*Power 2.
felder, Faul, & Buchner, 1996) can be seen as a second- We begin with an outline of the major improvements in
generation power analysis program designed as a stand- G*Power 3 and then discuss the types of power analyses cov-
alone application to handle several types of statistical tests ered by this program. Next, we describe program handling
commonly used in social and behavioral research. In the past and the types of statistical tests to which it can be applied.
10 years, this program has been found useful not only in the We then discuss the statistical algorithms of G*Power 3 and
social and behavioral sciences but also in many other disci- their accuracy. Finally, program availability and some Inter-
plines that routinely apply statistical tests, including biology net resources supporting users of G*Power 3 are described.
(Baeza & Stotz, 2003), genetics (Akkad et al., 2006), ecol-
ogy (Sheppard, 1999), forest and wildlife research (Mellina, IMPROVEMENTS IN G*POWER 3 IN
Hinch, Donaldson, & Pearson, 2005), the geosciences (Bus- COMPARISON WITH G*POWER 2
bey, 1999), pharmacology (Quednow et al., 2004), and med-
ical research (Gleissner, Clusmann, Sassen, Elger, & Helm- G*Power 3 is an improvement over G*Power 2 in five
staedter, 2006). G*Power 2 was evaluated positively in the major respects. First, whereas G*Power 2 requires the
E. Erdfelder, erdfelder@psychologie.uni-mannheim.de
175 Copyright 2007 Psychonomic Society, Inc.

176 FAUL, ERDFELDER, LANG, AND BUCHNER
DOS and Mac OS 7–9 operating systems that were com- research process, and the specific research question, five
mon in the 1990s but are now outdated, G*Power 3 runs different types of power analysis can be reasonable (cf.
on the personal computer platforms currently in widest Erdfelder et al., 2004; Erdfelder, Faul, & Buchner, 2005).
use: Windows XP, Windows Vista, and Mac OS X 10.4. We describe these methods and their uses in turn.
The Windows and Mac versions of the program are es-
sentially equivalent. They use the same computational A Priori Power Analyses
routines and share very similar user interfaces. For this In a priori power analyses (Cohen, 1988), sample
reason, we will not differentiate between these versions in size N is computed as a function of the required power
what follows; users simply have to make sure to download level (1 (cid:18) (cid:59)), the prespecified significance level (cid:40), and
the version appropriate for their operating system. the population effect size to be detected with probability
Second, whereas G*Power 2 is limited to three types 1 (cid:18) (cid:59). A priori analyses provide an efficient method of
of power analyses, G*Power 3 supports five different controlling statistical power before a study is actually con-
ways to assess statistical power. In addition to the a pri- ducted (see, e.g., Bredenkamp, 1969; Hager, 2006) and
ori, post hoc, and compromise power analyses that were can be recommended whenever resources such as the time
already covered by G*Power 2, the new program offers and money required for data collection are not critical.
sensitivity analyses and criterion analyses.
Third, G*Power 3 provides dedicated power analysis Post Hoc Power Analyses
options for a variety of frequently used t, F, z, (cid:79)2, and In contrast to a priori power analyses, post hoc power
exact tests in addition to the standard tests covered by analyses (Cohen, 1988) often make sense after a study
G*Power 2. The tests captured by G*Power 3 and their has already been conducted. In post hoc analyses, 1 (cid:18) (cid:59)
effect size parameters are described in the Program Han- is computed as a function of (cid:40), the population effect size
dling section. Importantly, users are not limited to these parameter, and the sample size(s) used in a study. It thus
tests because G*Power 3 also offers power analyses for becomes possible to assess whether or not a published
generic t, F, z, (cid:79)2, and binomial tests for which the non- statistical test in fact had a fair chance of rejecting an in-
centrality parameter of the distribution under H may correct H . Importantly, post hoc analyses, like a priori
1 0
be entered directly. In this way, users are provided with analyses, require an H effect size specification for the
1
a flexible tool for computing the power of basically any underlying population. Post hoc power analyses should
statistical test that uses t, F, z, (cid:79)2, or binomial reference not be confused with so-called retrospective power anal-
distributions. yses, in which the effect size is estimated from sample
Fourth, statistical tests can be specified in G*Power 3 data and used to calculate the observed power, a sample
using two different approaches: the distribution-based ap- estimate of the true power.1 Retrospective power analy-
proach and the design-based approach. In the distribution- ses are based on the highly questionable assumption that
based approach, users select the family of the test statistic the sample effect size is essentially identical to the effect
(t, F, z, (cid:79)2, or exact test) and the particular test within size in the population from which it was drawn (Zumbo &
that family. This is how power analyses were specified in Hubley, 1998). Obviously, this assumption is likely to be
G*Power 2. In addition, a separate menu in G*Power 3 false, and the more so the smaller the sample. In addition,
provides access to power analyses via the design-based sample effect sizes are typically biased estimates of their
approach: Users select (1) the parameter class to which population counterparts (Richardson, 1996). For these
the statistical test refers (correlations, means, proportions, reasons, we agree with other critics of retrospective power
regression coefficients, variances) and (2) the design of analyses (e.g., Gerard, Smith, & Weerakkody, 1998; Hoe-
the study (e.g., number of groups, independent vs. depen- nig & Heisey, 2001; Kromrey & Hogarty, 2000; Lenth,
dent samples). On the basis of the feedback we received 2001; Steidl, Hayes, & Schauber, 1997). Rather than use
about G*Power 2, we expect that some users might find retrospective power analyses, researchers should specify
the design-based input mode more intuitive and easier to population effect sizes on a priori grounds. To specify the
use. effect size simply means to define the minimum degree
Fifth, G*Power 3 supports users with enhanced graph- of violation of H a researcher would like to detect with
0
ics features. The details of these features will be outlined a probability not less than 1 (cid:18) (cid:59). Cohen’s definitions of
in the Program Handling section. small, medium, and large effects can be helpful in such
effect size specifications (see, e.g., Smith & Bayen, 2005).
TYPES OF STATISTICAL POWER ANALYSES However, researchers should be aware of the fact that
these conventions may have different meanings for differ-
The power (1 (cid:18) (cid:59)) of a statistical test is the complement ent tests (cf. Erdfelder et al., 2005).
of (cid:59), which denotes the Type II or beta error probability
of falsely retaining an incorrect H . Statistical power de- Compromise Power Analyses
0
pends on three classes of parameters: (1) the significance In compromise power analyses (Erdfelder, 1984;
level (i.e., the Type I error probability) (cid:40) of the test, (2) the Erdfelder et al., 1996; Müller, Manz, & Hoyer, 2002),
size(s) of the sample(s) used for the test, and (3) an effect both (cid:40) and 1 (cid:18) (cid:59) are computed as functions of the ef-
size parameter defining H and thus indexing the degree fect size, N, and the error probability ratio q (cid:21) (cid:59)/(cid:40). To
1
of deviation from H in the underlying population. De- illustrate, setting q to 1 would mean that the researcher
0
pending on the available resources, the actual phase of the prefers balanced Type I and Type II error risks ((cid:40) (cid:21) (cid:59)),

G*POWER 3 177
whereas a q of 4 would imply that (cid:59) (cid:21) 4(cid:40) (cf. Cohen, analyses defined in the previous section, (3) provide the
1988). Compromise power analyses can be useful both input parameters required for the analysis, and (4) click on
before and after data collection. For example, an a priori “Calculate” to obtain the results.
power analysis might result in a sample size that exceeds In the first step, the statistical test is chosen using
the available resources. In such a situation, a researcher the distribution-based or the design-based approach.
could specify the maximum affordable sample size and, G*Power 2 users probably have adapted to the distribution-
using a compromise power analysis, compute (cid:40) and 1 (cid:18) (cid:59) based approach: One first selects the family of the test
associated with, say, q (cid:21) (cid:59)/(cid:40) (cid:21) 4. Alternatively, if a study statistic (t, F, z, (cid:79)2, or exact test) using the “Test fam-
has already been conducted but has not yet been analyzed, ily” menu in the main window. The “Statistical test” menu
a researcher could ask for a reasonable decision criterion adapts accordingly, showing a list of all tests available for
that guarantees perfectly balanced error risks (i.e., (cid:40) (cid:21) (cid:59)) the test family. For the two-groups t test, for example, one
given the size of the sample and the critical effect size would first select the t family of distributions and then
in which he or she is interested. Of course, compromise “Means: Difference between two independent means (two
power analyses can easily result in unconventional sig- groups)” in the “Statistical test” menu (see Figure 1). Al-
nificance levels greater than (cid:40) (cid:21) .05 (in the case of small ternatively, one might use the design-based approach of
samples or effect sizes) or less than (cid:40) (cid:21) .001 (in the case test selection. With the “Tests” pull-down menu in the top
of large samples or effect sizes). However, we believe that row, it is possible to select (1) the parameter class to which
the benefit of balanced Type I and Type II error risks often the statistical test refers (i.e., correlation and regression,
offsets the costs of violating significance level conven- means, proportions, variances, or generic) and (2) the de-
tions (cf. Gigerenzer, Krauss, & Vitouch, 2004). sign of the study (e.g., number of groups, independent
vs. dependent samples). For example, a researcher would
Sensitivity Analyses select “Means” followed by “Two independent groups” to
In sensitivity analyses, the critical population effect size specify the two-groups t test (see Figure 2). The design-
is computed as a function of (cid:40), 1 (cid:18) (cid:59), and N. Sensitivity based approach has the advantage that test options refer-
analyses may be particularly useful for evaluating pub- ring to the same parameter class (e.g., means) are located
lished research. They provide answers to questions such as in close proximity, whereas in the distribution-based ap-
“What effect size was a study able to detect with a power proach they may be scattered across different distribution
of 1 (cid:18) (cid:59) (cid:21) .80 given its sample size and (cid:40) as specified families.
by the author? In other words, what is the minimum ef- In the second step, the “Type of power analysis” menu
fect size to which the test was sufficiently sensitive?” In in the center of the main window should be used to choose
addition, it may be useful to perform sensitivity analyses the appropriate analysis type. In the third step, the power
before conducting a study to see whether, given a lim- analysis input parameters are specified in the lower left of
ited N, the size of the effect that can be detected is at all the main window. To illustrate, an a priori power analysis
realistic (or, for instance, much too large to be expected for a two-groups t test would require a decision between a
realistically). one-tailed and a two-tailed test, a specification of Cohen’s
(1988) effect size measure (d) under H , the significance
1
Criterion Analyses level (cid:40), the required power (1 (cid:18) (cid:59)) of the test, and the
Finally, criterion analyses compute (cid:40) (and the associ- preferred group size allocation ratio n /n . The final step
2 1
ated decision criterion) as a function of 1 (cid:18) (cid:59), the effect consists of clicking on “Calculate” to obtain the output in
size, and a given sample size. Criterion analyses are alter- the lower right of the main window.
natives to post hoc power analyses. They may be reason- For instance, input parameters specifying a one-tailed
able whenever the control of (cid:40) is less important than the t test, a medium effect size of d (cid:21) 0.5, (cid:40) (cid:21) .05, 1 (cid:18) (cid:59) (cid:21)
control of (cid:59). In case of goodness-of-fit tests for statistical .95, and an allocation ratio of n /n (cid:21) 1 would result in
2 1
models, for example, it is most important to minimize the a total sample size of N (cid:21) 176 (88 observation units in
(cid:59) risk of wrong decisions in favor of the model (H ). Re- each group; see Figures 1 and 2). The noncentrality pa-
0
searchers could thus use criterion analyses to compute the rameter (cid:89) defining the t distribution under H , the decision
1
significance level (cid:40) which is compatible with (cid:59) (cid:21) .05 for criterion to be used (i.e., the critical value of the t statis-
a small effect size. tic), the degrees of freedom2 of the t test, and the actual
Whereas G*Power 2 was limited to the first three types power value are also displayed. Note that the actual power
of power analysis, G*Power 3 covers all five types. On the will often be slightly larger than the prespecified power
basis of the feedback we received from G*Power 2 users, in a priori power analyses. The reason is that noninteger
we believe that any question related to statistical power sample sizes are always rounded up by G*Power to obtain
that arises in research practice can be categorized under integer values consistent with a power level not lower than
one of these analysis types. the prespecified one.
In addition to the numerical output, G*Power 3 dis-
PROGRAM HANDLING plays the central (H ) and the noncentral (H ) test statistic
0 1
distributions along with the decision criterion and the as-
Using G*Power 3 typically involves the following sociated error probabilities in the upper part of the main
four steps: (1) Select the statistical test appropriate for window (see Figure 1).3 This supports understanding of
the problem, (2) choose one of the five types of power the effects of the input parameters and is likely to be a

178 FAUL, ERDFELDER, LANG, AND BUCHNER
Figure 1. The distribution-based approach of test specification in G*Power 3.0.
useful visualization tool in the teaching of, or the learning ((cid:192)) in the populations underlying the groups to calculate
about, inferential statistics. The distributions plot can be Cohen’s d (cid:21) |(cid:142) (cid:18) (cid:142) |/(cid:192). Clicking on the “Calculate and
1 2
printed, saved, or copied by clicking on the right mouse transfer to main window” button copies the computed ef-
button inside the plot area. fect size to the appropriate field in the main window.
The input and output of each power calculation in a Another useful option is the Power Plot window (see
G*Power session is automatically written to a protocol Figure 3), which is opened by clicking on “X–Y plot for a
that can be displayed by selecting the “Protocol of power range of values” on the lower right side of the main win-
analyses” tab in the main window. It is possible to clear dow (see Figures 1 and 2).
the protocol or to print, save, and copy the protocol in the By selecting the appropriate parameters for the y- and
same way as the distributions plot. x-axes, one parameter ((cid:40), 1 (cid:18) (cid:59), effect size, or sample size)
Because Cohen’s (1988) book on power analysis appears can be plotted as a function of any other parameter. Of the
to be well-known in the social and behavioral sciences, we remaining two parameters, one can be chosen to draw a fam-
made use of his effect size measures whenever possible. ily of graphs, whereas the fourth parameter is kept constant.
Researchers unfamiliar with these measures and users For instance, sample size can be drawn as a function of the
who prefer to compute Cohen’s measures from more basic power 1 (cid:18) (cid:59) for several different population effects sizes
parameters can click on the “Determine” button to the left while (cid:40) is kept at a particular value. The plot may be printed,
of the “Effect size” input field (see Figures 1 and 2). A saved, or copied by clicking on the right mouse button inside
drawer will open next to the main window and provide the plot area. Selecting the “Table” tab reveals the data un-
access to an effect size calculator tailored to the selected derlying the plot; they may be copied to other applications.
test (see Figure 2). For the two-groups t test, for example, The Power Plot window inherits all input parameters of
users can specify the means ((cid:142) , (cid:142) ) and the common SD the analysis that is active when the “X–Y plot for a range of
1 2

G*POWER 3 179
Figure 2. The design-based approach of test specification in G*Power 3.0 and the “Effect size” drawer.
Figure 3. The Power Plot window of G*Power 3.0.

180 FAUL, ERDFELDER, LANG, AND BUCHNER
values” button is clicked. Only some of these parameters esis that adding more predictors increases the value of R2
can be directly manipulated in the Power Plot window. For (Cohen, 1988, chap. 9). According to Cohen’s criteria,
instance, switching from a plot of a two-tailed test to a plot effect sizes (f2) of 0.02, 0.15, and 0.35 are considered
of a one-tailed test requires choosing the “Tail(s): One” small, medium, and large, respectively.
option in the main window and then clicking on the “X–Y
plot for a range of values” button. Tests for Means (Univariate Case)
Table 3 summarizes the power analysis procedures for
TYPES OF STATISTICAL TESTS tests on means. G*Power 3 supports all cases of the t test
for means described by Cohen (1988, chap. 2): the test for
G*Power 3 provides power analyses for test statistics independent means, the test of the null hypothesis that the
following t, F, (cid:79)2, or standard normal distributions under population mean equals some specified value (one sample
H (either exact or asymptotic) and noncentral distributions case), and the test on the means of two dependent samples
0
of the same test families under H . In addition, it includes (matched pairs). Cohen’s d and d are used as effect size
1 z
power analyses for some exact tests. In Tables 2–9, we indices. Cohen defines ds of 0.2, 0.5, and 0.8 as small,
briefly describe the tests currently covered by G*Power 3. medium, and large effects, respectively. Effect size dialogs
Table 1 lists the symbols used in Tables 2–9 and their are available to compute the appropriate effect size param-
meanings. eter from means and SDs. For example, assume we want to
compare visual search times for targets embedded in rare
Tests for Correlation and Regression versus frequent local contexts in a within-subjects design
Table 2 summarizes the procedures supported for test- (cf. Hoffmann & Sebald, 2005, Experiment 1). It is ex-
ing hypotheses on correlation and regression. One-sample pected that the mean search time for targets in rare contexts
tests are provided for the point–biserial model—that is, (e.g., 600 msec) should decrease by at least 10 msec (i.e.,
the model for correlations between a binary variable and to 590 msec) in frequent contexts as a consequence of local
a continuous variable—and for correlations between two contextual cuing. If prior evidence suggests population
normally distributed variables (Cohen, 1988, chap. 3).4 SDs of, say, (cid:192) (cid:21) 25 msec in each of the conditions and a
The latter test uses the exact sample correlation coefficient correlation of (cid:188) (cid:21) .70 between search times in the two con-
distribution (Barabesi & Greco, 2002) or, optionally, a ditions, we can use the “Effect size” drawer of G*Power 3
large-sample approximation based on Fisher’s r-to-z trans- for the matched pairs t test to calculate the effect size d (cid:21)
z
formation. The two-sample test for differences between 0.516 (see the second row of Table 3 for the formula). By
two correlations uses Cohen’s (1988, chap. 4) effect size q selecting a post hoc power analysis for one-tailed matched
and is based on Fisher’s r-to-z transformation. Cohen de- pairs t tests, we easily see that for d (cid:21) 0.516, (cid:40) (cid:21) .05, and
z
fines qs of 0.10, 0.30, and 0.50 as small, medium, and large N (cid:21) 16 participants, the power (1 (cid:18) (cid:59)) is only .47. Thus,
effects, respectively. provided that the assumptions outlined above are appropri-
The two procedures available for the multiple regres- ate, the nonsignificant statistic [t(15) (cid:21) 1.475] obtained by
sion model handle the cases of (1) a test of an overall Hoffmann and Sebald (2005, Experiment 1, p. 34) might
e ffect—that is, the hypothesis that the population value in fact be due to a Type II error. This interpretation would
of R2 is different from zero—and (2) a test of the hypoth- be consistent with the fact that Hoffmann and Sebald ob-
Table 1
Symbols and Their Meanings As Used in the Tables
Symbols Meaning
(cid:142) ((cid:142)) population mean (in group i)
i
(cid:142)(cid:37) ((cid:142)(cid:37)) vector of population means (in group i)
i
(cid:142) population mean of the difference
x(cid:18)y
N total sample size
n sample size in group i
i
(cid:192) standard deviation in the population
(cid:192) standard deviation of the effect
(cid:142)
(cid:192) standard deviation of the difference
x(cid:18)y
(cid:129) noncentrality parameter of the noncentral F and (cid:79)2 distribution
(cid:89) noncentrality parameter of the noncentral t distribution
df degrees of freedom
df, df numerator and denominator degrees of freedom, respectively
1 2
(cid:188) ((cid:188)) population correlation (in group i)
i
R2 , R2 squared multiple correlation coefficients, corresponding to the proportion of Y
Y(cid:95)A Y(cid:95)A,B
variance that can be accounted for by multiple regression on the set of predictor
variables A and A(cid:134)B, respectively
(cid:25) population variance–covariance matrix
M matrix of regression parameters (population means)
C contrast matrix (contrasts between rows of M)
A contrast matrix (contrasts between columns of M)
(cid:174) ((cid:174)) probability of success (in group i)
i

G*POWER 3 181
Table 2
Tests for Correlation and Regression
Test Null Noncentrality Parameter
Test Family Hypothesis Effect Size Other Parameters and Degrees of Freedom
Difference from t tests (cid:188) (cid:21) 0 (cid:188) (cid:82)2
zero: point biserial (cid:68)(cid:29) (cid:149) N
1(cid:13)(cid:82)2
model
df (cid:21) N (cid:18) 2
Difference from exact (cid:188) (cid:21) c (cid:188) Constant
constant tests correlation c
(bivariate normal)
Inequality of two z tests (cid:188) 1 (cid:21) (cid:188) 2 q (cid:21) z 1 (cid:18) z 2 m (cid:29) q
correlation 1 1(cid:11)(cid:82) 1 s
coefficients z i (cid:29) 2 ln 1(cid:13)(cid:82) i i s(cid:29) (cid:8)n n (cid:13) 1 (cid:11) 3(cid:9) n (cid:8) 2 n (cid:13) (cid:13) 6 3(cid:9)
1 2
M reg u r l e ti s p s l i e o n: F tests R Y 2 (cid:95)A (cid:21) 0 f2 (cid:29) 1(cid:13) R Y R 2 (cid:149)A 2 N pr u e m di b ct e o r r o s f p (#A) d (cid:129) f (cid:21) 1 (cid:21) f 2 p N
deviation of R2 Y(cid:149)A df (cid:21) N (cid:18) p (cid:18) 1
2
from zero
M reg u r l e ti s p s l i e o n: F tests R Y 2 (cid:95)A,B (cid:21) R Y 2 (cid:95)A f2 (cid:29) R Y 1 2 (cid:149)A (cid:13) ,B R (cid:13) 2 R Y 2 (cid:149)A T pr o e t d al i c n t u o m rs b p er of d (cid:129) f (cid:21) 1 (cid:21) f 2 q N
increase of R2 Y(cid:149)A,B (#A (cid:17) #B) df
2
(cid:21) N (cid:18) p (cid:18) 1
Number of tested
predictors q (#B)
served significant local contextual cuing effects in each of to compensate for such adverse effects in tests of within
the other four experiments they reported. effects or between–within interactions, the noncentrality
The procedures provided by G*Power 3 to test effects in parameter and the degrees of freedom of the F distribu-
between-subjects designs with more than two groups (i.e., tion can be multiplied by a correction factor (cid:101) (Geisser &
one-way ANOVA designs and general main effects and Greenhouse, 1958; Huynh & Feldt, 1970). (cid:101) (cid:21) 1 if the
interactions in factorial ANOVA designs of any order) are sphericity assumption is met and approaches 1/(m (cid:18) 1)
identical to those in G*Power 2 (Erdfelder et al., 1996). In with increasing degrees of violation of sphericity, where
all these cases, the effect size f as defined by Cohen (1988) m denotes the number of repeated measurements.
is used. In a one-way ANOVA, the “Effect size” drawer G*Power provides three separate yet very similar rou-
can be used to compute f from the means and group sizes tines to calculate power in the univariate approach for
of k groups and an SD common to all groups. For tests of between effects, within effects, and interactions. If the to-
effects in factorial designs, the “Effect size” drawer offers be-detected effect size f is known, these procedures are
the possibility of computing effect size f from the vari- very easy to apply. To illustrate, Berti, Münzer, Schröger,
ance explained by the tested effect and the error variance. and Pechmann (2006) compared the pitch discrimination
Cohen defines fs of 0.1, 0.25, and 0.4 as small, medium, ability of 10 musicians and 10 control subjects (between-
and large effects, respectively. subjects factor A) for 10 different interference conditions
New in G*Power 3 are procedures for analyzing main (within-subjects factor B). Assuming that A, B, and A (cid:19)
effects and interactions for A (cid:19) B mixed designs, where B effects of medium size (f (cid:21) 0.25; see Cohen, 1988;
A is a between-subjects factor (or an enumeration of Table 3 of the present article) should be detected given a
the groups generated by cross-classification of several correlation of (cid:188) (cid:21) .50 between repeated measures and a
between-subjects factors) and B is a within-subjects fac- significance level of (cid:40) (cid:21) .05, the power values of the F
tor (or an enumeration of the repeated measures generated tests for the A main effect, the B main effect, and the A (cid:19)
by cross-classification of several within-subjects factors). B interaction are easily computed as .30, .95, and .95, re-
Both the univariate and the multivariate approaches to re- spectively, by inserting f (cid:21) 0.25, (cid:40) (cid:21) .05, the total sample
peated measures (O’Brien & Kaiser, 1985) are supported. size (20), the number of groups (2), the number of repeti-
The multivariate approach will be discussed below. The tions (10), and (cid:188) (cid:21) .50 into the appropriate input fields of
univariate approach is based on the sphericity assump- the procedures designed for these tests.
tion. This assumption is correct if (in the population) all If the to-be-detected effect size f is unknown, it must be
variances of the repeated measurements are equal and all computed from more basic parameters characterizing the
correlations between pairs of repeated measurements are expected population scenario under H .To demonstrate
1
equal. If all the distributional assumptions are met, then the the general procedure, we will show how to do post hoc
univariate approach is the most powerful method (Muller power analyses in the scenario illustrated in Figure 4 as-
& Barton, 1989; O’Brien & Kaiser, 1985). Unfortunately, suming the variance and correlations structure defined
the assumption of equal correlations is violated quite in matrix SR . We first consider the power of the within
1
often, which can lead to very misleading results. In order effect: We select the “F tests” family, the “Repeated mea-

182 FAUL, ERDFELDER, LANG, AND BUCHNER
Table 3
Tests for Means (Univariate Case)
Test Null Noncentrality Parameter
Test Family Hypothesis Effect Size Other Parameters and Degrees of Freedom
__
Difference from t tests (cid:142) (cid:21) c d (cid:29) (cid:77)(cid:13)c (cid:89) (cid:21) d (cid:183)N(cid:197)
constant (one- (cid:83) df (cid:21) N (cid:18) 1
sample case)
__
Inequality of t tests (cid:142) x(cid:18)y (cid:21) 0 (cid:77) (cid:89) (cid:21) d z (cid:183)N(cid:197)
two dependent d (cid:29) x(cid:13)y df (cid:21) N (cid:18) 1
means z (cid:83) x(cid:13)y
(matched pairs) (cid:83) (cid:29) (cid:83)2(cid:11)(cid:83)2(cid:13)2(cid:82)(cid:83)(cid:83)
x(cid:13)y x y x y
I tw ne o q i u n a d l e it p y e o n f d ent t tests (cid:142) 1 (cid:21) (cid:142) 2 d (cid:29) (cid:77) 1 (cid:83) (cid:13)(cid:77) 2 (cid:68)(cid:29)d n 1 n 2
n (cid:11)n
means 1 2
df (cid:21) N (cid:18) 2
ANOVA, fixed F tests (cid:142) (cid:18) (cid:142) (cid:21) 0 (cid:83) Number of (cid:129) (cid:21) f2N
i f (cid:29) (cid:77)
effects, one i (cid:21) 1, . . ., k (cid:83) groups k df 1 (cid:21) k (cid:18) 1
w of a m y: u i l n t e ip q l u e ality (cid:163) k n (cid:8)(cid:77)(cid:13)(cid:77)(cid:9)2 df 2 (cid:21) N (cid:18) k
j i
means (cid:83)2 (cid:29) i(cid:29)1
(cid:77) N
ANOVA, fixed F tests (cid:142) (cid:18) (cid:142) (cid:21) 0 (cid:83) Total number of (cid:129) (cid:21) f2N
i f (cid:29) (cid:77)
effects, i (cid:21) 1, . . ., k (cid:83) cells in the df 1 (cid:21) q
multifactor design k df (cid:21) N (cid:18) k
2
designs, and Degrees of
planned freedom of the
comparisons tested effect q
ANOVA: F tests (cid:142) (cid:18) (cid:142) (cid:21) 0 (cid:83) Levels of (cid:129) (cid:21) f2uN(cid:101)
i f (cid:29) (cid:77)
repeated i (cid:21) 1, . . ., k (cid:83) between factor k u(cid:29) m
measures, 1(cid:11)(m(cid:13)1)(cid:82)
between effects Levels of df 1 (cid:21) k (cid:18) 1
repeated measures df (cid:21) N (cid:18) k
2
factor m
ANOVA: F tests (cid:142) (cid:18) (cid:142) (cid:21) 0 (cid:83) (cid:129) (cid:21) f2uN
repeated i (cid:21) i 1, . . ., m f (cid:29) (cid:83) (cid:77) u(cid:29) m
measures, Population 1(cid:13)(cid:82)
within effects correlation df 1 (cid:21) (m (cid:18) 1)(cid:101)
among repeated df (cid:21) (N (cid:18) k)(m (cid:18) 1)(cid:101)
2
measures (cid:188)
ANOVA: F tests (cid:142) (cid:18) (cid:142) (cid:18) . . . (cid:83) (cid:129) (cid:21) f2uN(cid:101)
r m ep ea e s a u te r d es , i (cid:197) (cid:21) ij (cid:142) j 1 (cid:17) , . i (cid:142) . . (cid:21) , k 0 f (cid:29) (cid:83) (cid:77) For within and u(cid:29) 1(cid:13) m (cid:82)
between–within j (cid:21) 1, . . ., m within–between df 1 (cid:21) (k (cid:18) 1)(m (cid:18) 1)(cid:101)
interactions interactions: df 2 (cid:21) (N (cid:18) k)(m (cid:18) 1)(cid:101)
Nonsphericity
correction (cid:101)
sures: Within factors, ANOVA-approach” test, and “post to matrix SR , we insert .3 in the “Corr among rep mea-
1
hoc” as the type of power analysis. Both the “Number of sures” input field and—since sphericity obviously holds
groups” and “Repetitions” fields are set to 3. Total sample in this case—set nonsphericity correction (cid:101) to 1. To deter-
size is set to 90 and (cid:40) error probability to .05. Referring mine effect size f, we first calculate (cid:192)2, the variance of the
(cid:142)
Time 1 Time 2 Time 3 (cid:142) n
i• i
Group 1 10 15 20 15 30 (cid:164)10 0.3 0.1(cid:179) (cid:164) 9 0..3 0.3(cid:179)
Group 2 10 12 15 12.333 30 SR (cid:29) (cid:165)0.3 9 0.3(cid:180) SR (cid:29) (cid:165)0.3 9 0.3(cid:180)
2 (cid:165) (cid:180) 1 (cid:165) (cid:180)
Group 3 10 12 12 11.333 30 (cid:166) (cid:165)0.1 0.3 8(cid:181) (cid:180) (cid:166) (cid:165)0.3 0.3 9(cid:181) (cid:180)
(cid:142) 10 13 15.667 (cid:142) (cid:21) 12.889
•j ••
Figure 4. Sample 3 (cid:19) 3 repeated measures designs. Three groups are repeatedly measured at three dif-
ferent times. The shaded portion of the table is the postulated matrix M of population means (cid:142) . The last
ij
column of the table contains the sample size of each group. The symmetric matrices SR specify two dif-
i
ferent covariance structures between measurements taken at different times: The main diagonal contains
the SDs of the measurements at each time, and the off-diagonal elements contain the correlations between
pairs of measurements taken at different times.

G*POWER 3 183
within effect. From the three column means (cid:142) of matrix that the vector of population means is identical to a speci-
•j
M and the grand mean (cid:142) , we get fied constant mean vector. The “Effect size” drawer can
••
2 be used to calculate the effect size (cid:5) from the difference
(cid:83) (cid:77) (cid:29) (cid:142)(cid:37) (cid:18) c(cid:37) and the expected variance–covariance matrix under
(10(cid:13)12.889)2 (cid:11)(13(cid:13)12.889)2 (cid:11)(15.667(cid:13)12.8899)2 H
1
. For example, assume that we have two variables, a
difference vector (cid:142)(cid:37) (cid:18) c(cid:37) (cid:21) (1.88, 1.88) under H , vari-
3 1
ances (cid:192)2 (cid:21) 56.79, (cid:192)2 (cid:21) 29.28, and a covariance of 11.98
(cid:29)5.35679.
(Renche
1
r, 1998, p. 1
2
06). To perform a post hoc power
Clicking on the “Determine” button next to the “Effect analysis, choose “F tests,” then “Multivariate: Hotelling
size” label opens the “Effect size” drawer. We choose the T2, one group” and set the analysis type to “Post hoc.”
“From variances” option and set “Variance explained by Enter 2 in the “Response variables” field and then click
special effect” to 5.357 and “Variance within groups” to on the “Determine” button next to the “Effect size” label.
92 (cid:21) 81. Clicking on the “Calculate and transfer to main In the “Effect size” drawer, at “Input method: Means and
window” button calculates an effect size f (cid:21) 0.2572 and . . . ,” choose “Variance–covariance matrix” and click on
transfers f to the effect size field in the main window. “Specify/edit input values.” Under the “Means” tab, insert
Clicking on “Calculate” yields the results: The power is 1.88 in both input fields; under the “Cov sigma” tab, in-
.997, the critical F value with df (cid:21) 2 and df (cid:21) 174 is sert 56.79 and 29.28 in the main diagonal and 11.98 as the
1 2
3.048, and the noncentrality parameter (cid:129) is 25.52. The off-diagonal element in the lower left cell. Clicking on the
procedure for tests of between–within interactions ef- “Calculate and transfer to main window” button initiates
fects (“Repeated measures: Within–between interac- the calculation of the effect size (0.380) and transfers it to
tions, ANOVA-approach”) is almost identical to that just the main window. For this effect size, (cid:40) (cid:21) .05, and a total
described. The only difference is in how the effect size f sample size of N (cid:21) 100, the power amounts to .9282. The
is computed. Here, we first calculate the variance of the procedure in the two-group case is exactly the same, with
residual values (cid:142) (cid:18) (cid:142) (cid:18) (cid:142) (cid:17) (cid:142) of matrix M: the following exceptions. First, in the “Effect size” drawer
ij i• •j ••
two mean vectors have to be specified. Second, the group
(cid:83) (cid:77) 2 (cid:29) sizes may differ.
(10(cid:13)10(cid:13)15(cid:11)12.889)2(cid:11)...(cid:11)(12(cid:13)15.667(cid:13)11.3333(cid:11)12.889)2 The MANOVA tests in G*Power 3 refer to the multi-
variate general linear model (O’Brien & Muller, 1993;
9.0
O’Brien & Shieh, 1999): Y (cid:21) XB (cid:17)(cid:0)(cid:101), where Y is N (cid:19)
(cid:29)1.90123.
p of rank p, X is N (cid:19) r of rank r, and the r (cid:19) p matrix
Using the “Effect size” drawer in the same way as above,
B contains fixed coefficients. The rows of (cid:101) are taken to
we get an effect size f (cid:21) 0.1532, which results in a power of
be independent p-variate normal random vectors with
.653. To test between effects, we choose “Repeated measures:
mean 0 and p (cid:19) p positive definite covariance matrix (cid:25).
Between factors, ANOVA-approach” and set all parameters
The multivariate general linear hypothesis is H :CBA (cid:21)
to the same values as before. Note that in this case we do not 0
(cid:27) , where C is c (cid:19) r with full row rank and A is p (cid:19) a
need to specify (cid:101)—no correction is necessary because tests 0
with full column rank (in G*Power 3, (cid:27) is assumed to be
of between factors do not require the sphericity assumption. 0
zero). H has df (cid:21) a(cid:95)c degrees of freedom. All tests of
To calculate the effect size, we use “Effect size from means” 0 1
the hypothesis H refer to the matrices
in the “Effect size” drawer. We select three groups, set “SD 0
(cid:192) within each group” to 9, and insert for each group the cor- H (cid:29)
responding row mean (cid:142) of M (15, 12.3333, 11.3333) and (cid:13)1
an equal group size of 3 i 0 • . Effect size f (cid:21) 0.1719571 is cal- N(cid:8)CBU(cid:13)(cid:49)(cid:49) (cid:9)T (cid:167) C (cid:8) XTWX (cid:9)(cid:13)1 CT(cid:182) (cid:8)CBU(cid:13)(cid:49)(cid:49) (cid:9)
0 (cid:169) (cid:168) (cid:184) (cid:183) 0
culated, and the resulting power is .488.
Note that G*Power 3 can easily handle pure repeated (cid:29) NH*
measures designs without any between-subjects factors and
(see, e.g., Frings & Wentura, 2005; Schwarz & Müller,
E (cid:29) UT(cid:51)(cid:51)U(cid:8)N (cid:13)r(cid:9),
2006) by choosing the “Repeated measures: Within fac-
tors, ANOVA-approach” procedure and setting the num- where X¨ is a q (cid:19) q essence model matrix, W is a q (cid:19) q di-
ber of groups to 1. agonal matrix containing weights w (cid:21) n/N, and XTX (cid:21)
j j
N(X¨TWX¨) (see O’Brien & Shieh, 1999, p. 14). Let {(cid:172)*,
1
Tests for Mean Vectors (Multivariate Case) . . ., (cid:172)*} be the s (cid:21) min(a,c) eigenvalues of E(cid:18)1H* and
s
G*Power 3 contains several procedures for performing {(cid:172) , . . ., (cid:172)} the s eigenvalues of E(cid:18)1H/(N (cid:18) r)—that is,
1 s
power analyses in multivariate designs (see Table 4). All (cid:172) (cid:21) (cid:172)*N/(N (cid:18) r).
i i
these tests belong to the F test family. G*Power 3 offers power analyses for the multivariate
The Hotelling T2 tests are extensions of univariate model following either the approach outlined in Muller and
t tests to the multivariate case, in which more than one Peterson (1984; Muller, LaVange, Landesman-Ramey, &
dependent variable is measured: Instead of two single Ramey, 1992) or, alternatively, the approach of O’Brien and
means, two mean vectors are compared, and instead of a Shieh (1999; Shieh, 2003). Both approaches approximate the
single variance, a variance–covariance matrix is consid- exact distributions of Wilks’s U (Rao, 1951), the Hotelling–
ered (Rencher, 1998). In the one-sample case, H posits Lawley T (Pillai & Samson, 1959), the Hotelling–Lawley
0 1

184 FAUL, ERDFELDER, LANG, AND BUCHNER
Table 4
Tests for Mean Vectors (Multivariate Case)
Test Null Noncentrality Parameter
Test Family Hypothesis Effect Size Other Parameters and Degrees of Freedom
_______
Hotelling T2: F tests (cid:142)(cid:37) (cid:21) c(cid:37) (cid:5) (cid:21) (cid:183)(cid:37)v(cid:197)T (cid:25)(cid:18)1 v(cid:37) (cid:197) Number of (cid:129) (cid:21) (cid:5)2N
difference from v (cid:21) (cid:142)(cid:37) (cid:18) c(cid:37) response df (cid:21) k
1
constant mean variables k df (cid:21) N (cid:18) k
2
vector
_______
Hotelling T2: F tests (cid:142)(cid:37) 1 (cid:21) (cid:142)(cid:37) 2 (cid:5) (cid:21) (cid:183)(cid:37)v(cid:197)T (cid:25)(cid:18)1 v(cid:37) (cid:197) Number of (cid:76)(cid:29)(cid:36)2 n 1 n 2
difference v (cid:21) (cid:142)(cid:37) 1 (cid:18) (cid:142)(cid:37) 2 response n 1 (cid:11)n 2
between two variables k df (cid:21) k
1
mean vectors df (cid:21) N (cid:18) k (cid:18) 1
2
MANOVA: F tests CM (cid:21) 0 Effect size Number of Noncentrality parameter
global effects Means matrix f groups g and degrees of freedom
mult
M depends on the test Number of depend on the test statistic
Contrast statistics: response and algorithm used (see
matrix C • Wilks’s U variables k Effect Size column and
• Hotelling– Table 5).
• Lawley T
1
• Hotelling–
MANOVA: F tests Number of
• Lawley T
special effects 2 groups g
• Pillai’s V
Number of
and algorithms:
predictors p
• Muller &
Number of
• Peterson
response
• (1984)
variables k
• O’Brien &
MANOVA: F tests CMA (cid:21) 0 • Shieh Levels of
repeated Means matrix • (1999) between factor
measures, M k
between Between Levels of
effects contrast repeated
matrix C measures factor
MANOVA: F tests
Within m
repeated
contrast
measures,
matrix A
within effects
MANOVA: F tests
repeated
measures,
between–within
interactions
T (McKeon, 1974), and Pillai’s V (Pillai & Mijares, 1959) effects and interactions in factorial MANOVA designs.
2
by F distributions and are asymptotically equivalent. Table 5 These procedures are the direct multivariate analogues
outlines details of both approximations. The type of statistic of the ANOVA routines described above. Table 5 sum-
(U, T , T , V) and the approach (Muller & Peterson, 1984, marizes information that is needed in addition to the
1 2
or O’Brien & Shieh, 1999) can be selected in an Options formulas given above to calculate effect size f from hy-
dialog that can be evoked by clicking on the “Options” but- pothesized values for mean matrix M (corresponding to
ton at the bottom of the main window. matrix B in the model), covariance matrix (cid:25), and contrast
The approach of Muller and Peterson (1984) has found matrix C, which describes the effect under scrutiny. The
widespread use; for instance, it has been adopted in the “Effect size” drawer can be used to calculate f from known
SPSS software package. We nevertheless recommend the values of the statistic U, T , T , or V. Note, however, that
1 2
approach of O’Brien and Shieh (1999) because it has a the transformation of T to f depends on the sample size.
2
number of advantages: (1) Unlike the method of Muller Thus, this test statistic seems not very well suited for
and Peterson, it provides the exact noncentral F distri- a priori analyses. In line with Bredenkamp and Erdfelder
bution whenever the hypothesis involves at most s (cid:21) 1 (1985), we recommend V as the multivariate test statistic.
positive eigenvalues; (2) its approximations for s (cid:14) 1 Another group of procedures in G*Power 3 supports
eigenvalues are almost always more accurate than those the multivariate approach to power analyses of repeated
of Muller and Peterson’s method (which systematically measures designs. G*Power provides separate but very
underestimates power); and (3) it provides a simpler form similar routines for the analysis of between effects, within
of the noncentrality parameter—that is, (cid:129) (cid:21) (cid:129)* N, where effects, and interactions in simple A (cid:19) B designs, where
(cid:129)* is not a function of the total sample size. A is a between-subjects factor and B a within-subjects
G*Power 3 provides procedures to calculate the power factor. To illustrate the general procedure, we describe
for global effects in a one-way MANOVA and for special in some detail a post hoc analysis of the within effect for

G*POWER 3 185
Table 5
Approximating Univariate Statistics for Multivariate Hypotheses
Effect Size and
Statistic Formula Numerator df Noncentrality Parameter
2
Wilks’s U U (cid:29)(cid:147) s (cid:8)1(cid:11)(cid:70) (cid:9)(cid:13)1 df 2 (cid:21)g(N (cid:18) g 1 ) (cid:18) g 2 f(U)2 (cid:29) 1(cid:13)U 1/g
MP k(cid:29)1 k g 1(cid:29)r(cid:11) a(cid:13)
2
c(cid:11)1
(cid:129)(cid:197)(cid:21) f(U)2d
U
f
1/g
ca(cid:13)2 2
Wilks’s U U (cid:29)(cid:147) s (cid:8)1(cid:11)(cid:70) *(cid:9)(cid:13)1 g 2 (cid:29) 2 f(U)2 (cid:29) 1(cid:13)U 1/g
OS k(cid:29)1 k (cid:170) 1 ca(cid:97)3 U 1/g
(cid:173) (cid:129)(cid:197)(cid:21) Ngf(U)2
g(cid:29)(cid:171)
(cid:172) (cid:173) c
(
2
ca
(cid:11)
)
a
2
2
(cid:13)
(cid:13)
4
5
ca(cid:97)4
P M il P lai’s V V (cid:29)(cid:147) s (cid:70) k /(cid:8)1(cid:11)(cid:70) k (cid:9) df 2 (cid:21) s(N (cid:18) r (cid:18) a (cid:17) s) f(V)2 (cid:29) (s V (cid:13)V)
k(cid:29)1
(cid:129)(cid:197)(cid:21) f(V)2 df
2
P O i S llai’s V V (cid:29) (cid:147) s (cid:70) k */(cid:8)1(cid:11)(cid:70) k *(cid:9) f(V)2 (cid:29) (s V (cid:13)V)
k(cid:29)1
(cid:129)(cid:197)(cid:21) Nsf(V)2
Hotelling– s df (cid:21) s(N (cid:18) r (cid:18) a (cid:18) 1) (cid:17) 2 f(T)2 (cid:21) T/s
T (cid:29)(cid:147)(cid:70) 2
Lawley T k (cid:129)(cid:197)(cid:21) f(T)2 df
1 k(cid:29)1 2
MP
Hotelling– T (cid:29)(cid:147) s (cid:70) * f(T)2 (cid:21) T/s
Lawley T 1 k(cid:29)1 k (cid:129)(cid:197)(cid:21) Nsf(T)2
OS
Hotelling– s df (cid:21) 4 (cid:17) (ca (cid:17) 2)g f(T)2 (cid:21) T/h
T (cid:29)(cid:147)(cid:70) 2
L
M
a
P
wley T 2 k(cid:29)1 k
g(cid:29)
(N(cid:13)r)2 (cid:13)(N(cid:13)r)g 4(cid:11)g
3
(cid:129)(cid:197)(cid:21) f(T)2 df 2
(N(cid:13)r)g 2(cid:13)g
1
O H La o S w te l l e l y in T g– 2 T (cid:29) k (cid:147) s (cid:29)1 (cid:70) k * g g 1 2 (cid:21) (cid:21) (cid:0) c c (cid:17) (cid:17) (cid:0) 2 a a (cid:17) (cid:17) 1 (cid:0)a2 (cid:18) 1 f (cid:129)(cid:197) ( (cid:21) T) N 2 (cid:21) hf T ( / T h )2
g (cid:21) a(a (cid:17) 3)
3
g (cid:21) 2a (cid:17) 3
4
h(cid:29)
df 2(cid:13)2
N(cid:13)r(cid:13)a(cid:13)1
Note—MP, Muller–Peterson algorithm; OS, O’Brien and Shieh algorithm. (cid:172) and (cid:172)* are eigenvalues of
the effect size matrix (for details and the meaning of the variables a, c, r, and N, see text on p. 183).
the scenario illustrated in Figure 4, assuming the variance window,” we get a value of 0.1791 for Pillai’s V and the
and correlations structure defined in matrix SR . We first effect size f(V) (cid:21) 0.4672. Clicking on “Calculate” shows
2
choose “F tests,” then “Repeated measures: Within factors, that the power is .980. The analyses of between effects and
MANOVA-approach.” In the “Type of power analysis” interaction effects are performed analogously.
menu, we choose “Post hoc.” We click on the “Options”
button to open a dialog in which we deselect the “Use mean Tests for Proportions
correlation in effect size calculation” option. We choose The support for tests on proportions has been greatly
Pillai’s V statistic and the O’Brien and Shieh algorithm. enhanced in G*Power 3. Table 6 summarizes the tests that
Back at the main window, we set both number of groups are currently implemented. In particular, all tests on pro-
and repetitions to 3, total sample size to 90, and (cid:40) error portions considered by Cohen (1988) are now available,
probability to .05. To compute the effect size f(V) for the including the sign test (chap. 5), the z tests for the differ-
Pillai statistic, we open the “Effect size” drawer by clicking ence between two proportions (chap. 6), and the (cid:79)2 tests
on the “Determine” button next to the “Effect size” label. for goodness-of-fit and contingency tables (chap. 7).
In the “Effect size” drawer, select, as procedure, “Effect The sign test is implemented as a special case (c (cid:21) .5) of
size from mean and variance–covariance matrix” and, as the more general binomial test (also available in G*Power 3)
input method, “SD and correlation matrix.” Clicking on that a single proportion has a specified value c. In both
“Specify/edit matrices” opens another window, in which we procedures, Cohen’s (1988) effect size g is used and exact
specify the hypothesized parameters. Under the “Means” power values based on the binomial distribution are cal-
tab, we insert our means matrix M; under the “Cov sigma” culated. Note, however, that, due to the discrete nature of
tab, we choose “SD and correlation” and insert the values the binomial distribution, the nominal value of (cid:40) usually
of SR . Because this matrix is always symmetric, it suf- cannot be realized. Since the tables in chapter 5 of Cohen’s
2
fices to specify the lower diagonal values. After closing book use the (cid:40) value closest to the nominal value, even if it
the dialog and clicking on “Calculate and transfer to main is higher than the nominal value, the tabulated power values

186 FAUL, ERDFELDER, LANG, AND BUCHNER
Table 6
Tests for Proportions
Test Noncentrality
Test Family Hypothesis Effect Size Other Parameters Parameter
C ta o b n le t s in a g n e d ncy (cid:79)2 tests (cid:174) i (cid:21) 1i (cid:21) 1, (cid:174) . 0 . i ., k w(cid:29) (cid:163) k (cid:8)(cid:80)1i (cid:13)(cid:80)0i (cid:9)2 (cid:129) (cid:21) w2N
goodness of fit (cid:163) k (cid:80)0i (cid:29)1 i(cid:29)1 (cid:80)0i
i(cid:29)1
Difference from exact (cid:174) (cid:21) c g (cid:21) (cid:174) (cid:18) c constant proportion c
constant (one- tests
sample case)
Inequality of two exact (cid:174) /(cid:174) (cid:21) 1 odds ratio (cid:21) (cid:174) /(cid:174) proportion of discordant
12 21 12 21
dependent tests pairs (cid:21) (cid:174) (cid:17) (cid:174)
12 21
proportions
(McNemar)
Sign test exact (cid:174) (cid:21) 1/2 g (cid:21) (cid:174) (cid:18) 1/2
tests
Inequality of two z tests (cid:174) (cid:21) (cid:174) (A) alternate proportion: (cid:174) (A) null proportion: (cid:174)
1 2 2 1
independent (B) h (cid:21) (cid:172) (cid:18) (cid:172)
1 2 __
proportions (A) (cid:172)
i
(cid:21) 2 arcsin (cid:183)(cid:174)(cid:197)i
Inequality of two exact (cid:174) (cid:21) (cid:174) alternate proportion: (cid:174) null proportion: (cid:174)
1 2 1 2
independent tests
proportions
(Fisher’s exact
test)
Inequality of exact (cid:174) (cid:21) (cid:174) (A) alternate proportion: (cid:174) null proportion: (cid:174)
1 2 1 2
two independent tests (B) difference: (cid:174) (cid:18) (cid:174)
2 1
proportions (C) risk ratio: (cid:174)/(cid:174)
2 1
(unconditional)
(D) odds ratio:
(cid:80)1 /(cid:8)1(cid:13)(cid:80)1 (cid:9)
(cid:80)2 /(cid:8)1(cid:13)(cid:80)2 (cid:9)
Inequality with exact (cid:174) (cid:21) (cid:174) (cid:17) c (A) alternate proportion: (cid:174) (A) proportion: (cid:174)
offset of two tests
1 2
(B) difference: (cid:174) (cid:18) (cid:174)
1|H1
(B) difference: (cid:174)
1
(cid:18)
|H0
(cid:174)
independent (C) risk ratio: (cid:174)/
2
(cid:174)
1|H1
(C) risk ratio: (cid:174)/
2
(cid:174)
1|H0
p (u ro n p co o n rt d io it n io s nal) (D) odds ratio: (cid:80) 2 1|H 1| 1 H / 1 (cid:8)1(cid:13)(cid:80)1|H1 (cid:9) (D) odds ratio: (cid:80) 2 1|H 1| 0 H0 /(cid:8)1(cid:13)(cid:80)1|H0 (cid:9)
(cid:80)2 /(cid:8)1(cid:13)(cid:80)2 (cid:9) (cid:80)2 /(cid:8)1(cid:13)(cid:80)2 (cid:9)
(A) null proportion: (cid:174)
2
Note—(A)–(D) indicate alternative effect size measures.
are sometimes larger than those calculated by G*Power 3. unconditional power. However, despite the highly opti-
G*Power 3 always requires the actual (cid:40) not to be larger than mized algorithm used in G*Power 3, long computation
the nominal value. times may result for large sample sizes (e.g., N (cid:14) 1,000).
Numerous procedures have been proposed to test the Therefore, a limiting N can be specified in the Options
null hypothesis that two independent proportions are iden- dialog that determines at which sample size G*Power 3
tical (Cohen, 1988; D’Agostino, Chase, & Belanger, 1988; switches to a large sample approximation.
Suissa & Shuster, 1985; Upton, 1982), and G*Power 3 A third variant calculates the exact unconditional power
implements several of them. The simplest procedure is a z for approximate test statistics T (Table 7 summarizes the
test with optional arcsin transformation and optional conti- supported statistics). The logic underlying this procedure
nuity correction. Besides these two computational options, is to enumerate all possible outcomes for the 2 (cid:19) 2 bi-
one can also choose whether Cohen’s effect size measure h nomial table, given fixed sample sizes n , n in the two
1 2
or, alternatively, two proportions are used to specify the respective groups. This is done by choosing, as success
alternate hypothesis. With the options “Use continuity cor- frequencies x and x in the first and the second groups,
1 2
rection” off and “Use arcsin transform” on, the procedure respectively, any combination of the values 0 (cid:12) x (cid:3) n
1 1
calculates power values close to those tabulated by Cohen and 0 (cid:12) x (cid:3) n . Given the success probabilities (cid:174) , (cid:174) in
2 2 1 2
(1988, chap. 6). With both “Use continuity correction” and the two respective groups, the probability of observing a
“Use arcsin transform” off, the uncorrected (cid:79)2 approxima- table X with success frequencies x , x is
1 2
tion is computed (Fleiss, 1981); with “Use continuity cor-
rection” on and “Use arcsin transform” off, the corrected
P(cid:8)X |(cid:80)
1
,(cid:80)
2
(cid:9)(cid:29)
(cid:79)2 approximation is computed (Fleiss, 1981).
(cid:164)n (cid:179) (cid:164)n (cid:179)(cid:179)
A second variant is Fisher’s exact conditional test (Hase- 1 (cid:80) x1(cid:8)1(cid:13)(cid:80) (cid:9)n1(cid:13)x1 2 (cid:80) x2(cid:8)1(cid:13)(cid:80) (cid:9)n2(cid:13)x2.
(cid:165) (cid:180) 1 1 (cid:165) (cid:180) 2 2
man, 1978). Normally, G*Power 3 calculates the exact (cid:166)x 1(cid:181) (cid:166)x 2(cid:181)

G*POWER 3 187
Table 7
Test Statistics Used in Tests of the Difference Between Two Independent Proportions
No. Name Statistic
1 z test pooled variance z(cid:29) (cid:80) ˆ 1 (cid:83) (cid:13) ˆ (cid:80) ˆ 2;(cid:83) ˆ (cid:29) (cid:80) ˆ(cid:8)1(cid:13)(cid:80) ˆ(cid:9) (cid:164) (cid:166) (cid:165)n 1 1 (cid:11) n 1 2 (cid:179) (cid:181) (cid:180) ;(cid:80) ˆ (cid:29) n 1(cid:80)(cid:80) n ˆ 1 1 (cid:11) (cid:11) n n 2 2 (cid:80) ˆ 2
2 z test pooled variance ˆ ˆ k(cid:164) 1 1 (cid:179)
w co i r th re c c o ti n o t n inuity z(cid:29) (cid:80)1(cid:13)(cid:80)2(cid:11) 2 (cid:83) ˆ (cid:166) (cid:165)n 1 (cid:11) n 2(cid:181) (cid:180) ;(cid:83) ˆ(seeNo.1);k(cid:29) (cid:170) (cid:171) (cid:172) (cid:13) (cid:11) 11 1 l u o p w p e e r r t t a a i i l l
3 z test unpooled variance z(cid:29) (cid:80) ˆ 1(cid:13) ˆ (cid:80) ˆ 2;(cid:83) ˆ (cid:29) (cid:80) ˆ 1 (cid:8)1(cid:13)(cid:80) ˆ 1 (cid:9) (cid:11) (cid:80) ˆ 2 (cid:8)1(cid:13)(cid:80) ˆ 2 (cid:9)
(cid:83) n 1 n 2
4 z test unpooled variance ˆ ˆ k(cid:164) 1 1 (cid:179)
w co i r th re c c o ti n o t n inuity z(cid:29) (cid:80)1(cid:13)(cid:80)2(cid:11) 2 (cid:83) ˆ (cid:166) (cid:165)n 1 (cid:11) n 2(cid:181) (cid:180) ;(cid:83) ˆ(seeNo.3);k(cid:29) (cid:170) (cid:171) (cid:172) (cid:13) (cid:11) 11 1 l u o p w p e e r r t t a a i i l l
5 Mantel–Haenszel test z(cid:29) x 1
V
(cid:13)E
(cid:8)x
(cid:8)x
(cid:9)
1 (cid:9) ;E(cid:8)x
1
(cid:9)(cid:29) n 1 (cid:8)x 1
N
(cid:11)x 2 (cid:9) ;V(cid:8)x
1
(cid:9)(cid:29) n 1 n 2 (cid:8)xx 1(cid:11)
N
x
2
2
(N
(cid:9)(cid:8)N
(cid:13)1
(cid:13)
)
x 1(cid:13)x 2 (cid:9)
1
6 L
(U
ik
p
e
t
l
o
i
n
h
,
o
1
o
9
d
8
r
2
a
)
tio lr(cid:29)2 (cid:167)
(cid:169) (cid:168).
t
.
(cid:8)
.
x
(cid:13)
1 (cid:9)
tt
(cid:11)
(cid:8)n
t
1
(cid:8)
(cid:9)
x
(cid:13)
2 (cid:9)
t
(cid:11)
(cid:8)n
t
2
(cid:8)
(cid:9)
1
(cid:13)
(cid:13)
t
x
(cid:8)
1
x
(cid:9)
1
(cid:11)
(cid:11)
t
x
(cid:8)1
2 (cid:9)
(cid:13)
(cid:13)
x
t
2
(cid:8)
(cid:9)
N
(cid:11)t
(cid:13)
(N
x 1
)
(cid:13)
..
x
.
2 (cid:9)
(cid:182)
(cid:184) (cid:183)
;t(x)::(cid:29)xln(x)
7 t ( D te ’ s A t g w o i s th ti n d o f (cid:21) et N al . (cid:18) , 1 9 2 8 8) t N(cid:13)2 (cid:29)(cid:167)(cid:169)x 1 (cid:8)1(cid:13)x 2 (cid:9)(cid:13)x 2 (cid:8)1(cid:13)x 1 (cid:9)(cid:182)(cid:184) N(cid:167)(cid:169)n 2 x 1 (cid:8)1(cid:13)x N 1 (cid:9) (cid:13) (cid:11) 2 n 1 xx 2 (cid:8)1(cid:13)x 2 (cid:9)(cid:182)(cid:184)
Note—x, success frequency in group i; n, sample size in group i; N (cid:21) n (cid:17) n, total sample size; (cid:174)ˆ (cid:21) x/n. The
i i 1 2 i i i
z tests in the table are more commonly known as (cid:79)2 tests (the equivalent z test is used to provide two-sided tests).
To calculate power and the actual Type I error (cid:40)*, the two proportions. The specific choice has no influence on
test statistic T is computed for each table and compared the results. In the case of tests with offset, however, each
with the critical value T . If A denotes the set of all ta- input method has a different set of available test statistics.
(cid:40)
bles X rejected by this criterion—that is, those with T (cid:14) The preferred input method (see Table 6) and the test sta-
T —then the power and the (cid:40) level are given by tistic to use (see Table 8) can be changed in the Options
(cid:40)
dialog. As in the other exact procedures, the computation
1(cid:13)(cid:66)(cid:29) (cid:163)
X(cid:140)A
P(cid:8)X |(cid:80)
1
,(cid:80)
2
(cid:9)
may be time-consuming, and a limiting N can be specified
and in the Options dialog that determines at which sample size
(cid:65)* (cid:29) (cid:163) P(cid:8)X |(cid:80) ,(cid:80) (cid:9), G*Power switches to large sample approximations.
X(cid:140)A 2 2 Also new in G*Power 3 is an exact procedure to calcu-
where (cid:174) denotes the success probability in both groups late the power for the McNemar test. The null hypothesis of
2
as assumed in the null hypothesis. Note that the actual (cid:40) this test states that the proportions of successes are identi-
level can be larger than the nominal level! The preferred cal in two dependent samples. Figure 5 shows the structure
input method (proportions, difference, risk ratio, or odds of the underlying design: A binary response is sampled
ratio; see Table 6) and the test statistic to use (see Table 7) from the same subject or a matched pair in a standard con-
can be changed in the Options dialog. Note that the test dition and in a treatment condition. The null hypothesis,
statistic actually used to analyze the data must be chosen. (cid:174) (cid:21) (cid:174), is formally equivalent to the hypothesis for the
s t
For large sample sizes, the exact computation may take odd ratio: OR (cid:21) (cid:174) /(cid:174) (cid:21) 1. To fully specify H , we need
12 21 1
too much time. Therefore, a limiting N can be specified in to specify not only the odds ratio but also the proportion
the Options dialog that determines at which sample size of discordant pairs ((cid:174) )—that is, the expected proportion
D
G*Power switches to large sample approximations. of responses that differ in the standard and the treatment
G*Power 3 also provides a group of procedures to test conditions. The exact procedure used in G*Power 3 calcu-
the hypothesis that the difference, risk ratio, or odds ratio lates the unconditional power for the exact conditional test,
of a proportion with respect to a specified reference pro- which calculates the power conditional on the number of
portion (cid:174) is different under H from a difference, risk ratio, discordant pairs (n ). Let p(n (cid:21) i) be the probability that
1 D D
or odds ratio of the same reference proportion assumed the number of discordant pairs is i. Then, the unconditional
in H . These procedures are available in the “Exact” test power is the sum over all i (cid:140) {0, . . ., N} of the conditional
0
family as “Proportions: Inequality (offset), two indepen- power for n (cid:21) i weighted with p(n (cid:21) i). This procedure
D D
dent groups (unconditional).” The enumeration proce- is very efficient, but for very large sample sizes the exact
dure described above for the tests on differences between computation may take too much time. Again, a limiting N
proportions without offset is also used in this case. In the that determines at which sample size G*Power switches to
tests without offset, the different input parameters (e.g., a large sample approximation can be specified in the Op-
differences, risk ratio) are equivalent ways of specifying tions dialog. The large sample approximation calculates

188 FAUL, ERDFELDER, LANG, AND BUCHNER
Table 8
Test Statistics Used in Tests of the Difference With Offset Between Two Independent Proportions
No. Name Statistic
1 z test pooled variance z(cid:29) (cid:80) ˆ 1(cid:13) (cid:83) (cid:80) ˆ ˆ 2(cid:13)(cid:68) ;(cid:83) ˆ (cid:29) (cid:80) ˆ(cid:8)1(cid:13)(cid:80) ˆ(cid:9)(cid:8)1/n 1(cid:11)1/n 2 (cid:9);(cid:80) ˆ (cid:29) n 1(cid:80)(cid:80) n ˆ 1 1 (cid:11) (cid:11) n n 2 2 (cid:80) ˆ 2
2 z c o te n s ti t n p u o i o ty le c d o v rr a e r c ia ti n o c n e with z(cid:29) (cid:80) ˆ 1(cid:13)(cid:80) ˆ 2(cid:13)(cid:68)(cid:11)k (cid:83) / ˆ 2(cid:8)1/n 1(cid:11)1/n 2 (cid:9) ;(cid:83) ˆ(seeNo.1);k(cid:29) (cid:170) (cid:171) (cid:172) (cid:13)(cid:13) (cid:11) 1 1 l u o p w p e e r r t t a a i i l l
3 z test unpooled variance z(cid:29) (cid:80) ˆ 1(cid:13) (cid:83) (cid:80) ˆ ˆ 2(cid:13)(cid:68) ;(cid:83) ˆ (cid:29) (cid:80) ˆ 1 (cid:8)1(cid:13)(cid:80) ˆ 1 (cid:9)/n 1(cid:11)(cid:80) ˆ 2 (cid:8)1(cid:13)(cid:80) ˆ 2 (cid:9)/n 22
4 z c o te n s ti t n u u n i p ty o o co le r d re v c a ti r o ia n nce with z(cid:29) (cid:80) ˆ 1(cid:13)(cid:80) ˆ 2(cid:13)(cid:68)(cid:11)k (cid:83) / ˆ 2(cid:8)1/n 1(cid:11)1/n 2 (cid:9) ;(cid:83) ˆ(seeNo.3);k(cid:29) (cid:170) (cid:171) (cid:172) (cid:13)(cid:13) (cid:11) 1 1 l u o p w p e e r r t t a a i i l l
5 t
( D
te
’
s
A
t
g
w
o
i
s
th
ti n
d
o
f (cid:21)
et a
N
l .
(cid:18)
, 1 9
2
88)
t N(cid:13)2 (cid:29)(cid:167)(cid:169) (cid:8)x 1(cid:11)(cid:68)n 1 (cid:9)(cid:8)1(cid:13)x 2 (cid:9)(cid:13)x 2 (cid:8)1(cid:13)x 1(cid:13)(cid:68)n 1 (cid:9)(cid:182)(cid:184)K;
K (cid:29) (N(cid:13)22)/(cid:91)N(cid:167)(cid:169)n 2 x 1 (cid:8)1(cid:13)x 1 (cid:9)(cid:11)n 1 x 2 (cid:8)1(cid:13)x 2 (cid:9)(cid:182)(cid:184) (cid:93)
6 L M ik ie e t l t i i h n o e o n d & s c N o u re rm ra i t n i e o n ( d (1 if 9 fe 8 r 5 e ) nce) z(cid:29) (cid:80)ˆ 1 (cid:13) (cid:83) (cid:80)ˆ ˆ 2 (cid:13)(cid:68) ;(cid:83)ˆ (cid:29) (cid:167)(cid:169)(cid:80) ~ 1 (cid:8)1(cid:13)(cid:80) ~ 1 (cid:9)/n 1 (cid:11)(cid:80) ~ 2 (cid:8)1(cid:13)(cid:80) ~ 2 (cid:9)/n 2(cid:184)(cid:184)(cid:182)K
Farrington & Manning (1990) Miettinen & Nurminen: K (cid:21) N/(N (cid:18) 1); Farrington & Manning: K (cid:21) 1
Gart & Nam (1990) (cid:174)~ (cid:21) 2u cos(w) (cid:18) b/(3a); (cid:174)~ (cid:21) (cid:174)~ (cid:18) (cid:89)
1 2 1
(cid:203) (cid:21) n/n; a (cid:21) 1 (cid:17) (cid:203); b (cid:21) (cid:18)[1 (cid:17) (cid:203) (cid:17) (cid:174)ˆ (cid:17) (cid:203) (cid:174)ˆ (cid:17) (cid:89)((cid:203) (cid:17) 2)]
2 1 1 2
c (cid:21) (cid:89)2 (cid:17) (cid:89)(2 (cid:174)ˆ (cid:17) (cid:203) (cid:17) 1) (cid:17) (cid:174)ˆ (cid:17) (cid:203) (cid:174)ˆ ; d (cid:21) (cid:18) (cid:174)ˆ (cid:89)(1 (cid:17) (cid:89))
1 1 2 1
v (cid:21) b3/(3a)3 _(cid:18)_ _b_c_/(_6_a_2_) _(cid:17)_ _d_/_(2a); w (cid:21) [3.14159 (cid:17) cos(cid:18)1(v/u3)]/3
u (cid:21) sgn(v) (cid:183)b(cid:197)2/(3a)2 (cid:18) c/(3a)
Skewness corrected z(cid:140) (Gart & Nam, 1990); z according to Farrington & Manning:
_____________
z(cid:140) (cid:21) [ (cid:183)1(cid:197) (cid:17) 4(cid:173)( (cid:173) (cid:17)(cid:0)z) (cid:18) 1]/2(cid:173); V (cid:21) [ (cid:174)~
1
(1 (cid:18) (cid:174)~
1
)/n
1
(cid:17) (cid:174)~
2
(1 (cid:18) (cid:174)~
2
)/n
2
](cid:18)1
(cid:173) (cid:21) V2/3/6[ (cid:174)~ (1 (cid:18) (cid:174)~ )(1 (cid:18) 2 (cid:174)~ )/n (cid:17) (cid:174)~ (1 (cid:18) (cid:174)~ )(1 (cid:18) 2 (cid:174)~ )/n]
1 1 1 1 2 2 2 2
7 L M ik ie e t l t i i h n o e o n d & s c N o u re rm ra i t n i e o n ( r ( i 1 s 9 k 8 r 5 a ) tio) z(cid:29) (cid:80)ˆ 1 (cid:13) (cid:83)ˆ (cid:80)ˆ 2 (cid:70) ;(cid:83)ˆ (cid:29) (cid:167) (cid:169) (cid:80) ~ 1 (cid:8)1(cid:13)(cid:80) ~ 1 (cid:9)/n 1 (cid:11)(cid:70)2(cid:80) ~ 2 (cid:8)1(cid:13)(cid:80) ~ 2 (cid:9)/n 2 (cid:182)(cid:182) (cid:184) K
Farrington & Manning (1990) Miettinen & Nurminen: K (cid:21) N/(N (cid:18) 1); Farrington & Manning: K (cid:21) 1
Gart & Nam (1988)
(cid:80) ~ (cid:29)(cid:70)(cid:80) ~ ;(cid:80) ~ (cid:29) (cid:164) (cid:165) (cid:13)b(cid:13) b2(cid:13)4N(cid:70)(cid:8)x 1 (cid:11)x 2 (cid:9)(cid:179) (cid:180);b(cid:29)(cid:13)(cid:8)n (cid:11)(cid:11)x (cid:9)(cid:70)(cid:13)x (cid:13)n
1 2 2 (cid:165) 2N(cid:70) (cid:180) 1 2 1 2
(cid:166) (cid:181)
Skewness corrected z(cid:140) (Gart & Nam, 1988); z according to Farrington & Manning:
_____________
z(cid:140) (cid:21) [ (cid:183)1(cid:197) (cid:17) 4(cid:173)( (cid:173) (cid:17)(cid:0)z) (cid:18) 1]/2(cid:173); V (cid:21) (1 (cid:18) (cid:174)~
1
)/( (cid:174)~
1
n
1
) (cid:17) (1 (cid:18) (cid:174)~
2
)/( (cid:174)~
2
n
2
)
(cid:173) (cid:21) 1/(6V2/3)[(1 (cid:18) (cid:174)~ )(1 (cid:18) 2 (cid:174)~ )/(n (cid:174)~ )2 (cid:17) (1 (cid:18) (cid:174)~ )(1 (cid:18) 2 (cid:174)~ )/(n (cid:174)~ )2]
1 1 1 1 2 2 2 2
8 L
M
ik
ie
e
t
l
t
i
i
h
n
o
e
o
n
d
&
s c
N
o
u
re
rm
ra
i
t
n
i
e
o
n
( o
(1
d
9
d
8
s
5
r
)
atio)
z(cid:29)
(cid:8)(cid:80)ˆ
1
(cid:13)(cid:80) ~
1
(cid:9)/(cid:167)(cid:169)(cid:80) ~
1
(cid:8)1(cid:13)(cid:80) ~
1
(cid:9)(cid:182)(cid:184)(cid:13)(cid:8)(cid:80)ˆ
2
(cid:13)(cid:80) ~
2
(cid:9)/(cid:167)(cid:169)(cid:80) ~
2
(cid:8)1(cid:13)(cid:80) ~
2
(cid:9)(cid:182)(cid:182)(cid:184)
1/(cid:167)(cid:169)n
1
(cid:80) ~
1
(cid:8)1(cid:13)(cid:80) ~
1
(cid:9)(cid:182)(cid:184)(cid:11)1/(cid:167)(cid:169)n
2
(cid:80) ~
2
(cid:8)1(cid:13)(cid:80) ~
2
(cid:9)(cid:182)(cid:184)K
Miettinen & Nurminen: K (cid:21) N/(N (cid:18) 1); Farrington & Manning: K (cid:21) 1
______________
(cid:174)~
1
(cid:21) (cid:174)~
2
(cid:153)/[1 (cid:17) (cid:174)~
2
((cid:153) (cid:18) 1)]; (cid:174)~
2
(cid:21) [(cid:18)b (cid:17) (cid:183)b(cid:197)2 (cid:17) 4a( x
1
(cid:17) x
2
) ] /(2a)
a (cid:21) n((cid:153) (cid:18) 1); b (cid:21) n(cid:153) (cid:17) n (cid:18) (x (cid:17) x)((cid:153) (cid:18) 1)
2 1 2 1 2
Note—x, success frequency in group i; n, sample size in group i; N (cid:21) n (cid:17) n, total sample size; (cid:174)ˆ (cid:21) x/n; (cid:89), difference between
i i 1 2 i i i
proportions postulated in H; (cid:172), risk ratio postulated in H; (cid:153), odds ratio postulated in H.
0 0 0
the power on the basis of an ordinary one-sample binomial the null hypothesis that the population variance (cid:192)2 has a
test with Bin(N(cid:174) , 0.5) as the distribution under H and specified value c is tested. The variance ratio (cid:192)2/c is used
D 0
Bin[N(cid:174) , OR/(1 (cid:17) OR)] as the H distribution. as the effect size. The central and noncentral distributions,
D 1
corresponding to H and H , respectively, are central (cid:79)2
0 1
Tests for Variances distributions with N (cid:18) 1 dfs (because H and H are based
0 1
Table 9 summarizes important properties of the two on the same mean). To compare the variance distributions
procedures for testing hypotheses on variances that are under both hypotheses, the H distribution is scaled with
1
currently supported by G*Power 3. In the one-group case, the value r postulated for the ratio (cid:192)2/c in the alternate
Standard
Treatment Yes No
Proportion of discordant pairs: (cid:174) (cid:21) (cid:174) (cid:17) (cid:174)
Yes (cid:174) (cid:174) (cid:174) D 12 21
11 12 t
Hypothesis: (cid:174) (cid:21) (cid:174) or, equivalently, (cid:174) (cid:21) (cid:174)
No (cid:174) (cid:174) 1 (cid:18) (cid:174) s t 12 21
21 22 t
(cid:174) 1 (cid:18) (cid:174) 1
s s
Figure 5. Matched binary response design (McNemar test).

G*POWER 3 189
Table 9
Tests for Variances
Test Null Other
Test Family Hypothesis Effect Size Parameters Noncentrality Parameter
Difference from (cid:79)2 tests (cid:83)2 Variance ratio (cid:129) (cid:21) 0
constant (one c (cid:29)1 r(cid:29) (cid:83)2 (H 1 : central (cid:79)2 distribution,
sample case) c scaled with r)
df (cid:21) N (cid:18) 1
Inequality of two F tests (cid:83)2 Variance ratio (cid:129) (cid:21) 0
variances (cid:83) 1 2 2 (cid:29)1 r(cid:29) (cid:83) (cid:83) 1 2 2 2 s d (H c f 1 a 1 l (cid:21) : e c d e n w n 1 t i (cid:18) r t a h l 1 r F ) distribution,
df (cid:21) n (cid:18) 1
2 2
hypothesis—that is, the noncentral distribution is r(cid:79)2 DCDFLIB (available from www.netlib.org/random/),
N(cid:18)1
(Ostle & Malone, 1988). In the two-groups case, H states which was slightly modified for our purposes. G*Power 3
0
that the variances in two populations are identical ((cid:192) / does not provide the approximate power analyses that
2
(cid:192) (cid:21) 1). As in the one-sample case, two central F distri- were available in the speed mode of G*Power 2. Two ar-
1
butions are compared, the H distribution being scaled by guments guided us in supporting exact power calculations
1
the value of the variance ratio (cid:192) /(cid:192) postulated in H . only. First, four-digit precision of power calculations may
2 1 1
be mandatory in many applications. For example, both
Generic Tests compromise power analyses for very large samples, and
Besides the specific routines described in Tables 2–9 error probability adjustments in case of multiple tests of
that cover a considerable part of the tests commonly used, significance may result in very small values of (cid:40) or (cid:59)
G*Power 3 provides “generic” power analysis routines (Westermann & Hager, 1986). Second, as a consequence
that may be used for any test based on the t, F, (cid:79)2, z, or of improved computer technology, exact calculations have
binomial distribution. In generic routines, the parameters become so fast that the speed gain associated with ap-
of the central and noncentral distributions are specified proximate power calculations is not even noticeable. Thus,
directly. from a computational standpoint, there is little advantage
To demonstrate the uses and limitations of these generic to using approximate rather than exact methods (cf. Brad-
routines, we will show how to do a two-tailed power analy- ley, Russell, & Reeve, 1998).
sis for the one-sample t test using the generic routine. The
results can be compared with those of the specific rou- PROGRAM AVAILABILITY
tine available in G*Power for that test. First, we select the AND INTERNET SUPPORT
“t tests” family and then “Generic t test” (the generic test
option is always located at the end of the list of tests). Next, To summarize, G*Power 3 is a major extension of, and
we select “Post hoc” as the type of power analysis. We improvement over, G*Power 2 in that it offers easy-to-
choose a two-tailed test and .05 as (cid:40) error probability. We apply power analyses for a much larger variety of common
now need to specify the noncentrality parameter (cid:89) and the statistical tests. Program handling is more flexible, easier
degrees of freedom for our test. We look up the definitions to understand, and more intuitive than in G*Power 2,
__
for the one-sample test in Table 3 and find that (cid:89) (cid:21) d(cid:183) N(cid:197) reducing the risk of erroneous applications. The added
and df (cid:21) N (cid:18) 1. Assuming a medium effect of d (cid:21) 0.5 graphical features should be useful for both research and
and N (cid:21) 25, we arrive at (cid:89) (cid:21) 0.5·5 (cid:21) 2.5 and df (cid:21) 24. teaching purposes. Thus, G*Power 3 is likely to become
After inserting these values and clicking on “Calculate,” a useful tool for empirical researchers and students of ap-
we obtain a power of 1 (cid:18) (cid:59) (cid:21) .6697. The critical value plied statistics.
t (cid:21) 2.0639 corresponds to the specified (cid:40). In this post hoc Like its predecessor, G*Power 3 is a noncommercial
power analysis, the generic routine is almost as simple as program that can be downloaded free of charge. Copies of
the specific routine. The main disadvantage of the generic the Mac and Windows versions are available only at www
routines is, however, that the dependence of the noncen- .psycho.uni-duesseldorf.de/abteilungen/aap/gpower3.
trality parameter on the sample size is implicit. As a con- Users interested in distributing the program in another
sequence, we cannot perform a priori analyses automati- way must ask for permission from the authors. Commer-
cally. Rather, we need to iterate N by hand until we find an cial distribution is strictly forbidden.
appropriate power value. The G*Power 3 Web page offers an expanding Web-
based tutorial describing how to use the program, along
STATISTICAL METHODS AND with examples. Users who let us know their e-mail ad-
NUMERICAL ALGORITHMS dresses will be informed of updates. Although considerable
effort has been put into program development and evalu-
The subroutines used to compute the distribution func- ation, there is no warranty whatsoever. Users are asked to
tions (and the inverse) of the noncentral t, F, (cid:79)2, z, and kindly report possible bugs and difficulties in program
binomial distributions are based on the C version of the handling to gpower-feedback@uni-duesseldorf.de.

190 FAUL, ERDFELDER, LANG, AND BUCHNER
AUTHOR NOTE Farrington, C. P., & Manning, G. (1990). Test statistics and sample
size formulae for comparative binomial trials with null hypothesis of
Manuscript preparation was supported by Grant SFB 504 (Project non-zero risk difference or non-unity relative risk. Statistics in Medi-
A12) from the Deutsche Forschungsgemeinschaft and a grant from the cine, 9, 1447-1454.
state of Baden-Württemberg, Germany (Landesforschungsprogramm Field, A. P. (2005). Discovering statistics with SPSS (2nd ed.). London:
“Evidenzbasierte Stressprävention”). Correspondence concerning this Sage.
article should be addressed to F. Faul, Institut für Psychologie, Christian- Fleiss, J. L. (1981). Statistical methods for rates and proportions (2nd
Albrechts-Universität, Olshausenstr. 40, D-24098 Kiel, Germany, or ed.). New York: Wiley.
to E. Erdfelder, Lehrstuhl für Psychologie III, Universität Mannheim, Frings, C., & Wentura, D. (2005). Negative priming with masked
Schloss Ehrenhof Ost 255, D-68131 Mannheim, Germany (e-mail: ffaul@ distractor-only prime trials: Awareness moderates negative priming.
psychologie.uni-kiel.de or erdfelder@psychologie.uni-mannheim.de). Experimental Psychology, 52, 131-139.
Gart, J. J., & Nam, J. (1988). Approximate interval estimation of the
REFERENCES ratio in binomial parameters: A review and correction for skewness.
Biometrics, 44, 323-338.
Akkad, D. A., Jagiello, P., Szyld, P., Goedde, R., Wieczorek, S., Gart, J. J., & Nam, J. (1990). Approximate interval estimation of the
Gross, W. L., & Epplen, J. T. (2006). Promoter polymorphism difference in binomial parameters: Correction for skewness and ex-
rs3087456 in the MHC class II transactivator gene is not associated tension to multiple tables. Biometrics, 46, 637-643.
with susceptibility for selected autoimmune diseases in German pa- Geisser, S., & Greenhouse, S. W. (1958). An extension of Box’s re-
tient groups. International Journal of Immunogenetics, 33, 59-61. sults on the use of the F distribution in multivariate analysis. Annals
Back, M. D., Schmukle, S. C., & Egloff, B. (2005). Measuring task- of Mathematical Statistics, 29, 885-891.
switching ability in the Implicit Association Test. Experimental Psy- Gerard, P. D., Smith, D. R., & Weerakkody, G. (1998). Limits of
chology, 52, 167-179. retrospective power analysis. Journal of Wildlife Management, 62,
Baeza, J. A., & Stotz, W. (2003). Host-use and selection of differ- 801-807.
ently colored sea anemones by the symbiotic crab Allopetrolisthes Gigerenzer, G., Krauss, S., & Vitouch, O. (2004). The null ritual:
spinifrons. Journal of Experimental Marine Biology & Ecology, 284, What you always wanted to know about significance testing but were
25-39. afraid to ask. In D. Kaplan (Ed.), The SAGE handbook of quantitative
Barabesi, L., & Greco, L. (2002). A note on the exact computation methodology for the social sciences (pp. 391-408). Thousand Oaks,
of the Student t, Snedecor F, and sample correlation coefficient dis- CA: Sage.
tribution functions. Journal of the Royal Statistical Society, 51D, Gleissner, U., Clusmann, H., Sassen, R., Elger, C. E., & Helm-
105-110. staedter, C. (2006). Postsurgical outcome in pediatric patients with
Berti, S., Münzer, S., Schröger, E., & Pechmann, T. (2006). Differ- epilepsy: A comparison of patients with intellectual disabilities, sub-
ent interference effects in musicians and a control group. Experimen- average intelligence, and average-range intelligence. Epilepsia, 47,
tal Psychology, 53, 111-116. 406-414.
Bradley, D. R., Russell, R. L., & Reeve, C. P. (1998). The accuracy Goldstein, R. (1989). Power and sample size via MS/PC-DOS comput-
of four approximations to noncentral F. Behavior Research Methods, ers. American Statistician, 43, 253-262.
Instruments, & Computers, 30, 478-500. Hager, W. (2006). Die Fallibilität empirischer Daten und die Notwen-
Bredenkamp, J. (1969). Über die Anwendung von Signifikanztests bei digkeit der Kontrolle von falschen Entscheidungen [The fallibility
Theorie-testenden Experimenten [The application of significance tests of empirical data and the need for controlling for false decisions].
in theory-testing experiments]. Psychologische Beiträge, 11, 275-285. Zeitschrift für Psychologie, 214, 10-23.
Bredenkamp, J., & Erdfelder, E. (1985). Multivariate Varianzanalyse Haseman, J. K. (1978). Exact sample sizes for use with the Fisher–Irwin
nach dem V-Kriterium [Multivariate analysis of variance based on the test for 2 (cid:19) 2 tables. Biometrics, 34, 106-109.
V-criterion]. Psychologische Beiträge, 27, 127-154. Hoenig, J. N., & Heisey, D. M. (2001). The abuse of power: The perva-
Buchner, A., Erdfelder, E., & Faul, F. (1996). Teststärkeanalysen sive fallacy of power calculations for data analysis. American Statisti-
[Power analyses]. In E. Erdfelder, R. Mausfeld, T. Meiser, & cian, 55, 19-24.
G. Rudinger (Eds.), Handbuch Quantitative Methoden [Handbook of Hoffmann, J., & Sebald, A. (2005). Local contextual cuing in visual
quantitative methods] (pp. 123-136). Weinheim, Germany: Psycholo- search. Experimental Psychology, 52, 31-38.
gie Verlags Union. Huynh, H., & Feldt, L. S. (1970). Conditions under which mean square
Buchner, A., Erdfelder, E., & Faul, F. (1997). How to use G*Power ratios in repeated measurements designs have exact F-distribution.
[Computer manual]. Available at www.psycho.uni-duesseldorf.de/ Journal of the American Statistical Association, 65, 1582-1589.
aap/projects/gpower/how_to_use_gpower.html. Keppel, G., & Wickens, T. D. (2004). Design and analysis. A research-
Busbey, A. B. I. (1999). Macintosh shareware/freeware earthscience er’s handbook (4th ed.). Upper Saddle River, NJ: Pearson Education
software. Computers & Geosciences, 25, 335-340. International.
Cohen, J. (1988). Statistical power analysis for the behavioral sciences Kornbrot, D. E. (1997). Review of statistical shareware G*Power. Brit-
(2nd ed.). Hillsdale, NJ: Erlbaum. ish Journal of Mathematical & Statistical Psychology, 50, 369-370.
D’Agostino, R. B., Chase, W., & Belanger, A. (1988). The appropri- Kromrey, J., & Hogarty, K. Y. (2000). Problems with probabilistic
ateness of some common procedures for testing the equality of two in- hindsight: A comparison of methods for retrospective statistical power
dependent binomial populations. American Statistician, 42, 198-202. analysis. Multiple Linear Regression Viewpoints, 26, 7-14.
Erdfelder, E. (1984). Zur Bedeutung und Kontrolle des (cid:59)-Fehlers bei Lenth, R. V. (2001). Some practical guidelines for effective sample size
der inferenzstatistischen Prüfung log-linearer Modelle [Significance determination. American Statistician, 55, 187-193.
and control of the (cid:59) error in statistical tests of log-linear models]. Levin, J. R. (1997). Overcoming feelings of powerlessness in “aging”
Zeitschrift für Sozialpsychologie, 15, 18-32. researches: A primer on statistical power in analysis of variance de-
Erdfelder, E., Buchner, A., Faul, F., & Brandt, M. (2004). GPOWER: signs. Psychology & Aging, 12, 84-106.
Teststärkeanalysen leicht gemacht [Power analyses made easy]. In McKeon, J. J. (1974). F approximations to the distribution of Hotel-
E. Erdfelder & J. Funke (Eds.), Allgemeine Psychologie und deduktivis- ling’s T2. Biometrika, 61, 381-383.
0
tische Methodologie [Experimental psychology and deductive method- Mellina, E., Hinch, S. G., Donaldson, E. M., & Pearson, G. (2005).
ology] (pp. 148-166). Göttingen: Vandenhoeck & Ruprecht. Stream habitat and rainbow trout (Oncorhynchus mykiss) physiologi-
Erdfelder, E., Faul, F., & Buchner, A. (1996). GPOWER: A general cal stress responses to streamside clear-cut logging in British Colum-
power analysis program. Behavior Research Methods, Instruments, & bia. Canadian Journal of Forest Research, 35, 541-556.
Computers, 28, 1-11. Miettinen, O., & Nurminen, M. (1985). Comparative analysis of two
Erdfelder, E., Faul, F., & Buchner, A. (2005). Power analysis for rates. Statistics in Medicine, 4, 213-226.
categorical methods. In B. S. Everitt & D. C. Howell (Eds.), Encyclo- Müller, J., Manz, R., & Hoyer, J. (2002). Was tun, wenn die Test-
pedia of statistics in behavioral science (pp. 1565-1570). Chichester, stärke zu gering ist? Eine praktikable Strategie für Prä–Post-Designs
U.K.: Wiley. [What to do if statistical power is low? A practical strategy for pre–

G*POWER 3 191
post-designs]. Psychotherapie, Psychosomatik, Medizinische Psy- Shieh, G. (2003). A comparative study of power and sample size cal-
chologie, 52, 408-416. culations for multivariate general linear models. Multivariate Behav-
Muller, K. E., & Barton, C. N. (1989). Approximate power for repeated- ioral Research, 38, 285-307.
measures ANOVA lacking sphericity. Journal of the American Statistical Smith, R. E., & Bayen, U. J. (2005). The effects of working memory
Association, 84, 549-555. resource availability on prospective memory: A formal modeling ap-
Muller, K. E., LaVange, L. M., Landesman-Ramey, S., & Ramey, proach. Experimental Psychology, 52, 243-256.
C. T. (1992). Power calculations for general linear multivariate models Steidl, R. J., Hayes, J. P., & Schauber, E. (1997). Statistical power
including repeated measures applications. Journal of the American analysis in wildlife research. Journal of Wildlife Management, 61,
Statistical Association, 87, 1209-1226. 270-279.
Muller, K. E., & Peterson, B. L. (1984). Practical methods for com- Suissa, S., & Shuster, J. J. (1985). Exact unconditional sample sizes
puting power in testing the multivariate general linear hypothesis. for 2 (cid:19) 2 binomial trial. Journal of the Royal Statistical Society A,
Computational Statistics & Data Analysis, 2, 143-158. 148, 317-327.
Myers, J. L., & Well, A. D. (2003). Research design and statistical Thomas, L., & Krebs, C. J. (1997). A review of statistical power analysis
analysis (2nd ed.). Mahwah, NJ: Erlbaum. software. Bulletin of the Ecological Society of America, 78, 126-139.
O’Brien, R. G., & Kaiser, M. K. (1985). MANOVA method for analyz- Upton, G. J. G. (1982). A comparison of alternative tests for the 2 (cid:19) 2
ing repeated measures designs: An extensive primer. Psychological comparative trial. Journal of the Royal Statistical Society A, 145,
Bulletin, 97, 316-333. 86-105.
O’Brien, R. G., & Muller, K. E. (1993). Unified power analysis for Westermann, R., & Hager, W. (1986). Error probabilities in educa-
t-tests through multivariate hypotheses. In L. K. Edwards (Ed.), Ap- tional and psychological research. Journal of Educational Statistics,
plied analysis of variance in behavioral science (pp. 297-344). New 11, 117-146.
York: Dekker. Zumbo, B. D., & Hubley, A. M. (1998). A note on misconceptions
O’Brien, R. G., & Shieh, G. (1999). Pragmatic, unifying algorithm concerning prospective and retrospective power. The Statistician, 47,
gives power probabilities for common F tests of the multivariate gen- 385-388.
eral linear hypothesis. Available at www.bio.ri.ccf.org/UnifyPow.
Ortseifen, C., Bruckner, T., Burke, M., & Kieser, M. (1997). An NOTES
overview of software tools for sample size determination. Informatik,
Biometrie & Epidemiologie in Medizin & Biologie, 28, 91-118. 1. The observed power is reported in many frequently used computer
Ostle, B., & Malone, L. C. (1988). Statistics in research: Basic con- programs (e.g., the MANOVA procedure of SPSS).
cepts and techniques for research workers (4th ed.). Ames: Iowa State 2. We recommend checking the degrees of freedom reported by
Press. G*Power by comparing them, for example, with those reported by the
Pillai, K. C. S., & Mijares, T. A. (1959). On the moments of the trace program used to analyze the sample data. If the degrees of freedom do
of a matrix and approximations to its distribution. Annals of Math- not match, the input provided to G*Power is incorrect and the power
ematical Statistics, 30, 1135-1140. calculations do not apply.
Pillai, K. C. S., & Samson, P., Jr. (1959). On Hotelling’s generaliza- 3. Plots of the central and noncentral distributions are shown only
tion of T2. Biometrika, 46, 160-168. for tests based on the t, F, z, (cid:79)2, or binomial distribution. No plots are
Quednow, B. B., Kühn, K.-U., Stelzenmueller, R., Hoenig, K., shown for tests that involve an enumeration procedure (e.g., the McNe-
Maier, W., & Wagner, M. (2004). Effects of serotonergic and norad- mar test).
renergic antidepressants on auditory startle response in patients with 4. We thank Dave Kenny for making us aware of the fact that the
major depression. Psychopharmacology, 175, 399-406. t test (correlation) power analyses of G*Power 2 are correct only in the
Rao, C. R. (1951). An asymptotic expansion of the distribution of point–biserial case (i.e., for correlations between a binary variable and
Wilks’s criterion. Bulletin of the International Statistical Institute, a continuous variable, the latter being normally distributed for each
33, 177-180. value of the binary variable). For correlations between two continu-
Rasch, B., Friese, M., Hofmann, W. J., & Naumann, E. (2006a). ous variables following a bivariate normal distribution, the t test (cor-
Quantitative Methoden 1: Einführung in die Statistik (2. Auflage) relation) procedure of G*Power 2 overestimates power. For this reason,
[Quantitative methods 1: Introduction to statistics (2nd ed.)]. Heidel- G*Power 3 offers separate power analyses for point–biserial correlations
berg, Germany: Springer. (in the t family of distributions) and correlations between two normally
Rasch, B., Friese, M., Hofmann, W. J., & Naumann, E. (2006b). distributed variables (in the exact distribution family). However, power
Quantitative Methoden 2: Einführung in die Statistik (2. Auflage) values usually differ only slightly between procedures. To illustrate, as-
[Quantitative methods 2: Introduction to statistics (2nd ed.)]. Heidel- sume we are interested in the power of a two-tailed test of H 0 : (cid:188) (cid:21) .00 for
berg, Germany: Springer. continuously distributed measures derived from two Implicit Association
Rencher, A. C. (1998). Multivariate statistical inference and applica- Tests (IATs) differing in content. Assume further that, due to method-
tions. New York: Wiley. specific variance in both versions of the IAT, the true Pearson correlation
Richardson, J. T. E. (1996). Measures of effect size. Behavior Research is actually (cid:188) (cid:21) .30 (effect size). Given (cid:40) (cid:21) .05 and N (cid:21) 57 (see Back,
Methods, Instruments, & Computers, 28, 12-22. Schmukle, & Egloff, 2005, p. 173), an exact post hoc power analysis for
Scheffé, H. (1959). The analysis of variance. New York: Wiley. “Correlations: Differences from constant (one sample case)” reveals the
Schwarz, W., & Müller, D. (2006). Spatial associations in number- correct power value of 1 (cid:18) (cid:59) (cid:21) .63. Choosing the incorrect “Correla-
related tasks: A comparison of manual and pedal responses. Experi- tion: point biserial model” procedure from the t test family would result
mental Psychology, 53, 4-15. in 1 (cid:18) (cid:59) (cid:21) .65.
Sheppard, C. (1999). How large should my sample be? Some quick
guides to sample size and the power of tests. Marine Pollution Bul- (Manuscript received December 8, 2006;
letin, 38, 439-447. accepted for publication January 23, 2007.)