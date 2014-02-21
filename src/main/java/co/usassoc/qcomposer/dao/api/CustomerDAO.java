package co.usassoc.qcomposer.dao.api;


import co.usassoc.qcomposer.model.Customer;

import java.util.List;

public interface CustomerDAO {

    public boolean addCustomer(Customer customer);

    public List<Customer> listCustomer();

    public void removeCustomer(Integer id);
}
