#include <iostream>
#include <string>
#include "Employee.h"
using namespace std;
 
// Main() function: where the execution of program begins
void calculateTotalFee(){
    cout<<"Inside calculating total fee method";
}


int generateEmployeeID(){

    return 20;
}


int main()
{
    

    Employee employee;

    employee.employeeName = "Akash";

    employee.employeeID = generateEmployeeID();


    cout<<employee.employeeName<<endl;
    cout<<employee.employeeID<<endl;

    employee.changeName();


  

    return 3;

}
