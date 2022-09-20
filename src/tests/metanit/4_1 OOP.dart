void main (){

    Person tom = Person();
    tom.display();
    // изменяем имя и возраст
    tom.name = "Tom";
    tom.age = 35;
    tom.display();
}

class Person{

    String name = "undefined";
    int age = 0;
    void display(){
        print("Name: $name Age: $age");
    }
}