.class public Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
.super Ljava/lang/Object;
.source "CacheBitmapDrawingRecord.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawingRecord"


# instance fields
.field final mGroupId:I

.field private mIndex:J

.field final mSnapShot:Lcom/htc/painting/engine/ViewPortSnapShot;


# direct methods
.method public constructor <init>(ILcom/htc/painting/engine/ViewPort;JJ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mGroupId:I

    iput-wide p3, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mIndex:J

    new-instance v0, Lcom/htc/painting/engine/ViewPortSnapShot;

    invoke-direct {v0, p1, p2, p5, p6}, Lcom/htc/painting/engine/ViewPortSnapShot;-><init>(ILcom/htc/painting/engine/ViewPort;J)V

    iput-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mSnapShot:Lcom/htc/painting/engine/ViewPortSnapShot;

    return-void
.end method

.method public static extractSnapShots(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public static findDrawingRecordOfTheSameGroup(Ljava/util/Collection;Ljava/util/Collection;)[Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;",
            ">;)[",
            "Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getId()I

    move-result v5

    invoke-virtual {v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getId()I

    move-result v6

    if-ne v5, v6, :cond_4

    const-string v5, "DrawingRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found matching record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/painting/engine/ViewPortSnapShot;->getDirectMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/painting/util/PaintingLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_4

    const/4 v5, 0x2

    new-array v4, v5, [Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mSnapShot:Lcom/htc/painting/engine/ViewPortSnapShot;

    invoke-virtual {v0}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getInd()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mIndex:J

    return-wide v0
.end method

.method public getSnapShot()Lcom/htc/painting/engine/ViewPortSnapShot;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mSnapShot:Lcom/htc/painting/engine/ViewPortSnapShot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " snaoshot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mSnapShot:Lcom/htc/painting/engine/ViewPortSnapShot;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateIndex(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/painting/engine/cachebitmap/CacheBitmapDrawingRecord;->mIndex:J

    return-void
.end method
