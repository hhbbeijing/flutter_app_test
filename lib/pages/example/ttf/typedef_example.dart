import 'dart:io';

void main(){
  BottomNavigationBar bar = BottomNavigationBar(
      changed: (index){
      print("index-->"+index);
    }
  );
  print("sleep 3 s");
  sleep(const Duration(seconds: 3));
  bar.select("40");
}

//别名函数
typedef ValueChanged<T> = void Function(T value);

class BottomNavigationBar{

  final ValueChanged<String>? changed;

  BottomNavigationBar({
    // ValueChanged<String>? this.changed,
    this.changed,
  });

  //改变状态
  void select(String index){
    print(this.changed == null);
    //this.changed 不为空 执行 call；
    // call就是将index字段值，赋予ValueChanged，可以理解为值发生了变化，便回调
    this.changed?.call(index);
  }

}

