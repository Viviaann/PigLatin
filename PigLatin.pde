import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
{
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
	  for ( int i =0; i< sWord.length(); i++)
  {
    String s= sWord.substring(i,i+1);
    if(s.equals("a")||s.equals("e")||s.equals("i")||s.equals("o")||s.equals("u"))
    {
      return i;
    }
		
}
return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	String en = new String();
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if ( findFirstVowel(sWord)==0)
	{
		String un = new String("way");
		en= en + sWord + un;
		return en;
	}
	else if (sWord.substring(0,2).equals("qu")==true)
	{
		String in= sWord.substring(0,2);
		String on= sWord.substring(2);
		String pn= new String("ay");
		en= en+ on+ in + pn;
		return en;
	}
	else if( findFirstVowel(sWord)>0)
	{
		en= en+ sWord.substring(findFirstVowel(sWord))+ sWord.substring(0,findFirstVowel(sWord))+"ay" ;
		return  en; 
	}

	else
	{
		return "ERROR!";
	}
	
}
