import ajax.Author
import ajax.Book


class BootStrap {

    def init = { servletContext ->
		
		def gsmith = new Author(firstName:'Glen', lastName:'Smith')
		gsmith.save()
		def pledbrook = new Author(firstName:'Peter' , lastName:'Ledbrook')
		pledbrook.save()
		def rocher = new Author(firstName:'Graeme' , lastName:'Rocher')
		rocher.save()
		def dklein = new Author(firstName:'Dave', lastName:'Klein')
		dklein.save()
		def dierk = new Author(firstName:'Dierk', lastName:'Konig')
		dierk.save()
		def bashar = new Author(firstName:'Bashar', lastName:'Abdul-Jawad')
		bashar.save()
		def fischer = new Author(firstName:'Robert', lastName:'Fischer')
		fischer.save()
		def rudolph = new Author(firstName:'Jason', lastName:'Rudolph')
		rudolph.save()
		
		new Book(title:'Grails in Action', pages:469 , author:gsmith , publisher:'Manning' ).save()
		new Book(title:'Groovy in Action', pages:532 , author:dierk , publisher: 'Manning' ).save()
		new Book(title:'The Definitive Guide to Grails', pages:569 , author:rocher , publisher:'Apress' ).save()
		new Book(title:'Grails A Quick-Start Guide', pages: 200, author:dklein , publisher:'Pragmatic Bookshelf' ).save()
		new Book(title:'Groovy and Grails Recipes', pages: 214, author:bashar , publisher:'Apress').save()
		new Book(title:'Grails Persistence with GORM and GSQL', pages: 214, author:fischer , publisher:'Apress' ).save()
		new Book(title:'Getting Started with Grails', pages: 131, author:rudolph , publisher:'InfoQ' ).save()
		
    }
	
    def destroy = {
    }
}
