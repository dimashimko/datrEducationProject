void main (){

  Application myApp1 = Application("Internet Browser");
  Application myApp2 = Application("Internet Browser 2");
  myApp2.about();
}

class Application{

  String name;
  static Application app = Application.fromName("");

  Application.fromName(this.name);

  factory Application(String name) {
    if(app.name == ""){
      app = Application.fromName(name);
      print("Приложение $name запущено");
    }
    else{
      // в фабричных конструкторах нельзя обращаться к this
      // print("В приложении ${this.name} открыта новая вкладка");
      print("В приложении ${app.name} открыта новая вкладка");
    }
    return app;
  }
  void about(){
    print("Приложение $name");
  }
}