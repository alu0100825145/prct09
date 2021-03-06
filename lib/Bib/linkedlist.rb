Nodostruct = Struct.new(:prev, :value, :next) 
class Double_List
    attr_accessor :head, :tail
    include Enumerable
    #Constructor
    def initialize(head, tail)   
        @head = head 
        @tail = tail 
    end
    
    #Metodo Lista vacia
    def empty? 
        @head == nil
    end
    
    #Metodo insertar
    def insert(item) 
        @nodo = Nodostruct.new(nil,item,nil)
        @nodo.next = @head 
        @nodo.prev = nil
        if @tail == nil 
            @tail = @nodo 
        else 
            @head.prev = @nodo
        end
        @head = @nodo 
    end
    
    #Metodo extraer
    def extract 
        extractnodo = @head 
        @head = @head.next 
        extractnodo.next = nil
        extractnodo.prev = nil 
        if @head == nil 
          @tail = nil 
        end
        return extractnodo 
    end
    
    #Metodo each
    
    def each 
        aux1 = @head
        while aux1 != nil
          yield aux1.value 
          aux1 = aux1.next 
        end
    end
end