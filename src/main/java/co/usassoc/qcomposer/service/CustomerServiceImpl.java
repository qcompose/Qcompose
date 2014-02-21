package co.usassoc.qcomposer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import co.usassoc.qcomposer.dao.api.CustomerDAO;
import co.usassoc.qcomposer.model.Customer;
import co.usassoc.qcomposer.service.api.CustomerService;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDAO customerDAO;

    @Transactional
    public boolean addCustomer(Customer customer) {
        return customerDAO.addCustomer(customer);
    }

    @Transactional
    public List<Customer> listCustomer() {

        return customerDAO.listCustomer();
    }

    @Transactional
    public void removeCustomer(Integer id) {
        customerDAO.removeCustomer(id);
    }

    public CustomerDAO getCustomerDAO() {
        return customerDAO;
    }

    public void setCustomerDAO(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }
}
