.class Lcom/android/camera/component/PanoramaUI$12;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_IsModeEntered:Z
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$000(Lcom/android/camera/component/PanoramaUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    #setter for: Lcom/android/camera/component/PanoramaUI;->m_IsResolutionSyncBackNeeded:Z
    invoke-static {v1, v2}, Lcom/android/camera/component/PanoramaUI;->access$1802(Lcom/android/camera/component/PanoramaUI;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/component/PanoramaResolutionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    #getter for: Lcom/android/camera/component/PanoramaUI;->m_ResolutionHandler:Lcom/android/camera/component/PanoramaResolutionHandler;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaUI;->access$1900(Lcom/android/camera/component/PanoramaUI;)Lcom/android/camera/component/PanoramaResolutionHandler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$12;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/component/PanoramaResolutionHandler;->syncFromCurrentResolution(Lcom/android/camera/HTCCamera;Lcom/android/camera/Resolution;)V

    goto :goto_0
.end method
