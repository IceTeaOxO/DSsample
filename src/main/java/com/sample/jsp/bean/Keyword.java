package com.sample.jsp.bean;
public class Keyword {
	 public String name;//name接收使用者輸入的搜尋關鍵字
	 
	 public Keyword(String name){
	  this.name= name;
	  
	 }
	 public Keyword() {
	  
	 }
	 public void setName(String name) {
	  this.name = name;
	 }
	 public String getName() {
	  return name;
	 }
	 @Override
	 public String toString(){
	  return "["+name+","+"]";
	 }
	}