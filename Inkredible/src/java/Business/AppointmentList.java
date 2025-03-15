/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Business;

/**
 *
 * @author tston
 */
public class AppointmentList {
    public int count;
    public Appointments accArr[] = new Appointments[10];
    
    public void addAppointment (Appointments al){
        accArr[count] = al;
        count++;
    }
    
    public void displayList(){
        for(int i = 0; i < count; i++){
            accArr[i].display();
        }
    }
    
    public static void main(String[] args){
        
    }
}
