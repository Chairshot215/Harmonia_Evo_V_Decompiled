.class public interface abstract Lcom/google/android/finsky/widget/consumption/BatchedImageLoader$BatchedImageCallback;
.super Ljava/lang/Object;
.source "BatchedImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/BatchedImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchedImageCallback"
.end annotation


# virtual methods
.method public abstract onLoaded(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ImageBatch$ImageSpec;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
