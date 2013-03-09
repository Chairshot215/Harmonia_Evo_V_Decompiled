.class Lcom/android/camera/component/ThumbnailController$2;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$2;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    invoke-virtual {v0}, Lcom/android/camera/MediaDeletionCompletedEvent;->isLastMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$2;->this$0:Lcom/android/camera/component/ThumbnailController;

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z
    invoke-static {v1, v3}, Lcom/android/camera/component/ThumbnailController;->access$202(Lcom/android/camera/component/ThumbnailController;Z)Z

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController$2;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    :cond_0
    return-void
.end method
