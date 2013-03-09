.class Lcom/android/camera/HTCCamera$8;
.super Landroid/view/OrientationEventListener;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v2, "Unknown orientation !!!"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->mLastOrientation:I
    invoke-static {v1, p1}, Lcom/android/camera/HTCCamera;->access$8902(Lcom/android/camera/HTCCamera;I)I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-eq v1, v5, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "DeviceOrientation.Changed"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->hasHandlers(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v1

    new-instance v2, Lcom/android/camera/OneValueEvent;

    const-string v3, "DeviceOrientation.Changed"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_3
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$11200(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #setter for: Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z
    invoke-static {v1, v5}, Lcom/android/camera/HTCCamera;->access$11202(Lcom/android/camera/HTCCamera;Z)Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x50

    const v3, 0x7f0a0048

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z
    invoke-static {v1, v2}, Lcom/android/camera/HTCCamera;->access$11202(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mFreezeUI:Z
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$8800(Lcom/android/camera/HTCCamera;)Z

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera$8;->this$0:Lcom/android/camera/HTCCamera;

    #calls: Lcom/android/camera/HTCCamera;->onRotateChanged(I)V
    invoke-static {v1, v0}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;I)V

    goto/16 :goto_0
.end method
