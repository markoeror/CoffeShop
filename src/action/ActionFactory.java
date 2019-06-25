package action;

public class ActionFactory {
	public static AbstractAction createAction(String inputAction) {
		
		AbstractAction action= null;
		
		
		  if(inputAction.equals("/login")) {
		   action= new LoginUser_Action(); 
		   return action; }
		  
		  if(inputAction.equals("/admin")) {
			   action= new LoginUser_Action(); 
			   return action; }		 
		  if(inputAction.equals("/registration")) {
			   action= new RegisterUser_Action(); 
			   return action; }
		  if(inputAction.equals("/createCategory")) {
			   action= new CreateCategory(); 
			   return action; }
		  if(inputAction.equals("/deleteCategory")) {
			   action= new DeleteCategory();
			   return action; }
		  if(inputAction.equals("/updateCategory")) {
			   action= new UpdateCategory();
			   return action; }
		  if(inputAction.equals("/updateCategory1")) {
			   action= new UpdateCategory1();
			   return action; }
		  if(inputAction.equals("/createMaterial")) {
			   action= new CreateMaterial();
			   return action; }
		  if(inputAction.equals("/ProductCreate")) {
			   action= new ProductCreate();
			   return action; }
		  if(inputAction.equals("/AddProduct")) {
			   action= new AddProduct();
			   return action; }
		  if(inputAction.equals("/GetProducts")) {
			   action= new GetProducts();
			   return action; }
		  if(inputAction.equals("/categoryview")) {
			   action= new CategoryView();
			   return action; }
			  
		return action;
		
	}
}
