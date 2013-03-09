.class Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;
.super Ljava/lang/Object;
.source "BatchedImageLoader.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;->loadFromBitmapLoader(Ljava/util/Map;Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

.field final synthetic val$bitmap:[Landroid/graphics/Bitmap;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;[Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->this$0:Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->val$bitmap:[Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->val$bitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 246
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 241
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$3;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
