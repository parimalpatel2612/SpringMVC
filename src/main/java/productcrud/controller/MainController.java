package productcrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import net.bytebuddy.matcher.ModifierMatcher.Mode;
import productcrud.Dao.ProductDaoImpl;
import productcrud.Entity.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDaoImpl productDaoImpl;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Product> allProduct = productDaoImpl.getAllProduct();
		m.addAttribute("product", allProduct);
		return "index";
	}
	
	@RequestMapping("add-product")
	public String addProduct(Model  m) {
		System.out.println("test");
		m.addAttribute("title", "Add Product");
		return "add_product";
	}
	
	@RequestMapping(value =  "handle-product", method = RequestMethod.POST)
	public RedirectView handleAddProduct(@ModelAttribute Product product, HttpServletRequest re) {
		
		System.out.println(product );
		productDaoImpl.save(product);
		RedirectView r = new  RedirectView();
		r.setUrl(re.getContextPath() + "/");
		return r;
	}
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest re) {
		this.productDaoImpl.deleteProduct(productId);
		RedirectView r = new  RedirectView();
		r.setUrl(re.getContextPath() + "/");
		return r;
	}
	
	@RequestMapping("/update-product/{productId}")
	public String updateProduct(@PathVariable("productId") int productId, Model m) {
		Product product = productDaoImpl.getProduct(productId);
		m.addAttribute("product", product);
		return "update-product";
		
	}
}
