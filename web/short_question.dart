part of bio_study;

class ShortQuestion implements Question {
  final String question;
  final String answer;
  
  ShortQuestion(this.question, this.answer);
  
  Element toElement(int number) {
    var result = new DivElement();
    var paragraph = new ParagraphElement();
    var showHideLink = new AnchorElement();
    var answerField = new ParagraphElement();
    var emptyAnswer = new BRElement();
    var showingAnswer = false;
    paragraph.className = 'short-question question';
    answerField.className = 'short-answer answer';
    showHideLink.className = 'show-answer-link';
    paragraph.innerHtml = '$number. $question ';
    answerField.innerHtml = answer;
    showHideLink.text = '[Show answer]';
    showHideLink.onClick.listen((_) {
      if (showingAnswer) {
        showHideLink.className = 'show-answer-link';
        showHideLink.text = '[Show answer]';
        answerField.replaceWith(emptyAnswer);
      } else {
        showHideLink.className = 'hide-answer-link';
        showHideLink.text = '[Hide answer]';
        emptyAnswer.replaceWith(answerField);
      }
      showingAnswer = !showingAnswer;
    });
    paragraph.append(showHideLink);
    result.append(paragraph);
    result.append(emptyAnswer);
    return result;
  }
}