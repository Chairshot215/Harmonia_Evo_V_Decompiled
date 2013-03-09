.class Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;
.super Ljava/lang/Thread;
.source "BatchedImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;-><init>(Landroid/content/Context;Lcom/android/volley/Cache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$1;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    #getter for: Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->access$000(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/widget/consumption/ImageBatch;

    #calls: Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->handleBatchedRequest(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
    invoke-static {v2, v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->access$100(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Interrupted while trying to load images!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
