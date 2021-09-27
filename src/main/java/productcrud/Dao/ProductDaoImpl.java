package productcrud.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrud.Entity.Product;

@Component
public class ProductDaoImpl  {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void save(Product product) {
		 hibernateTemplate.saveOrUpdate(product);
	}

	public List<Product> getAllProduct() {
		return hibernateTemplate.loadAll(Product.class);
	}

	public Product getProduct(int id) {
		return this.hibernateTemplate.get(Product.class,id);
	}
	@Transactional
	public void deleteProduct(int id) {
		this.hibernateTemplate.delete(getProduct(id));
	}
	
}
