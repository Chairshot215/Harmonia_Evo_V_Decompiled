.class public Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;
.super Lcom/htc/dmc/utils/MemoryCacheBitmap;
.source "MemoryCacheBitmapByPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/dmc/utils/MemoryCacheBitmap",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCacheBitmapByPosition]"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/htc/dmc/utils/MemoryCacheBitmap;-><init>(I)V

    .line 15
    iput v0, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    .line 19
    iput v0, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    .line 20
    return-void
.end method


# virtual methods
.method public push(ILandroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/htc/dmc/utils/MemoryCacheBitmap;->push(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected removeTheLowestPriorityItem(Ljava/lang/Integer;)Z
    .locals 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/dmc/utils/OutOfCapacityException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 34
    iget-object v10, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v8

    .line 35
    :cond_1
    if-nez p1, :cond_2

    move v8, v9

    goto :goto_0

    .line 37
    :cond_2
    iget-object v10, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 38
    .local v5, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 39
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 40
    .local v7, lowestPriorityKey:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 41
    .local v1, compareKey:Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 42
    .local v6, lowestDisparity:I
    const/4 v0, 0x0

    .line 43
    .local v0, compareDisparity:I
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #lowestPriorityKey:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 45
    .restart local v7       #lowestPriorityKey:Ljava/lang/Integer;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #compareKey:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 47
    .restart local v1       #compareKey:Ljava/lang/Integer;
    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 50
    if-le v0, v6, :cond_3

    .line 51
    move-object v7, v1

    goto :goto_1

    .line 58
    :cond_4
    if-nez v7, :cond_5

    move v8, v9

    goto :goto_0

    .line 59
    :cond_5
    const/4 v4, 0x0

    .line 60
    .local v4, keyDisparity:I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 61
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 62
    if-le v4, v6, :cond_6

    move v8, v9

    .line 63
    goto :goto_0

    .line 66
    :cond_6
    iget-object v9, p0, Lcom/htc/dmc/utils/MemoryCacheBase;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 67
    .local v3, item:Landroid/graphics/Bitmap;
    const-string v9, "[MemoryCacheBitmapByPosition]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "release item: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p0, v3}, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->releaseItemResource(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/dmc/utils/OutOfCapacityException;
        }
    .end annotation

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->removeTheLowestPriorityItem(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 23
    if-gez p1, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 26
    :cond_0
    iput p1, p0, Lcom/htc/dmc/utils/MemoryCacheBitmapByPosition;->mPosition:I

    .line 27
    return-void
.end method
