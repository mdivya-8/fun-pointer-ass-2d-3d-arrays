1. f is an array of 10 function pointers where each pointer points to a function that recieves two integers and returns nothing.
#include<stdio.h>

void hello(int x,int y);
void add(int x,int y);
void sub(int x,int y);
void mul(int x,int y);
void div(int x,int y);
void mod(int x,int y);


void main()
{
	int i=0,a,b,n=0;
	void (*fp[10])(int,int)={hello,add,sub,mul,div,mod};
	printf("Enter the value of a and b\n");
	scanf("%d %d",&a,&b);

	for(i=0;i<10;i++)
		fp[i](a,b);
}

void hello(int x,int y)
{
printf("hello world\n");
}

void add(int x,int y)
{
printf("a+b=%d\n",x+y);
}

void sub(int x,int y)
{
printf("a-b=%d\n",x-y);
}

void mul(int x,int y)
{
printf("a*b=%d\n",x*y);
}
