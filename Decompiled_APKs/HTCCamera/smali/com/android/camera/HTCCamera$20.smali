.class Lcom/android/camera/HTCCamera$20;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnded()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "Panel is moving, end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollStarted()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "Panel is moving, start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Menu.Opening"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mIsSelfTimerStarted:Z
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->closeSelfTimer()V
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    iget v0, v0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-ne v0, v3, :cond_6

    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v0, "HTCCamera"

    const-string v1, "UnBlock Capture UI - onPanelMove and cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mFaces:[Landroid/hardware/Camera$Face;
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$4302(Lcom/android/camera/HTCCamera;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera$20;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :goto_0
    return-void

    :cond_6
    const-string v0, "HTCCamera"

    const-string v1, "onPanelMove when focusing, but device can\'t cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
