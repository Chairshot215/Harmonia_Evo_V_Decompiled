.class Lcom/android/camera/HTCCamera$24;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget v3, v3, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v3

    if-ne v3, v1, :cond_1

    const-string v3, "HTCCamera"

    const-string v4, "press effect button when focusing, cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()Z

    const-string v3, "HTCCamera"

    const-string v4, "UnBlock Capture UI - press effect button and cancel focus"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1200()Z

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    return-void

    :cond_1
    const-string v1, "HTCCamera"

    const-string v2, "press effect button when focusing, but device can\'t cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1202(Z)Z

    const-string v3, "HTCCamera"

    const-string v4, "Block Capture UI - restartCamera()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z
    invoke-static {v3, v1}, Lcom/android/camera/HTCCamera;->access$8302(Lcom/android/camera/HTCCamera;Z)Z

    const-string v3, "HTCCamera"

    const-string v4, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_switch"

    invoke-static {v3, v4, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v4, "true"

    invoke-static {v3, v2, v1, v2, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
