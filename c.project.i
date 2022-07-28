# C-PROJECT-I
This project is on the topic of LIbrary Management System
incomplete


#include<stdio.h>
#include<string.h>
int login();
int userlogin();
int adminlogin();
int welcomemenu();

char password[20]="12345",username[20]="iamyogess";	
char ch;

// structure
struct library{
	char bookname[30],publication[30],student_name[30];
	int issue_date,return_date;
	
		
}c;

struct admininfo{
	char bookname[30],publication[30],student_name[30],student_address[30];
	int issue_date,return_date,student_id[30];
};


int main()
{
	welcomemenu();
	login();
	
	return 0;
}

int welcomemenu()
{
	
	printf("############################################\n");
	printf("### Welcome To Library Management System ###\n");
	printf("############################################\n");
	printf("Press any key to continue again........");
	ch=getch();
	system("cls");
	
}

int login()
{
	char choice,ch;
	printf("You are in login page.\n");
	printf("1)Admin\n2)User");
	printf("\nChoose your desired option.");
	scanf("%s",&choice);
	
	
	switch(choice)
	{
		case '1':
			adminlogin();
		
			break;
			
		case '2':
			userlogin();
			break;
			
		default:
			
			printf("Please enter correct instruction.\n");
			printf("Press any key to try again...");
			ch=getch();
			system("cls");
			login();
			break;
	}
	
	
	return 0;
}

int userlogin()
{
	char userpassword[20],usernm[20];
	system("cls");
	printf("You are in userlogin page.\n");
	printf("Enter username:-");
	scanf("%s",&usernm);
	
	
	printf("Enter password:-");
	scanf("%s",&userpassword);
	
	if(strcmp(username,usernm)==0 && strcmp(password,userpassword)==0)
	{
		usertools();
	}
	else
	{
		printf("Please enter corrrect answer.");
	}
	
}

int adminlogin()
{
	printf("You are in adminlogin page.");
}

//int admintools()
//{
//	system("cls");
//	char adchoice();
//	printf("\t\t\t\tADMIN\n");
//	printf("1) Book Name\n2) Student Name\n3) Book Taken Date\n4) Book Issue Date\n5) Student Address");
//	printf("Enter your desired option.");
//	
//}


int usertools()
{
	system("cls");
	char choice;
	printf("\t\t\t\tUSER");
	printf("\nChoose your desired option.");
	
	printf("\n1)Add Book\n2)Show Book\n3)Delete Book\n4)Edit Book\n5)Search Book\n6)Exit");

	scanf("%s",&choice);
	
	
	switch(choice)
	{
		case '1':
			system("cls");
			addbook();
		
			break;
			
		case '2':
//			showbook();
			printf("book add");
			break;
			
		case '3':
//			delete();
printf("book add");
		
			break;
			
		case '4':
//			edit();
printf("book add");
			break;
			
		case '5':
//			search();
printf("book add");
		
			break;
			
		case '6':
			system("cls");
			eexit();
//printf("book add");
			break;
			
		default:
			printf("\n\nPlease enter correct instruction.");
			break;
			
	}
	
}

int addbook()
{
	printf("Enter your name.\n");
	scanf("%s",&c.student_name);
	printf("Enter punlication name:");
	scanf("%s",&c.publication);
	printf("Enter book's name");
	scanf("%s",&c.bookname);
	printf(" Enter issue date.");
	scanf("%d",&c.issue_date);
	printf(" Enter return date.");
	scanf("%d",&c.return_date);
	
	printf("\nDetails added succesfully.");
	printf("\nPress any key to return to user menu.");
	ch=getch();
	usertools();
	
	
}

int eexit()
{
	login();
	return 0;
}

