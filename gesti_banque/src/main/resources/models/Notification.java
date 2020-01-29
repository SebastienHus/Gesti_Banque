public class Notification {
	
	//param(s)
	private int IDNotification;
	
	//Constructor(s)
	public Notification() {
			super();
	}
	
	public Notification(String message, Date dateNotification)	{
		    super(IDNotification,message,dateNotification);
	}
		
	public Notification(int IDNotification) {
			super();
			this.IDNotification = IDNotification;
	}
	 
	public int getNotification() {
		return IDNotification;
		
	}
	
	public void setNotification(int IDNotification) {
		this.IDNotification = IDNotification;
	
	}
			
	public Notification createNotification(Date dateNotification) {
		
		
		Notification notification =new notification();
		
		notification.setmessage();
		notification.setdateNotification();
		notification.setIDNotification();
		
		return notification;	
	}
		
	
     public Notification createNotification(int IDNotification) {
	
	
	 Notification notification =new notification();
	
	 notification.setmessage();
	 notification.setdateNotification();
	 notification.setIDNotification();
	
	 return notification;
	 
     }
	
     public Notification createNotification(String message) {
    		
    		
    	 Notification notification =new notification();
    	
    	 notification.setmessage();
    	 notification.setdateNotification();
    	 notification.setIDNotification();
    	
    	 return notification;
    	 
         }
	
	public Notification readNotification(int IDNotification, String message, Date dateNotification) {
		
		Notification notification =new notification();
		
		notification.getmessage();
		notification.getdateNotification();
		notification.getIDNotification();
		 
		return notification;
			
	}
	
	public boolean deleteNotification( Notification notification, boolean deleteNotification) {
	
			if (notification != null && deleteNotification  == true)
				return true;
			else
				return false;
	}
		
	// lien pour la requête sql
}
