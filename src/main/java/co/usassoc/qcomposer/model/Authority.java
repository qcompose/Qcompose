package co.usassoc.qcomposer.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AUTHORITIES")
public class Authority{
	
	@Id
	@GeneratedValue
	@Column(name="id_authority")
	private Long authorityId;
	
    @Column(name="authority")
    private String authority;  
    
      public Long getAuthorityId() {
		return authorityId;
	}
	public void setAuthorityId(Long authorityId) {
		this.authorityId = authorityId;
	}
	public String getAuthority() {
        return this.authority;
    }
    public void setAuthority(String authority) {
        this.authority = authority;
    }
 
}
	


