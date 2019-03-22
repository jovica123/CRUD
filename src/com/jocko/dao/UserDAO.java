package com.jocko.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jocko.bean.Course;
import com.jocko.bean.User;

import java.util.ArrayList;
import java.util.List;  


public class UserDAO {
	
	  public static Connection getConnection() {
	      Connection conn = null;  
		  try {
	             Class.forName("com.mysql.jdbc.Driver");
	             conn =
	  	               DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentDatabase","root","milenijum22");
	        } catch (Exception ex) {
	            System.out.println(ex.getMessage());
	        }
		  return conn;
	    } 
	  
	  public static int save(User u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"insert into Student(FirstName,LastName,Address,City,State,Dateofbirth,Gender) values(?,?,?,?,?,?,?)");  
		        ps.setString(1,u.getFirstName());  
		        ps.setString(2,u.getLastName());  
		        ps.setString(3,u.getAddress());  
		        ps.setString(4,u.getCity());  
		        ps.setString(5,u.getState());
		        ps.setString(6,u.getDateOfBirth());
		        ps.setString(7,u.getGender());
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		public static int update(User u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update Student set FirstName=?,LastName=?,Address=?,City=?,State=?,DateOfBirth=?,Gender=? where ID=?");  
		        ps.setString(1,u.getFirstName());  
		        ps.setString(2,u.getLastName());  
		        ps.setString(3,u.getAddress());  
		        ps.setString(4,u.getCity());  
		        ps.setString(5,u.getState());
		        ps.setString(6,u.getDateOfBirth());
		        ps.setString(7,u.getGender());
		        ps.setInt(8,u.getId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		public static int delete(User u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from Student where ID=?");  
		        ps.setInt(1,u.getId());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}  
		public static List<User> getAllRecords(){  
		    List<User> list=new ArrayList<User>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Student");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            User u=new User();  
		            u.setId(rs.getInt("ID"));  
		            u.setFirstName(rs.getString("FirstName"));  
		            u.setLastName(rs.getString("LastName"));  
		            u.setAddress(rs.getString("Address"));  
		            u.setCity(rs.getString("City"));  
		            u.setState(rs.getString("State")); 
		            u.setDateOfBirth(rs.getString("DateOfBirth"));
		            u.setGender(rs.getString("Gender"));
		            list.add(u);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}  
		public static User getRecordById(int id){  
		    User u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Student where ID=?");  
		        ps.setInt(1,id);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new User();  
		            u.setId(rs.getInt("ID"));  
		            u.setFirstName(rs.getString("FirstName"));  
		            u.setLastName(rs.getString("LastName"));  
		            u.setAddress(rs.getString("Address"));  
		            u.setCity(rs.getString("City"));  
		            u.setState(rs.getString("State"));
		            u.setDateOfBirth(rs.getString("DateOfBirth"));
		            u.setGender(rs.getString("Gender"));
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
		
		public static int saveCourse(Course c){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"insert into Course(Name,Description,Code) values(?,?,?)");    
		        ps.setString(1,c.getCourseName());  
		        ps.setString(2,c.getDescription()); 
		        ps.setInt(3,c.getCode());
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		} 
		
		public static int updateCourse(Course c){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement(  
		"update Course set Name=?,Description=? where Code=?");  
		        ps.setString(1,c.getCourseName());  
		        ps.setString(2,c.getDescription());  
		        ps.setInt(3,c.getCode());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		} 
		public static int deleteCourse(Course c){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from Course where Code=?");  
		        ps.setInt(1,c.getCode());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		} 
		public static List<Course> getAllCourse(){  
		    List<Course> courseList=new ArrayList<Course>();  
		      
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Course");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            Course c=new Course();  
		            c.setCode(rs.getInt("Code"));  
		            c.setCourseName(rs.getString("Name"));  
		            c.setDescription(rs.getString("Description"));  
		            
		            courseList.add(c);  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return courseList;  
		}
		public static Course getRecordByCode(int code){  
		    Course c=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from Course where Code=?");  
		        ps.setInt(1,code);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            c=new Course();  
		            c.setCode(rs.getInt("Code"));  
		            c.setCourseName(rs.getString("Name"));  
		            c.setDescription(rs.getString("Description"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return c;  
		}
		}  

	


