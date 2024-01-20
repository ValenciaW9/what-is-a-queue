class Queue {
  constructor() {
    this.queue = [];
    // this is an arbitrary value to make testing easier
    // 1,024 would be way too high to test!
    this.limit = 10; // Set the default limit to 10
  }

  // add item to rear of queue if not full
  // if full throw error
  enqueue(item) {
    if (this.queue.length >= this.limit) {
      throw new Error("Queue is full");
    }
    this.queue.push(item);
  }

  dequeue() {
    return this.queue.shift();
  }

  peek() {
    return this.queue[0];
  }

  isEmpty() {
    return this.queue.length === 0;
  }

  isFull() {
    return this.queue.length >= this.limit;
  }

  size() {
    return this.queue.length;
  }

  search(target) {
    const index = this.queue.indexOf(target);
    return index >= 0 ? index : -1;
  }

  print() {
    console.log(this.queue);
  }
}

if (require.main === module) {
  // add your own tests in here
  const queue = new Queue();
}