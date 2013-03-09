.class public Lcom/htc/music/util/MemoryCache3DBitmapByPosition;
.super Lcom/htc/music/util/MemoryCache3DBitmap;
.source "MemoryCache3DBitmapByPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/music/util/MemoryCache3DBitmap",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MemoryCache3DBitmapByPosition]"


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmap;-><init>(I)V

    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    iput v0, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    return-void
.end method


# virtual methods
.method protected removeTheLowestPriorityItem(Ljava/lang/Integer;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    if-nez p1, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v6, :cond_3

    move-object v7, v2

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    move v8, v9

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v6, :cond_6

    move v8, v9

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/SBitmap;

    const-string v9, "[MemoryCache3DBitmapByPosition]"

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

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->releaseItemResource(Lcom/htc/sunny2/SBitmap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic removeTheLowestPriorityItem(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/music/util/OutOfCapacityException;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->removeTheLowestPriorityItem(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public setPosition(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/htc/music/util/MemoryCache3DBitmapByPosition;->mPosition:I

    return-void
.end method
