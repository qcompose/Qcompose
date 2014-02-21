package co.usassoc.qcomposer.service.api;

import co.usassoc.qcomposer.model.Customer;

import java.util.List;

public interface CustomerService {

    public boolean addCustomer(Customer customer);

    public List<Customer> listCustomer();

    public void removeCustomer(Integer id);
}
