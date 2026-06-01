class Employee:
    
    def __init__(self, emp_id, name, department, salary, email, phone, experience):
        self.emp_id = emp_id
        self.name = name
        self.department = department
        self.__salary = salary
        self.email = email
        self.phone = phone
        self.experience = experience
        self.attendance = 0
        self.leave_balance = 20

    def display(self):
        print("\n====================")
        print("Employee Details")
        print("====================")
        print("Employee ID:", self.emp_id)
        print("Name:", self.name)
        print("Department:", self.department)
        print("Salary:", self.__salary)
        print("Email:", self.email)
        print("Phone:", self.phone)
        print("Experience:", self.experience)
        print("Attendance:", self.attendance)
        print("Leave Balance:", self.leave_balance)

    def mark_attendance(self):
        self.attendance += 1
        print("Attendance Updated Successfully")

    def increment_salary(self, percent):
        increment_amount = self.__salary * percent / 100
        self.__salary += increment_amount
        print("Salary Updated Successfully")

    def calculate_bonus(self):
        if self.attendance >= 25:
            return 5000
        elif self.attendance >= 15:
            return 3000
        else:
            return 1000

    def apply_leave(self, days):
        if days <= self.leave_balance:
            self.leave_balance -= days
            print("Leave Approved")
        else:
            print("Insufficient Leave Balance")

    def generate_salary_slip(self):
        bonus = self.calculate_bonus()
        net_salary = self.__salary + bonus

        print("\n========== SALARY SLIP ==========")
        print("Employee ID :", self.emp_id)
        print("Employee Name :", self.name)
        print("Department :", self.department)
        print("Basic Salary :", self.__salary)
        print("Bonus :", bonus)
        print("Net Salary :", net_salary)
        print("=================================")

    def get_salary(self):
        return self.__salary

employees = []

def add_employee():
    print("\nAdd Employee")
    emp_id = int(input("Enter Employee ID: "))
    name = input("Enter Name: ")
    department = input("Enter Department: ")
    salary = float(input("Enter Salary: "))
    email = input("Enter Email: ")
    phone = input("Enter Phone: ")
    experience = int(input("Enter Experience: "))

    emp = Employee(
        emp_id,
        name,
        department,
        salary,
        email,
        phone,
        experience
    )

    employees.append(emp)
    print("Employee Added Successfully")

def view_employees():

    if len(employees) == 0:
        print("No Employees Found")
        return

    for emp in employees:
        emp.display()

def search_employee():
    emp_id = int(input("Enter Employee ID: "))
    for emp in employees:
        if emp.emp_id == emp_id:
            emp.display()
            return emp

    print("Employee Not Found")
    return None

def remove_employee():
    emp_id = int(input("Enter Employee ID: "))
    for emp in employees:
        if emp.emp_id == emp_id:
            employees.remove(emp)
            print("Employee Removed Successfully")
            return

    print("Employee Not Found")

def mark_attendance():
    emp = search_employee()
    if emp:
        emp.mark_attendance()

def update_salary():
    emp = search_employee()
    if emp:
        percentage = float(input("Enter Increment Percentage: "))
        emp.increment_salary(percentage)

def calculate_bonus():
    emp = search_employee()
    if emp:
        print("Bonus Amount:", emp.calculate_bonus())

def update_employee():
    emp = search_employee()

    if emp:
        emp.name = input("Enter New Name: ")
        emp.department = input("Enter New Department: ")
        emp.email = input("Enter New Email: ")
        emp.phone = input("Enter New Phone: ")
        print("Employee Updated Successfully")

def apply_leave():
    emp = search_employee()
    if emp:
        days = int(input("Enter Leave Days: "))
        emp.apply_leave(days)

def generate_salary_slip():
    emp = search_employee()
    if emp:
        emp.generate_salary_slip()

while True:
    print("\n================================")
    print("SMART HR MANAGEMENT SYSTEM")
    print("================================")
    print("1. Add Employee")
    print("2. View Employees")
    print("3. Search Employee")
    print("4. Remove Employee")
    print("5. Mark Attendance")
    print("6. Update Salary")
    print("7. Calculate Bonus")
    print("8. Update Employee")
    print("9. Apply Leave")
    print("10. Generate Salary Slip")
    print("11. Exit")

    choice = int(input("Enter Choice: "))

    if choice == 1:
        add_employee()

    elif choice == 2:
        view_employees()

    elif choice == 3:
        search_employee()

    elif choice == 4:
        remove_employee()

    elif choice == 5:
        mark_attendance()

    elif choice == 6:
        update_salary()

    elif choice == 7:
        calculate_bonus()

    elif choice == 8:
        update_employee()

    elif choice == 9:
        apply_leave()

    elif choice == 10:
        generate_salary_slip()

    elif choice == 11:
        print("Thank You")
        break

    else:
        print("Invalid Choice")
