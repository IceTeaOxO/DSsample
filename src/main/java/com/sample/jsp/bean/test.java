package com.sample.jsp.bean;

import java.io.IOException;

import javax.print.attribute.standard.PrinterInfo;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class test {
	private String GIMG = "https://www.google.com/searchbyimage?&image_url=";
	private String imgUrlString,searchString;
	



	public test() {
		
	}
	
	public void init() {
		searchString=GIMG+imgUrlString;
	}
	public void Search() throws IOException {
		Document doc = Jsoup.connect(searchString).get();
		Elements links = doc.select("g-img");
		System.out.println(links);

	}
	//https://www.google.com/searchbyimage?&image_url=https://upload.cc/i1/2022/01/08/54yeDK.jpg
	public void run() throws IOException {
		init();
		System.out.println(searchString);

		Search();
		
	}
	public String getURL() {
		init();
		return searchString;
	}
	public String getImgUrlString() {
		return imgUrlString;
	}
	public void setImgUrlString(String imgUrlString) {
		this.imgUrlString = imgUrlString;
	}
	/*
	public void jsoup() {
		Document doc = Jsoup.connect().get();
	    Elements links = doc.select("img");
	}*/
	public static void main(String[] args) {
		System.out.println("QQ");
	}
}
