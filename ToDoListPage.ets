import ToDoItem from './ToDoItem';

@Entry
@Component
struct ToDoListPage {
  private taskList: Array<string> = ["吃早餐","学习","游戏","运动"]
  @State message: string = 'Hello World';

  build() {
    Column({space: 16}) {
      Text("待办")
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .lineHeight(33)
        .width("80%")
        .margin({
          top: 24,
          bottom: 12
        })
        .textAlign(TextAlign.Start)
      
      ForEach(this.taskList, (item: string) => {
        ToDoItem({content: item})
      }, (item: string) => JSON.stringify(item)
      )
    }
    .height('100%')
    .width('100%')
    .backgroundColor("#F1F3F5")
  }
}
