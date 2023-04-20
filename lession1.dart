void main() {
  
   List<int?> list = [10,1,0,null,5,5,6,-10]; 
  //
 
  int? minvalue; //define minvalue = nullable interger 
  int? value; // nullable variable
  int minindex = 0; 
  
  for (int x = 0; x < list.length; x++) { //check every single x in list , start from index 0)
      value = list[x]; //define value ís element x index
      minvalue = list[minindex]; // minvalue equal to minindex at x element

      if (value == null) { // if value of element is null
        minindex = x; // min index equal to x index
        print(x);
       break;
      }

      if (minvalue !=null && value < minvalue) { // if min value is not null and value < minvalue
        minindex = x; //then the min index is x 
        print(x);
        
  }

  }
  
}