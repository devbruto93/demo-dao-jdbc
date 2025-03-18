package application;

import model.dao.DaoFactory;
import model.dao.DepartmentDao;
import model.dao.SellerDao;
import model.entities.Department;
import model.entities.Seller;

import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class Program2 {

	public static <department> void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		DepartmentDao departmentDao =  DaoFactory.createDepartmentDao();


		System.out.println("=== TEST 1: department findById ===");
		Department department = departmentDao.findById(3);
		System.out.println(department);

		System.out.println("\n=== TEST 2: seller findAll===");
        List<Department> list = departmentDao.findAll();
        for ( Department d : list) {
			System.out.println(d);
		}

		System.out.println("\n=== TEST 3: department insert ====");
		Department newDepartment = new Department();
		departmentDao.insert(new Department());
		System.out.println("Inserted! New id = " + newDepartment.getId());

		System.out.println("\n=== TEST 4: department update ====");
		department = departmentDao.findById(1);
		department.setName("Martha Waine");
		departmentDao.update(department);
		System.out.println("Update completed");

		System.out.println("\n=== TEST 5: department delete ====");
		System.out.println("Enter id for delete test: ");
		int id = sc.nextInt();
		departmentDao.deletById(id);
		System.out.println("Delete completed");

		sc.close();
	}

}
