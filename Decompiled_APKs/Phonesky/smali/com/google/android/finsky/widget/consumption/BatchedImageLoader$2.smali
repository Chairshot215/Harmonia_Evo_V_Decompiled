.class Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;
.super Ljava/lang/Object;
.source "BatchedImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->handleBatchedRequest(Lcom/google/android/finsky/widget/consumption/ImageBatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

.field final synthetic val$callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

.field final synthetic val$output:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->val$callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

    iput-object p3, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->val$output:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->val$callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->val$callback:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->val$output:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;->onLoaded(Ljava/util/Map;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$2;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    #getter for: Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->mWaitLock:Ljava/util/concurrent/Semaphore;
    invoke-static {v0}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->access$200(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 153
    return-void
.end method
