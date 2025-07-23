void main()
{
  double avg=0;
  List <int> l1=[5,15,25,35,45];
  for (var element in l1) 
  {
     avg= avg + element;
  }
  print(avg/l1.length);
}