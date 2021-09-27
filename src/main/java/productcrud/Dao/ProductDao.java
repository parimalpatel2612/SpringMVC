package productcrud.Dao;

import java.util.List;

import org.springframework.stereotype.Component;

import productcrud.Entity.Product;

public interface ProductDao {

	public void save(Product product);
	public List<Product> getAllProduct();
	public Product getProduct(int id);
	public void deleteProduct(int id);
}
