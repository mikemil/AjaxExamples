package ajax

class BookController {

     def scaffold = true
	 
	 def showEditAjax = {
		 render (view:'editAjax', model:[bookInstance:Book.get(params.id)])
	 }
	 
	 def showListSelect = {
		 render (view:'listSelect', model:[bookInstanceList:Book.list()])
	 }
	 
	 def showTitleSearch = {
		 render (view:'titleSearchAjax')
	 }
	 
	 def showRemoteLink = {
		 render (view:'remoteLink', model:[bookInstanceList:Book.list()])
	 }
	 
	 def showDetails = {
		 render(template:'bookDetails', model:[bookInstance:Book.get(params.id)])
	 }
	 
	 def showSearch = {
		 render (view:'searchAjax')
	 }
	 
	 def String wrapSearchParm(value) {
		 '%'+value+'%'
	 }
	 
	 def searchTitle = {
		 def list = Book.findAllByTitleIlike(wrapSearchParm(params.searchvalue))
		 render(template:'searchResults', model:[searchresults:list])
	 }
	 
	 def search = {
		 def list
		 if (params.publisher && params.title)
		 	list = Book.findAllByTitleIlikeAndPublisherIlike(wrapSearchParm(params.title), wrapSearchParm(params.publisher))
		 else if (params.publisher)
		 	list = Book.findAllByPublisherIlike(wrapSearchParm(params.publisher))
	     else if (params.title)
	    	 list = Book.findAllByTitleIlike(wrapSearchParm(params.title))
			
		 render(template:'searchResults', model:[searchresults:list])
	 }
	 
	 def listByPublisher = {
		 def list
		 if (params.filter.equals("All"))
		 	list = Book.list()
		  else
		    list = Book.findAllByPublisher(params.filter)
			
		 render(template:'searchResults', model:[searchresults:list])
	 }
	 
	def update = {
		def bookInstance = Book.get( params.id )
		if(bookInstance) {
			bookInstance.properties = params
			if(!bookInstance.hasErrors() && bookInstance.save()) {
				render "<br/><h3>Book ${params.title} updated with Ajax using FormRemote</h3>"
			}
			else {
				render(view:'edit',model:[bookInstance:bookInstance])
			}
		}
		else {
			flash.message = "Book not found with id ${params.id}"
			redirect(action:edit,id:params.id)
		}
		 
	 }
	 
}
