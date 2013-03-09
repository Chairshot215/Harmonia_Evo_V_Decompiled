.class Lcom/android/camera/component/HwCameraSwitchButton$1;
.super Ljava/lang/Object;
.source "HwCameraSwitchButton.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HwCameraSwitchButton;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HwCameraSwitchButton;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HwCameraSwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HwCameraSwitchButton$1;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButton$1;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    #getter for: Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    invoke-static {v0}, Lcom/android/camera/component/HwCameraSwitchButton;->access$000(Lcom/android/camera/component/HwCameraSwitchButton;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButton$1;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    iget-object v1, p0, Lcom/android/camera/component/HwCameraSwitchButton$1;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    invoke-virtual {v1}, Lcom/android/camera/component/HwCameraSwitchButton;->getButtonState()I

    move-result v1

    #setter for: Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    invoke-static {v0, v1}, Lcom/android/camera/component/HwCameraSwitchButton;->access$002(Lcom/android/camera/component/HwCameraSwitchButton;I)I

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButton$1;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    #calls: Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V
    invoke-static {v0}, Lcom/android/camera/component/HwCameraSwitchButton;->access$100(Lcom/android/camera/component/HwCameraSwitchButton;)V

    :cond_0
    return-void
.end method
