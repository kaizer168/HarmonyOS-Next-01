//@Entry
@Component
export default struct ToDoItem {
  private content?: string
  @State isComplete: boolean = false

  @Builder
  labelIcon(icon: ResourceStr) {
    Image(icon)
      .objectFit(ImageFit.Contain)
      .fillColor(Color.Green)
      .width(28)
      .height(28)
      .margin(20)
  }

  build() {
    Row() {
      if(this.isComplete) {
        this.labelIcon($r('app.media.ic_public_todo_filled'))
      } else {
        this.labelIcon($r('app.media.ic_screenshot_circle'))
      }
      Text(this.content)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .opacity(this.isComplete ? 0.4 : 1)
        .decoration({
          type: this.isComplete
          ? TextDecorationType.LineThrough : TextDecorationType.None
        })
    }
    .borderRadius(24)
    .backgroundColor(Color.White)
    .height(64)
    .width('90%')
    .onClick(() => {
      this.isComplete = !this.isComplete
    })
  }
}
