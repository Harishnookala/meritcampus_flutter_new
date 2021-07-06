import 'api.dart';
import 'inlink.dart';

class HtmlFormatter {
  static final String INPROGRAM = "inprogram";

  static var context;


  static String format(String input) {
    List selected;
    input = replaceWithHtmlTags(input, "syw", "<i>", "</i>");
    input = replaceWithHtmlTags(input, "cw", "<strong>", "</strong>");
    input = replaceWithHtmlTags(input, "row", "<tr>", "</tr>");
    input = replaceWithHtmlTags(input, "header", "<th>", "</th>");
    input = replaceWithHtmlTags(input, "asis", "<b>", "</b>");
    input = replaceWithHtmlTags(input, "h3", "<b><br>", "</b><br/>");
    input = replaceWithHtmlTags(input, "it", "<b>", "</b>");

    input = input.replaceAll("</code>", "");

    input =input.replaceAll("code","");

    input =input.replaceAll("< class=\"\">" ,"");


    input = replaceWithHtmlTags(input, "col", "<td>", "</td>");
    input = replaceWithHtmlTags(
        input,
        "ouw",
        "<font color='#000000' face='monospace'><span style=\"background-color:#99CC00;\">",
        "</span></font>");
    input = replaceWithHtmlTagsPreserveSpacesAndLines(
        input, "syntax", "<p><i>", "</i></p>");

   input = replaceInlinkTag(input, "inlink");
    var titile1 = replaceWithHtmlTags(input,"inlink","<a>","</a>");

    input = replaceWithHtmlTags(input, "bullet", "<dl><dd><dt>","</dt></dd></dl>");
    input = input.replaceAll("<div >", "<div>");

    input = input.replaceAll("_NL_", "<BR/>");
    input = input.replaceAll("_DNL_", "<BR/><BR/>");
    input = input.replaceAll("_ETC_", "etc");
    input = input.replaceAll("_EG_", "<b>e.g.</b>");
    input = input.replaceAll("_IE_", "<b>i.e.</b>");



    List tokens = input.split("<");
    Set<String> unprocessedTokens = new Set();
    for (int i = 0; i < tokens.length; i++) {
      String token = tokens[i];
      if (token.contains(">")) {
        String substring = token.substring(0, token.indexOf(">"));
        if (substring.startsWith("/")) substring = substring.substring(1);
        unprocessedTokens.add(substring);
      }
    }
    //Log.e("UNPROCESSED", unprocessedTokens.toString());
    return input;
  }

  static String replaceInlinkTag(String input, String tag) {
    var topic_title;
    if (hasProperTag(input, tag) &&
        input.contains(open(tag)) &&
        input.contains(close(tag))) {
      String inlinkDetails = between(input, open(tag), close(tag));
      List inlinkDetailsTokens = inlinkDetails.split(":");
//      String newString = PlanItem.TOPIC_NAMES.get(
//          Integer.parseInt(inlinkDetailsTokens[0].trim()));
//      if (inlinkDetailsTokens.length > 1) {
//        newString = inlinkDetailsTokens[1];
//      }
//      if (!isValid(newString)) {
//        newString = inlinkDetails;
//      }
      List<String> newString = inlinkDetails.split(":");

      if(inlinkDetails.contains(":")){
        topic_title = newString[1];
      }
      else{
        int id = int.parse(newString[0]);
        var get = Api.loadGroups(context);

        topic_title = Plan_topics.get_data(id);

      }

      String result = concatinateStringExcludingTags(input, "<a>$topic_title</a>", tag);
      result = replaceInlinkTag(result, tag);
      return result;
    }
    return input;
  }

  static String between(String input, String start, String end) {
    if (input.contains(start)) {
      int currentStartIndex = input.indexOf(start) + start.length;
      int currentEndIndex = input.indexOf(end, currentStartIndex);
      String current = input.substring(currentStartIndex, currentEndIndex);
      return current;
    }
    return "";
  }

  static String replaceWithHtmlTags(String input, String sourceTag,
      String equivalentHtmlOpenTag, String equivalentHtmlCloseTag) {
    if (hasProperTag(input, sourceTag) && isValid(input)) {

      input = input.replaceAll(open(sourceTag), equivalentHtmlOpenTag);
      input = input.replaceAll(close(sourceTag), equivalentHtmlCloseTag);
      return input;
    }
    return input;
  }

  static String replaceWithHtmlTagsPreserveSpacesAndLines(String input,
      String tag, String equivalentHtmlOpenTag, String equivalentHtmlCloseTag) {
    if (hasProperTag(input, tag) &&
        input.contains(open(tag)) &&
        input.contains(close(tag))) {
      String between = firstBetween(input, tag);
      String newString = equivalentHtmlOpenTag +
          between.replaceAll(" ", "&nbsp;").replaceAll("\\r", "<br/>") +
          equivalentHtmlCloseTag;
      String result = concatinateStringExcludingTags(input, newString, tag);
      result = replaceWithHtmlTagsPreserveSpacesAndLines(
          result, tag, equivalentHtmlOpenTag, equivalentHtmlCloseTag);
      return result;
    }
    return input;
  }

  static String concatinateStringExcludingTags(
      String input, String newString, String tag) {
    if (isValid(newString)) {
      int startIndex = input.indexOf(open(tag));
      int endIndex = input.indexOf(close(tag));
      if (startIndex != -1 && endIndex != -1 && startIndex < endIndex) {
        String stringBefore =
        0 < startIndex ? input.substring(0, startIndex) : "";
        String stringAfter = endIndex + close(tag).length < input.length
            ? input.substring(endIndex + close(tag).length, input.length)
            : "";
        String result = stringBefore + newString + stringAfter;
        return result;
      }
    }
    return input;
  }

  static bool hasProperTag(String input, String tag) {
    if (isValid(input)) {
      int openTagCount = count(input, open(tag));
      int closeTagCount = count(input, close(tag));
      return openTagCount == closeTagCount;
    }
    return false;
  }

  static int count(String input, String search) {
    int result = 0;
    if (!isValid(input) || !isValid(search)) return result;
    while (input.contains(search)) {
      input = input.substring(input.indexOf(search) + search.length);
      result++;
    }
    return result;
  }

  static String enclose(String tag, String class_name, String content) {
    return isValid(class_name)
        ? "<" + tag + ">" + content + "</" + tag + ">"
        : "<" +
        tag +
        " class=\"" +
        class_name +
        "\">" +
        content +
        "</" +
        tag +
        ">";
  }

  static List<String> split(String input) {
    List<String> result = new List();
    List<String> tags = ["image2", "table", "video2", INPROGRAM, "cl","case"];
    while (true) {
      bool found = false;
      String firstTag = null;
      int position = input.length;

      for (int i = 0; i < tags.length; i++) {
        String tag = tags[i];
        if (input.contains(open(tag))) {
          if (input.indexOf(open(tag)) < position) {
            firstTag = tag;
            position = input.indexOf((open(tag)));
          }
        }
      }
      if (firstTag != null) {
        input = processSplitTag(input, result, firstTag);
        found = true;
      }
      if (!found) {
        if (isValid(input)) result.add(input);
        break;
      }
    }
    return result;
  }

  static String processSplitTag(String input, List<String> result, String tag) {
    if (input.contains(open(tag))) {
      int currentStartIndex = input.indexOf(open(tag));
      int currentEndIndex =
          input.indexOf(close(tag), currentStartIndex) + close(tag).length;
      String before = input.substring(0, currentStartIndex);
      if (isValid(before)) result.add(before);
      String current = input.substring(currentStartIndex, currentEndIndex);
      result.add(current);
      input = input.substring(currentEndIndex);
    }
    return input;
  }

  static String open(String tag) {
    return "<" + tag+ ">";
  }

  static String close(String tag) {
    return "</" + tag + ">";
  }

  static bool isNullOrEmpty(String input) {
    return input == null || input.trim().isEmpty;
  }

  static bool isValid(String input) {
    return !isNullOrEmpty(input);
  }

  static String firstBetween(String input, String tag) {
    if (input.contains(open(tag)) && input.contains(close(tag))) {
      int currentStartIndex = input.indexOf(open(tag)) + open(tag).length;
      int currentEndIndex = input.indexOf(close(tag), currentStartIndex);
      String current = input.substring(currentStartIndex, currentEndIndex);
      return current;
    }
    return input;
  }




}



