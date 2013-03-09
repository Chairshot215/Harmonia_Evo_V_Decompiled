.class final Lcom/htc/graphics/drawable/CacheUrlDrawable$2;
.super Ljava/lang/ref/ReferenceQueue;
.source "CacheUrlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/graphics/drawable/CacheUrlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public remove()Ljava/lang/ref/Reference;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/Reference",
            "<+",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .line 303
    .local v1, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 304
    const-string v2, "UrlDrawable"

    const-string v3, "remove and recycle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    :cond_0
    return-object v1
.end method

.method public declared-synchronized remove(J)Ljava/lang/ref/Reference;
    .locals 4
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/ref/Reference",
            "<+",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v1

    .line 314
    .local v1, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 315
    const-string v2, "UrlDrawable"

    const-string v3, "remove and recycle when timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    monitor-exit p0

    return-object v1

    .line 312
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
