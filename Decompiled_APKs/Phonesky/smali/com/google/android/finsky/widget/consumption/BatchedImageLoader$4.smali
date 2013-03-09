.class Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;
.super Ljava/lang/Object;
.source "BatchedImageLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFromProvider(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

.field final synthetic val$wrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;->val$wrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    iget-object v1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$4;->val$wrapper:Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;

    #calls: Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFileFromUri(Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)[B
    invoke-static {v0, v1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->access$300(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)[B

    move-result-object v0

    return-object v0
.end method
