String input = "place";

public void setup(){
  System.out.println(Piggify(input));

}
public String Piggify(String in){
  String out = in;
  String suffix = "";
  if(isVowel(out.charAt(0))){
    out = out + "way";
    return(out);
  }
  while(!isVowel(out.charAt(0))){
    suffix = suffix + out.charAt(0);
    out = out.substring(1);
  }
  out = out + suffix + "ay";
  return(out);
}

public Boolean isVowel(char x){
  char y = x;
  if(y >= 65 && y <= 90){
    y += 32;
  }
  return(y == 'a' || y == 'e' || y == 'i' || y == 'o' || y == 'u');

}
