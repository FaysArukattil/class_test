import 'dart:io';


void main()
{
int s1=1,greatest=0;
List <int> list=[];
List <int> even=[];
List <int> odd=[];
while (s1!=0)
{
stdout.write("Enter a number (0 to stop): ");
s1=int.parse(stdin.readLineSync()!);
s1!=0 ? list.add(s1) : s1;
s1 > greatest ? greatest=s1: s1;
s1!=0? (s1%2==0  ? even.add(s1) : odd.add(s1)): s1;
}



print("Main list : $list");
print("Even numbers : $even");
print("odd numbers : $odd");
print("Greatest number: $greatest");


}