package com.backend.model;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="ProductTable_04")
public class Product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer productId;
	private String productName;
	private String productDesc;
	private int supplierId;
	private int categoryId;
	private Double price;
	private Integer stock;
	private String imgName;
	
    @Transient
	private MultipartFile pimage;

    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="supplierId",insertable=false,updatable=false,nullable=false)
    private Supplier supplier;
    
    
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn(name="categoryId",insertable=false,updatable=false,nullable=false)
    private Category category;
    
    
    
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		System.out.println("Setter of pid");
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		System.out.println("Setter of pname");
		this.productName = productName;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		System.out.println("Setter of pdesc");
		this.productDesc = productDesc;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		System.out.println("Setter of supplierId");
		this.supplierId = supplierId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		System.out.println("Setter of categoryid");
		this.categoryId = categoryId;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		System.out.println("Setter of price");
		this.price = price;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		System.out.println("Setter of stock");
		this.stock = stock;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		System.out.println("Setter of imgNAme");
		this.imgName = imgName;
	}

	public MultipartFile getPimage() {
		return pimage;
	}

	public void setPimage(MultipartFile pimage) {
		System.out.println("Setter of pimage");
		this.pimage = pimage;
	}
    
    

}
