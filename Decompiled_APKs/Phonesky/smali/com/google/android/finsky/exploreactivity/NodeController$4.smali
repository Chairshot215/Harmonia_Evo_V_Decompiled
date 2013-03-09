.class Lcom/google/android/finsky/exploreactivity/NodeController$4;
.super Ljava/lang/Object;
.source "NodeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/exploreactivity/NodeController;->processOnscreenNodes([Lcom/jme3/math/Vector2f;F)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/NodeController;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/exploreactivity/NodeController;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 425
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 426
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/exploreactivity/DocWrapper;

    .line 428
    .local v1, wrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$500(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 429
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mMusicPreviewManager:Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$600(Lcom/google/android/finsky/exploreactivity/NodeController;)Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/exploreactivity/MusicPreviewManager;->cancel(Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    .line 430
    invoke-virtual {v1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->clearInProgress()V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    .end local v1           #wrapper:Lcom/google/android/finsky/exploreactivity/DocWrapper;
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/NodeController$4;->this$0:Lcom/google/android/finsky/exploreactivity/NodeController;

    #getter for: Lcom/google/android/finsky/exploreactivity/NodeController;->mRequestsToCancel:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/finsky/exploreactivity/NodeController;->access$400(Lcom/google/android/finsky/exploreactivity/NodeController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 433
    monitor-exit v3

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
