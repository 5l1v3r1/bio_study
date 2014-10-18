library bio_study;

import 'dart:html';

part 'question.dart';
part 'short_question.dart';
part 'aa_questions.dart';
part 'fill_in_question.dart';

var singleLineQuestions = [
  ['What are the individual components of proteins called?', 'Amino Acids'],
  ['What are the individual components of carbohydrates called?',
   'Monosaccharides'],
  ['What are the individual components of nucleic acids called?',
   'Nucleotides'],
  ['Name the functional group R&mdash;OH', 'Hydroxyl'],
  ['Name the functional group R&mdash;CO&mdash;R', 'Keto'],
  ['Name the functional group R&mdash;CHO', 'Aldehyde'],
  ['Name the functional group R&mdash;COOH', 'Carboxyl'],
  ['Name the functional group R&mdash;NH<sub>2</sub>', 'Amino'],
  ['Name the functional group R&mdash;OPO<sub>3</sub><sup>2-</sup>',
   'Phosphate'],
  ['Name the functional group R&mdash;SH', 'Sulfhydryl'],
  ['What are important properties of hydroxyl?',
   'Polar. Hydrogen bonds with water.'],
  ['What are important properties of aldehyde?',
   'C=O group is very reactive. Important in building molecules'],
  ['What are important properties of Keto?',
   'C=O group is important in carbohydrates and in energy reactions.'],
  ['What are important properties of Carboxyl?',
   'It is acidic. Ionizes to form COO<sup>-</sup> and H<sup>+</sup>'],
  ['What are important properties of Amino?',
   'It is basic. Accepts H<sup>+</sup> to form NH<sub>3</sub><sup>+</sup>'],
  ['What are important properties of Phosphate?',
   'Negatively charged. When bonded to another phosphate, hydrolysis releasing'
   ' much energy (ATP).'],
  ['What are important properties of Sulfhydryl?',
   'By giving up H, two —SH groups can react to form a disulfide bridge, thus'
   ' stabilizing protein structure.'],
  ['What is a condensation reaction?',
   'The formation of bonds and release of H<sub>2</sub>O in the process.'],
  ['What is a hydrolysis reaction?',
   'The breaking of bonds and the addition of H<sub>2</sub>O in the process.'],
  ['What is the name of the bonds that hold amino acids together?',
   'Peptide bonds.'],
  ['What are the four components of an amino acid?',
   'An alpha carbon, an R-group, an amino group, and a carboxyl group.'],
  ['What type of bonds stabilize secondary structure?', 'Hydrogen bonds.'],
  ['What type of bonds stabilize tertiary structure?',
   'Hydrogen bonds, disulfide bridges, covalent bonding, ionic bonding,'
   ' van der Waal\'s forces'],
  ['What are the two types of secondary structure?',
   'Alpha helixes and beta sheets'],
  ['What is denaturation?', 'When the secondary and tertiary structure break'
   ' down because of heat or change in pH.'],
  ['What are the individual components of quaternary structure called?',
   'Subunits'],
  ['How does hemoglobin utilize quaternary structure to bind oxygen?'
   ' What is this called?', 'The subunits shift so that bound oxygens don\'t'
   ' face outward. This is called <b>cooperative binding</b>.'],
  ['Alzheimer\'s disease occurs when proteins misfold and become sticky. What'
   ' are these sticky proteins called?', 'Plaques'],
  ['What is the official name for "Mad Cow Disease"?',
   'Bovine spongioform encephalopathy'],
  ['What are the two components of triglycerides?',
   'Three fatty acids and glycerol.'],
  ['What is the difference between a saturated and unsaturated carbon?',
   'Saturated carbon does not double bond because its valence shell is'
   ' saturated with bonds to hydrogen.'],
  ['What is the name of the linkage that holds triglycerides together?',
   'Ester linkage'],
  ['What functional group is at the end of fatty acids?',
   'Carboxyl'],
  ['What functional group from glycerol is used for ester linkage',
   'Hydroxyl (making glycerol an alchohol)'],
  ['What is the difference between phospholipids and triglycerides?',
   'One fatty acid is replaced with a phosphate group.'],
  ['What forms the bilayer of a cell?',
   'Phospholipids, with their hydrophilic phosphate heads facing outwards.'],
  ['How are fats solubilized so they can be carried in blood?',
   'Lipoproteins (which have a hydrophilic shell) encapsulate fats'],
  ['What does LDL stand for?', 'low-density lipoprotein'],
  ['What does HDL stand for?', 'high-density lipoprotein'],
  ['Why is LDL "bad" and HDL "good"?', 'LDL can get stuck in arterial walls,'
   ' while HDL can clean up fat left by LDL.'],
  ['What do you call a carbohydrate with two monosaccharides?',
   'A disaccharide'],
  ['What do you call a carbohydrate with 3 to 20 monosaccharides?',
   'An oligosaccharide'],
  ['What do you call a carbohydrate with many monosaccharides?',
   'A polysaccharide'],
  ['How can you tell if a glucose is alpha or beta?',
   'Alpha glucose has the OH on carbon-1 on the opposite side as the'
   ' CH<sub>2</sub>OH.'],
  ['In the context of carbohydrates, what is alpha linkage? Beta linkage?',
   'Alpha linkage is when the left glucose is an alpha glucose. Same with beta'
   ' linkage and beta glucose.'],
  ['What is the primary energy storage compound of plants?', 'Starch'],
  ['What is the primary energy storage compound of humans?', 'Glycogen'],
  ['What is the process of breaking down glycogen called?', 'Glycolysis'],
  ['Why is glycogen necessary?', 'If glucose was stored alone, it would'
   ' disrupt the osmotic pressure of the cell.'],
  ['What is the name for the linkages between glucose molecules?',
   'Glycosidic linkage'],
  ['How did Rosalind Franklin provide insights into the structure of DNA?',
   'He used X-ray crystallography to get a representation of the structure of'
   ' DNA.'],
  ['What are the three components of nucleic acids?',
   'A pentose sugar, a phosphate group, and a nitrogenous base'],
  ['What is the name for nitrogenous bases which are 6-carbon single rings?',
   'Pyrimidines'],
  ['What is the name for nitrogenous bases which are fused double rings?',
   'Purines'],
  ['What nitrogenous base is found in RNA but not DNA? What base from DNA does'
   ' it replace?', 'Uracil replaces Thymine'],
  ['What is the difference between Uracil and Thymine?',
   'Thymine has a CH<sub>3</sub> where Uracil has a CH.'],
  ['How many bonds go between A and T in DNA?', 'Two hydrogen bonds'],
  ['How many bonds go between C and G in DNA?', 'Three hydrogen bonds']
];

String aminoAcids = """A|Ala|Alanine
R|Arg|Arginine|+
N|Asn|Asparagine|Polar
D|Asp|Aspartic acid|-
C|Cys|Cysteine|Can form disulfide bridges
Q|Gln|Glutamine|Polar
E|Glu|Glutamic acid|-
G|Gly|Glycine|Small
H|His|Histidine|+
I|Ile|Isoleucine
L|Leu|Leucine
K|Lys|Lysine|+
M|Met|Methionine
F|Phe|Phenylalanine
P|Pro|Proline|Ring structure makes it hard to rotate
S|Ser|Serine|Polar
T|Thr|Threonine|Polar
W|Trp|Tryptophan
Y|Tyr|Tyrosine|Polar
V|Val|Valine""";

var fillInBlankQuestions = [
  ['The four main kinds of biological molecules are:',
   'Lipids', 'Carbohydrates', 'Proteins', 'Nucleic Acids'],
  ['Three monosaccharides are:', 'Glucose', 'Ribose', 'Fructose'],
  ['Two polysaccharides are:', 'Starch', 'Cellulose'],
  ['The two purines in DNA are:', 'Adenine', 'Guanine'],
  ['The two pyrimidines in DNA are:', 'Cytosine', 'Thymine'],
  ['The two pyrimidines in RNA are:', 'Cytosine', 'Uracil']
];

List<Question> questions = [];

void main() {
  for (var item in singleLineQuestions) {
    questions.add(new ShortQuestion(item[0], item[1]));
  }
  for (var item in fillInBlankQuestions) {
    questions.add(new FillInQuestion(item));
  }
  for (var line in aminoAcids.split('\n')) {
    var comps = line.split('|');
    questions.add(new AANameQuestion(comps));
    questions.add(new AAPropertyQuestion(comps));
  }
  querySelector('#randomize').onClick.listen((_) {
    randomize();
  });
  querySelector('#show-all').onClick.listen((_) {
    for (var element in querySelectorAll('.show-answer-link')) {
      element.click();
    }
  });
  querySelector('#hide-all').onClick.listen((_) {
    for (var element in querySelectorAll('.hide-answer-link')) {
      element.click();
    }
  });
  querySelector('#hide-links').onClick.listen((_) {
    for (var e in querySelectorAll('a')) {
      e.style.visibility = 'hidden';
    }
  });
  querySelector('#show-links').onClick.listen((_) {
    for (var e in querySelectorAll('a')) {
      e.style.visibility = 'visible';
    }
  });
}

void randomize() {
  var element = querySelector('#test');
  element.innerHtml = '';
  
  questions.shuffle();
  for (var i = 0; i < questions.length; ++i) {
    element.append(questions[i].toElement(i + 1));
  }
}
