/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

public class ScheduleList {
    public int count;
    public Schedule schArr[] = new Schedule[10];
    
    public void addSchedule (Schedule sl){
        schArr[count] = sl;
        count++;
    }
    
    public void displayList(){
        for(int i = 0; i < count; i++){
            schArr[i].display();
        }
    }
    
    public static void main(String[] args){
        ScheduleList sList = new ScheduleList();
    }
}