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
  String backwards = noPunc(word);
  if(reverse(backwards).equalsIgnoreCase(backwards))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
  String sNew = new String();
  for(int i = str.length() - 1; i >= 0; i--)
  {
      sNew = sNew + str.substring(i, i + 1);
  }
  return sNew;
}
public String noPunc(String sWord){
  String s = new String();
  for (int i = 0; i < sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
    {
      s = s + sWord.charAt(i);
    }
  }
  return s;
}
