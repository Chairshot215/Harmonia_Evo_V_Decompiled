.class public Lcom/htc/opensense/album/util/ImageManager$Image;
.super Lcom/htc/opensense/album/util/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Image"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field mRotation:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;II)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "rotation"

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 2578
    invoke-direct/range {p0 .. p8}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    .line 2579
    iput p9, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

    .line 2580
    return-void
.end method

.method private setExifRotation(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    .line 2885
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2886
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2919
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 2888
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2889
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mContainer:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->indexData()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2890
    .local v2, filePath:Ljava/lang/String;
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2891
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2892
    :try_start_3
    invoke-static {v2}, Lcom/htc/opensense/album/util/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 2893
    if-gez p1, :cond_1

    .line 2894
    add-int/lit16 p1, p1, 0x168

    .line 2896
    :cond_1
    const/4 v3, 0x1

    .line 2897
    .local v3, orientation:I
    sparse-switch p1, :sswitch_data_0

    .line 2912
    :goto_1
    const-string v4, "Orientation"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveRotatedImage comment orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/ExifUtil;->modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2915
    monitor-exit v5

    goto :goto_0

    .end local v3           #orientation:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2916
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2917
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to save exif data with new orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2890
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2899
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v3       #orientation:I
    :sswitch_0
    const/4 v3, 0x1

    .line 2900
    goto :goto_1

    .line 2902
    :sswitch_1
    const/4 v3, 0x6

    .line 2903
    goto :goto_1

    .line 2905
    :sswitch_2
    const/4 v3, 0x3

    .line 2906
    goto :goto_1

    .line 2908
    :sswitch_3
    const/16 v3, 0x8

    goto :goto_1

    .line 2897
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2657
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2661
    :cond_1
    return-void
.end method

.method public bridge synthetic commitChanges()V
    .locals 0

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->commitChanges()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2636
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2637
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2644
    :goto_0
    return-object v1

    .line 2639
    :cond_0
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2640
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2641
    :cond_1
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2642
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2644
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method computeFitSize([III)V
    .locals 6
    .parameter "nResult"
    .parameter "nTargetWidth"
    .parameter "nTargetHeight"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2951
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p1, v4

    if-eqz v2, :cond_0

    aget v2, p1, v5

    if-nez v2, :cond_1

    .line 2952
    :cond_0
    const-string v2, "ImageManager"

    const-string v3, "Invalid Arg"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    :goto_0
    return-void

    .line 2956
    :cond_1
    int-to-float v2, p2

    aget v3, p1, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2957
    .local v0, rateX:F
    int-to-float v2, p3

    aget v3, p1, v5

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2958
    .local v1, rateY:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 2959
    aput p2, p1, v4

    .line 2960
    aget v2, p1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    aput v2, p1, v5

    goto :goto_0

    .line 2962
    :cond_2
    aget v2, p1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    aput v2, p1, v4

    .line 2963
    aput p3, p1, v5

    goto :goto_0
.end method

.method computeSampleSize2([II)V
    .locals 5
    .parameter "nResult"
    .parameter "nTargetWidthHeight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2968
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2971
    .local v0, Options:Landroid/graphics/BitmapFactory$Options;
    aget v2, p1, v4

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2972
    aget v2, p1, v3

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2973
    invoke-static {v0, p2}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v1

    .line 2974
    .local v1, nRate:I
    if-ge v1, v3, :cond_0

    .line 2975
    const/4 v1, 0x0

    .line 2976
    :cond_0
    aget v2, p1, v4

    div-int/2addr v2, v1

    aput v2, p1, v4

    .line 2977
    aget v2, p1, v3

    div-int/2addr v2, v1

    aput v2, p1, v3

    .line 2978
    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 2564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    .line 2565
    return-void
.end method

.method public bridge synthetic fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fullSizeImageId()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2583
    const/4 v2, 0x0

    .line 2584
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2585
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 2593
    :goto_0
    return-object v3

    .line 2586
    :cond_0
    monitor-enter v0

    .line 2587
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2588
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->indexData()I

    move-result v1

    .line 2589
    .local v1, column:I
    if-ltz v1, :cond_1

    .line 2590
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2592
    .end local v1           #column:I
    :cond_1
    monitor-exit v0

    move-object v3, v2

    .line 2593
    goto :goto_0

    .line 2592
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic getDateAdded()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateAdded()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDateModified()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDateTaken()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDateTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 2613
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

    return v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .locals 2
    .parameter "tag"

    .prologue
    .line 2669
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2671
    .local v0, tagValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2672
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2675
    .end local v0           #tagValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIsPrivate()Z
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getIsPrivate()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLatitude()D
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLongitude()D
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getPicasaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRow()I
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getRow()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSize()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSortBase()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getSortBase()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasLatLong()Z
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->hasLatLong()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic imageId()J
    .locals 2

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->imageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 2573
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 2688
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic isFavorite()Z
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isGif()Z
    .locals 3

    .prologue
    .line 2697
    const/4 v0, 0x0

    .line 2698
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 2700
    .local v1, mimeType:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2703
    const/4 v0, 0x1

    .line 2705
    :cond_0
    return v0
.end method

.method public isReadonly()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2680
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 2681
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2684
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "image/jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/png"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 2556
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 2692
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onRemove()V
    .locals 0

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->onRemove()V

    return-void
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 2716
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 2728
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2729
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2731
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    return-void
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 2568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->bCorrupt:Z

    .line 2569
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2
    .parameter "degrees"

    .prologue
    .line 2927
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v1

    add-int v0, v1, p1

    .line 2928
    .local v0, newDegrees:I
    const/16 v1, 0x168

    if-eq v0, v1, :cond_0

    const/16 v1, -0x168

    if-ne v0, v1, :cond_1

    .line 2929
    :cond_0
    const/4 v0, 0x0

    .line 2932
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$Image;->setDegreesRotated(I)V

    .line 2941
    const/4 v1, 0x1

    return v1
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
    .locals 1
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 2880
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$Image$1SaveImageContentsCancelable;

    invoke-direct {v0, p0, p1, p2, p5}, Lcom/htc/opensense/album/util/ImageManager$Image$1SaveImageContentsCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;)V

    return-object v0
.end method

.method protected setDegreesRotated(I)V
    .locals 7
    .parameter "degrees"

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2618
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2632
    :goto_0
    return-void

    .line 2619
    :cond_0
    iput p1, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mRotation:I

    .line 2620
    monitor-enter v0

    .line 2621
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2622
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->indexOrientation()I

    move-result v1

    .line 2623
    .local v1, column:I
    if-ltz v1, :cond_1

    .line 2625
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2626
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "orientation"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2627
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2628
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->commitChanges()V

    .line 2631
    .end local v1           #column:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method protected setDimension()V
    .locals 6

    .prologue
    .line 2598
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 2599
    .local v2, path:Ljava/lang/String;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2600
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2601
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2603
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mWidth:I

    .line 2604
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/htc/opensense/album/util/ImageManager$Image;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 2606
    :catch_0
    move-exception v0

    .line 2607
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setDimension] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setDimension()V

    goto :goto_0
.end method

.method public bridge synthetic setIsPrivate(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setIsPrivate(Z)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2547
    invoke-super {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->setPicasaId(Ljava/lang/String;)V

    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 2981
    const/4 v0, 0x0

    .line 2983
    .local v0, btBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3047
    .local v3, t1:J
    if-nez v0, :cond_0

    .line 3048
    const/16 v5, 0x140

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/album/util/ImageManager$Image;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3062
    :cond_0
    if-eqz v0, :cond_1

    .line 3063
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$Image;->getDegreesRotated()I

    move-result v5

    invoke-static {v0, v5}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3066
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3069
    .local v1, elapsed:J
    return-object v0
.end method

.method public bridge synthetic thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->thumbUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2547
    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
