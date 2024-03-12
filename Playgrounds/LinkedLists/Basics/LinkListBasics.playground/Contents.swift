
// simple link list

class Node<T> {
    var data: T
    var nextNode: Node?
    
    init(data: T, nextNode: Node? = nil) {
        self.data = data
        self.nextNode = nextNode
    }
}

// lets make link list 1 -> 2 -> 3

let node3 = Node(data: 3)
let node23 = Node(data: 2, nextNode: node3)
let node2 = Node(data: 2, nextNode: node23)
let node1 = Node(data: 1, nextNode: node2)

func printSimpleLinkList(head: Node<Int>?){
    if head == nil { return }
    
    var node = head
    print(node!.data)
    
    while node?.nextNode != nil {
        print(node!.nextNode!.data)
        node = node?.nextNode
    }
}

//printSimpleLinkList(head: node1)



// Fancy link list
class LinkList<T> {
    private var head: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    func addFront(_ data: T){
        let newNode = Node(data: data)
        newNode.nextNode = head
        head = newNode
        // O(1)
    }
    
    func getFirst() -> T? {
        if head == nil { return nil }
        return head!.data
        // O(1)
    }
    
    func addBack(_ data: T){
        let newNode = Node(data: data)
        if head == nil {
            head = newNode
            return
        }
        
        var node = head
        while node?.nextNode != nil {
            node = node?.nextNode
        }
        node?.nextNode = newNode
        // O(n)
    }
    
    func getLast() -> T? {
        if head == nil { return nil }
        var node = head
        while node?.nextNode != nil {
            node = node?.nextNode
        }
        return node!.data
        // O(n)
    }
    
    func insert(position: Int, data: T){
        if position == 0 {
            addFront(data)
            return
        }
        
        let newNode = Node(data: data)
        var node = head
        
        for _ in 0 ..< (position - 1) {
            node = node?.nextNode
        }
        newNode.nextNode = node!.nextNode
        node?.nextNode = newNode
        // O(n)
    }
    
    func deleteAtPosition(position: Int) {
        if position == 0 {
            deleteFirst()
            return
        }
        
        var nextNode = head
        var previousNode: Node<T>?
        
        for _ in 0 ..< position {
            previousNode = nextNode
            nextNode = nextNode?.nextNode
        }
        
        previousNode?.nextNode = nextNode?.nextNode
    }
    
    func deleteFirst(){
        head = head?.nextNode // O(1)
    }
    
    func deleteLast(){
        if head == nil { return }
        var node = head
        var previousNode: Node<T>?
        while node?.nextNode != nil {
            previousNode = node
            node = node?.nextNode
        }
        previousNode?.nextNode = nil
    }
    
    func printLinkList(){
        if head == nil { return }
        
        var result = [T]()
        var node = head
        
        while node != nil {
            result.append(node!.data)
            node = node?.nextNode
        }
        
        print(result)
    }
    
    func clear(){
        head = nil
    }
}


let ll = LinkList<Int>()
ll.addFront(3)
ll.addFront(2)
ll.addFront(1)
ll.addFront(0)
//ll.addBack(4)
ll.addBack(5)
ll.insert(position: 4, data: 12)
ll.printLinkList()
//ll.deleteLast()
//ll.deleteAtPosition(position: 2)
ll.printLinkList()


// find the length of link list
func lengthOfList(head: Node<Int>?) -> Int {
    if head == nil { return 0 }
    
    var length = 0
    var current = head
    
    while current != nil {
        length += 1
        current = current?.nextNode
    }
    
    return length
}


lengthOfList(head: node1)


