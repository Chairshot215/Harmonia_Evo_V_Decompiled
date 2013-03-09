.class Lcom/android/camera/component/HwCameraSwitchButton$4;
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

    iput-object p1, p0, Lcom/android/camera/component/HwCameraSwitchButton$4;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButton$4;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/HwCameraSwitchButton;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButton$4;->this$0:Lcom/android/camera/component/HwCameraSwitchButton;

    #calls: Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V
    invoke-static {v0}, Lcom/android/camera/component/HwCameraSwitchButton;->access$100(Lcom/android/camera/component/HwCameraSwitchButton;)V

    return-void
.end method
