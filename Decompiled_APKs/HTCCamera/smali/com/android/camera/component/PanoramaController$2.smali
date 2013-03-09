.class Lcom/android/camera/component/PanoramaController$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_IsEntered:Z
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$200(Lcom/android/camera/component/PanoramaController;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Delete media by PanoramaController"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "No UI to delete content"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_PanoramaUI:Lcom/android/camera/component/PanoramaUI;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$600(Lcom/android/camera/component/PanoramaController;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/component/PanoramaController$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/component/PanoramaController$2$1;-><init>(Lcom/android/camera/component/PanoramaController$2;Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->access$900()Lcom/android/camera/DCFInfo;

    move-result-object v3

    :goto_1
    invoke-static {v0, v3}, Lcom/android/camera/DCFRuler;->backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/component/PanoramaController;->m_LatestContentUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/camera/component/PanoramaController;->access$602(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_2
    check-cast p1, Lcom/android/camera/DeletionRequestEvent;

    invoke-virtual {p1}, Lcom/android/camera/DeletionRequestEvent;->setDeleted()V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    goto :goto_1
.end method
