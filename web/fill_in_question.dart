part of bio_study;

class FillInQuestion implements Question {
  final String prompt;
  final List<String> blanks;
  
  FillInQuestion(List<String> info)
      : prompt = info[0],
        blanks = info.sublist(1);
  
  Element toElement(int index) {
    var paragraph = new ParagraphElement();
    paragraph.innerHtml = '$index. $prompt ';
    for (String blankHtml in blanks) {
      var answer = new LabelElement();
      var hidden = new LabelElement();
      var showLink = new AnchorElement();
      var hideLink = new AnchorElement();
      hideLink.text = '[Hide]';
      showLink.text = '[Show]';
      hideLink.className = 'hide-answer-link';
      showLink.className = 'show-answer-link';
      hidden.className = 'fill-in-hidden';
      answer.className = 'fill-in-answer answer';
      answer.innerHtml = blankHtml;
      hidden.text = '_________';
      
      showLink.onClick.listen((_) {
        hidden.replaceWith(answer);
      });
      hideLink.onClick.listen((_) {
        answer.replaceWith(hidden);
      });
      
      answer.append(hideLink);
      hidden.append(showLink);
      paragraph.append(hidden);
    }
    return paragraph;
  }
}
