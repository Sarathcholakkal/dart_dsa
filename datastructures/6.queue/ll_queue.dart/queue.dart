// class Node{
//   int data;
//   Node? next;
//   Node(this.data);
// }
// class Queue {
//   Node? front;
//   Node? rear;
//   void enqueue(int data){
//     Node newNode = Node(data);
//     if(rear==null){
//       rear = newNode;
//       front = newNode;
//     }else{
//       rear!.next = newNode;
//       rear = newNode;
//     }
//   }
//   void dequeue(){
//     if(front==null) return;
//     front = front!.next;
//   }
//   void removeDub(){
//     if(front==null)return;
//     Node? temp = front;
//     while(temp !=null){
//       Node? current =temp;
//       while(current!.next !=null){
//         if(current.next!.data == temp.data){
//           if(current.next == rear){
//             rear = current;
//           }
//           current.next = current.next!.next;
//         }else{
//           current = current.next;
//         }
//       }
//       temp =temp.next;
//     }
//   }
//   void display(){
//     if(rear == null) return;
//     Node? temp = front;
//     while(temp != null){
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
//   void removeVal(int data){
//     if(front==null){
//       return;
//     }
//     Node? temp =front;
//     Node? prev;
//     while(temp !=null){
//       if(temp.data == data){
//         if(temp == front){
//           front = front!.next;
//         }
//         else if(temp == rear){
//           prev!.next =null;
//           rear = prev;
//         }else{
//           prev!.next =temp.next;
//         }
        
//       }
//         prev =temp;
//         temp =temp.next;

//     }
//   }
// }
// void main(){
//   Queue q = Queue();
//   q.enqueue(10);
//   q.enqueue(20);
//   q.enqueue(30);
//   q.enqueue(40);
//   q.enqueue(50);
// q.removeVal(50);

//   q.display();
// }