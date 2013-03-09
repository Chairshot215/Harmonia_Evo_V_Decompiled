.class Lcom/android/camera/component/AutoSceneUI$7;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$1000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/CameraThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$1000(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$1100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    const/4 v2, 0x1

    #setter for: Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/AutoSceneUI;->access$702(Lcom/android/camera/component/AutoSceneUI;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->resetLayoutPosition()V
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$1200(Lcom/android/camera/component/AutoSceneUI;)V

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->checkCanShow()V
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$900(Lcom/android/camera/component/AutoSceneUI;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/component/AutoSceneUI;->access$1100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_video_scene"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/component/AutoSceneUI$7;->this$0:Lcom/android/camera/component/AutoSceneUI;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/AutoSceneUI;->m_IsAutoSceneMode:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/AutoSceneUI;->access$702(Lcom/android/camera/component/AutoSceneUI;Z)Z

    goto :goto_1
.end method
