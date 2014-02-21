package co.usassoc.qcomposer.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name = "USERS")
public class User implements UserDetails {
	// Original props
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2380483098795954644L;

	@Id
	@GeneratedValue
	@Column(name="id_user")
	private Integer userId;	
	
	@Column(name = "username")
	private String username;
	
	@Column(name = "enabled")
	private Boolean enabled;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "FIRSTNAME")
    @Size(min = 2, max = 30)
    private String firstname;

    @Column(name = "LASTNAME")
    @Size(min = 2, max = 30)
    private String lastname;

    @NotEmpty
    @Email
    @Column(name = "EMAIL")
    private String email;

    @Column(name = "TELEPHONE")
    @Pattern(regexp = "^[0-9]{6,14}$")
    private String telephone;
	// bi-directional one-to-one association to Authority
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	@JoinTable(name = "user_authorities", joinColumns = { @JoinColumn(name = "id_user")},  
    inverseJoinColumns={@JoinColumn(name="id_authority")})
	private Set<Authority> authoritySet;
	
	
	// Getters & Setters for original props


	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}
		
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	// Getters and setters for relation property
	public Set<Authority> getAuthoritySet() {
		return this.authoritySet;
	}

	public void setAuthoritySet(Set<Authority> authoritySet) {
		this.authoritySet = authoritySet;
	}

	// Spring Security props
	private transient Collection<GrantedAuthority> authorities;

	// UserDetails methods
	@Transient
	public Collection<GrantedAuthority> getAuthorities() {
		return authorities;
	}

	@Transient
	public boolean isAccountNonExpired() {
		return true;
	}

	@Transient
	public boolean isAccountNonLocked() {
		return true;
	}

	@Transient
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Transient
	public boolean isEnabled() {
		return getEnabled();
	}

	@Transient
	public void setUserAuthorities(List<String> authorities) {
		List<GrantedAuthority> listOfAuthorities = new ArrayList<GrantedAuthority>();
		for (String role : authorities) {
			listOfAuthorities.add(new GrantedAuthorityImpl(role));
		}
		this.authorities = (Collection<GrantedAuthority>) listOfAuthorities;
	}

	// Constructors
	public User() {
	}
	
	@Override
    public String toString() {
        return "User{" +
                "name='" + firstname + '\'' +
                ", lastName='" + lastname + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
