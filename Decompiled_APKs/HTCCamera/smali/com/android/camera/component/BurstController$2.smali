.class Lcom/android/camera/component/BurstController$2;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    iget-object v5, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$300(Lcom/android/camera/component/BurstController;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Deleting latest media by BurstController"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$500(Lcom/android/camera/component/BurstController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    if-lez v3, :cond_1

    new-array v1, v3, [Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$500(Lcom/android/camera/component/BurstController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/camera/component/BurstController$2$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/camera/component/BurstController$2$1;-><init>(Lcom/android/camera/component/BurstController$2;Lcom/android/camera/HTCCamera;[Landroid/net/Uri;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v2, v3

    :goto_0
    if-lez v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/component/BurstController;->access$800()Lcom/android/camera/DCFInfo;

    move-result-object v5

    :goto_1
    invoke-static {v0, v5}, Lcom/android/camera/DCFRuler;->backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/camera/DeletionRequestEvent;

    invoke-virtual {p1}, Lcom/android/camera/DeletionRequestEvent;->setDeleted()V

    :cond_2
    return-void
.end method
