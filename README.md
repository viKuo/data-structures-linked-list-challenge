# Linked Lists 1

Linked Lists are lists that are composed of node each referencing the next.  In the most general implementation each node holds a reference to an element of the list.

## Why is this important?

A linked list is an ideal data structure when you know that you will have a list that will change size, and where you may need to add or remove elements from the middle of the list.

##Releases

###Release 0: Implement `Node`

Implement and write RSpec tests for the `Node` class, supporting the following minimum interface.

####Interface
- `new(element)` - Instantiate a new node with an element
- `insertAfter(node)` - Insert a node after the receiver
- `removeAfter()` - Remove the node after the receiver or `nil` if absent

###Release 1: Implement `LinkedList`

Implement and write RSpec tests for the `LinkedList` class, supporting the following interface.

####Interface
- `new` - Instantiate a new linked list
- `insertFirst` - Insert an element at the front of the list
- `removeFirst` - Remove the element at the front of the list or `nil` if absent
- `insertLast` - Insert an element at the back of the list
  `removeLast` - Remove the element at the back of the list or `nil` if absent

###Release 2: More methods

Implement and write RSpec tests for the following methods for the `LinkedList` class.
- `get(index)` - Get the element from the receiver list at the index
- `set(index, element)` - Set the element in the receiver list at the index
  `size` - answer the size of the list

##Resources

* [Wikipedia: Linked List](http://en.wikipedia.org/wiki/Linked_list)
