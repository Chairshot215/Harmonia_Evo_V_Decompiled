.class Lcom/google/android/talk/PictureCache$PictureData;
.super Ljava/lang/Object;
.source "PictureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PictureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PictureData"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mHash:Ljava/lang/String;

.field private mIsSource:Z

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-object p1, p0, Lcom/google/android/talk/PictureCache$PictureData;->mHash:Ljava/lang/String;

    .line 543
    return-void
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    monitor-enter p0

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mDescription:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    monitor-exit p0

    return-object v0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    monitor-enter p0

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mHash:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mTitle:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getType()I
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mType:I

    monitor-exit p0

    return v0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSourceBitmap()Z
    .locals 1

    .prologue
    .line 612
    monitor-enter p0

    .line 613
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/PictureCache$PictureData;->mIsSource:Z

    monitor-exit p0

    return v0

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 582
    monitor-enter p0

    .line 583
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/PictureCache$PictureData;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 584
    monitor-exit p0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setIsSourceBitmap(Z)V
    .locals 1
    .parameter "isSource"

    .prologue
    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/talk/PictureCache$PictureData;->mIsSource:Z

    .line 620
    monitor-exit p0

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/PictureCache$PictureData;->mTitle:Ljava/lang/String;

    .line 596
    monitor-exit p0

    .line 597
    return-void

    .line 596
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iput p1, p0, Lcom/google/android/talk/PictureCache$PictureData;->mType:I

    .line 572
    monitor-exit p0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[PictureData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, "drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, "hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    const-string v1, "desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 629
    const-string v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    const-string v1, "isSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/talk/PictureCache$PictureData;->mIsSource:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
