.class Lcom/android/camera/component/BurstUI$4;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z
    invoke-static {v1}, Lcom/android/camera/component/BurstUI;->access$100(Lcom/android/camera/component/BurstUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #setter for: Lcom/android/camera/component/BurstUI;->m_IsResolutionSyncBackNeeded:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/BurstUI;->access$402(Lcom/android/camera/component/BurstUI;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;
    invoke-static {v1}, Lcom/android/camera/component/BurstUI;->access$500(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/component/BurstResolutionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_ResolutionHandler:Lcom/android/camera/component/BurstResolutionHandler;
    invoke-static {v1}, Lcom/android/camera/component/BurstUI;->access$500(Lcom/android/camera/component/BurstUI;)Lcom/android/camera/component/BurstResolutionHandler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/component/BurstUI$4;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/component/BurstResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    goto :goto_0
.end method
