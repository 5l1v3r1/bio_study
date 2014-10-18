part of bio_study;


class AANameQuestion extends ShortQuestion {
  AANameQuestion(List<String> components)
      : super('What is the name and three letter code for the amino acid'
              ' represented by the letter ${components[0]}?',
              '${components[0]} represents ${components[2]}; three letter code'
              ' ${components[1]}');
}

class AAPropertyQuestion extends ShortQuestion {
  static String propertyQuestion(List<String> components) {
    if (components.length == 3 ||
        ['+', '-', 'Polar'].contains(components[3])) {
      return 'What kind of charge does ${components[2]} have?';
    } else {
      return 'What special property does ${components[2]} have?';
    }
  }
  
  static String propertyAnswer(List<String> components) {
    var name = components[2];
    if (components.length == 3) {
      return '$name has a hydrophobic (non-polar) side-chain.';
    } else if (components[3] == '+') {
      return '$name is positively charged';
    } else if (components[3] == '-') {
      return '$name is negatively charged';
    } else if (components[3] == 'Polar') {
      return '$name is polar';
    } else {
      return components[3];
    }
  }
  
  AAPropertyQuestion(List<String> comps)
      : super(propertyQuestion(comps), propertyAnswer(comps));
}
