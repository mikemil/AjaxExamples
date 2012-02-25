package ajax

class Author {

	String firstName
	String lastName
	
    static constraints = {
		firstName (blank:false)
		lastName (blank:false)
    }
	
	String toString() {
		"$firstName $lastName"
	}
}
