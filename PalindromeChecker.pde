// this program will check if string is a palindrome :)
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  // making string only letters of lower case
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  // checking if its a palindrome
  if(word.equals(reverse(word)))
    return true;
  return false;
}
public String reverse(String str)
{
  String s = "";
  for(int i = str.length()-1; i>=0; i--)
    s = s + str.charAt(i);
  return s;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String x = "";
  for (int i = 0; i < sWord.length(); i++){
    if (sWord.charAt(i) != ' ')
      x = x + sWord.charAt(i);
  }
  return x;
}

public String onlyLetters(String sString){
  String x = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)))
      x = x + sString.charAt(i);
  }
  return x;
}



