import { listenerCount } from "cluster";

//
// This is only a SKELETON file for the 'Linked List' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

class Node{
  constructor(data, next, prev){
  this.data = data;
  this.next = next;
  this.prev = prev;
  return this.value;
}
}
/*export*/ 
class LinkedList{
constructor(){
  this.head = null;
  this.tail = null;
  this.size = 0;
}

addToHead(data){
  const newNode= new Node(data, this.head, null);
  
  if(this.head){
    newNode.next = this.head;
    this.head.prev = newNode;
    this.head = newNode
  }else{
    this.head = newNode;
    this.tail = newNode;
  }
  this.size++
}

print(){
  let current = this.head;
  let result = "";
  while(current){
    result+= current.data + '<->'
    current = current.next;
  }
  return result += 'X';
}

reversePrint(){
  let current= this.tail;
  let result = "";
  while(current){
    result += current.data + '<->';
    current = current.next;
  }
  return result += 'X'
}
}

const doubleLinkedList = new LinkedList();
doubleLinkedList.addToHead(3);
console.log(doubleLinkedList.print());
console.log(doubleLinkedList);



  // push() {
  // }

  // pop() {
  // }

  // shift() {
  //   throw new Error("Remove this statement and implement this function");
  // }

  // unshift() {
  //   throw new Error("Remove this statement and implement this function");
  // }

  // delete() {
  //   throw new Error("Remove this statement and implement this function");
  // }

  // count() {
  //   throw new Error("Remove this statement and implement this function");
  // }

