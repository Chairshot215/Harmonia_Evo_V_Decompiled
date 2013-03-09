.class public Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
.super Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImage"
.end annotation


# instance fields
.field private mDataPath:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6585
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;-><init>()V

    .line 6581
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 6582
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 6586
    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "is"

    .prologue
    const/4 v4, 0x0

    .line 7000
    if-nez p1, :cond_1

    .line 7017
    :cond_0
    :goto_0
    return-object v4

    .line 7002
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7005
    .local v3, fs:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    .line 7007
    .local v1, data:[B
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, count:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 7008
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7011
    .end local v0           #count:I
    .end local v1           #data:[B
    :catch_0
    move-exception v2

    .line 7012
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7014
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_0

    .line 7017
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 7010
    .restart local v0       #count:I
    .restart local v1       #data:[B
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getRotateDegree()I
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6952
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6953
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 6954
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "orientation"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6958
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 6959
    .local v11, rotateDegree:I
    if-eqz v6, :cond_0

    .line 6960
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6961
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 6962
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6996
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #id:Ljava/lang/String;
    .end local v11           #rotateDegree:I
    :cond_0
    :goto_0
    return v11

    .line 6967
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6969
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    .line 6970
    .local v10, path:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 6971
    const/4 v11, 0x0

    .line 6973
    .restart local v11       #rotateDegree:I
    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 6974
    .local v8, exifInfo:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6985
    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    .line 6976
    :pswitch_1
    const/16 v11, 0x5a

    .line 6977
    goto :goto_0

    .line 6979
    :pswitch_2
    const/16 v11, 0xb4

    .line 6980
    goto :goto_0

    .line 6982
    :pswitch_3
    const/16 v11, 0x10e

    .line 6983
    goto :goto_0

    .line 6989
    .end local v8           #exifInfo:Landroid/media/ExifInterface;
    :catch_0
    move-exception v7

    .line 6990
    .local v7, e:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_0

    .line 6974
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 25
    .parameter "options"
    .parameter "target"

    .prologue
    .line 6897
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 6898
    .local v20, w:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6900
    .local v11, h:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 6901
    .local v4, candidateW:I
    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 6903
    .local v3, candidateH:I
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidateW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " candidateH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6905
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6907
    .local v2, candidate:I
    if-nez v2, :cond_0

    .line 6908
    const/16 v21, 0x1

    .line 6948
    :goto_0
    return v21

    .line 6910
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_1

    .line 6911
    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    div-int v21, v20, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 6912
    add-int/lit8 v2, v2, -0x1

    .line 6915
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    .line 6916
    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v21, v11, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 6917
    add-int/lit8 v2, v2, -0x1

    .line 6927
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    .line 6928
    .local v17, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v21

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->getExternalBytesAllocated()J

    move-result-wide v23

    add-long v9, v21, v23

    .line 6929
    .local v9, currentHeap:J
    const-wide/32 v14, 0x1000000

    .line 6930
    .local v14, maxSize:J
    sub-long v12, v14, v9

    .line 6931
    .local v12, leftMemory:J
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "current Heap "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " left memory "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6932
    const-wide/16 v18, 0x0

    .line 6934
    .local v18, totalPixels:J
    const/16 v16, 0x3

    .line 6936
    .local v16, resampleTryCount:I
    add-int/lit8 v2, v2, -0x1

    .line 6938
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 6939
    div-int v21, v20, v2

    move/from16 v0, v21

    int-to-long v7, v0

    .line 6940
    .local v7, curW:J
    div-int v21, v11, v2

    move/from16 v0, v21

    int-to-long v5, v0

    .line 6941
    .local v5, curH:J
    mul-long v21, v7, v5

    const-wide/16 v23, 0x2

    mul-long v18, v21, v23

    .line 6942
    const-string v21, "ImageManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "candidate "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " curW "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", curH "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6943
    cmp-long v21, v18, v12

    if-lez v21, :cond_4

    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_3

    :cond_4
    move/from16 v21, v2

    .line 6948
    goto/16 :goto_0
.end method

.method private setupProperties()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 7373
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7375
    const-string v0, " "

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7376
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7418
    :cond_0
    :goto_0
    return-void

    .line 7380
    :cond_1
    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7382
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7383
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7385
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7386
    const-string v0, "image/jps"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7408
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 7410
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v7

    .line 7411
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v7, :cond_7

    iget-object v0, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7414
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageSourceType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 7416
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0

    .line 7387
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7388
    const-string v0, "image/mpo"

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_1

    .line 7391
    :cond_5
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7393
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mime_type"

    aput-object v4, v2, v8

    const-string v4, "_data"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7397
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 7399
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7401
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7402
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 7404
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 7411
    .end local v6           #cur:Landroid/database/Cursor;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const-string v0, ""

    goto :goto_2
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 7308
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 7309
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 7323
    :cond_0
    :goto_0
    return-object v2

    .line 7312
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7313
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7314
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7318
    if-eqz v1, :cond_0

    .line 7319
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7321
    :catch_0
    move-exception v0

    .line 7322
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 7317
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    .line 7318
    if-eqz v1, :cond_2

    .line 7319
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7323
    :cond_2
    :goto_1
    throw v3

    .line 7321
    :catch_1
    move-exception v0

    .line 7322
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "targetWidthHeight"

    .prologue
    .line 6668
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 6669
    const/4 v6, 0x0

    .line 6670
    .local v6, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v10

    .line 6671
    .local v10, state:I
    if-nez v10, :cond_0

    .line 6672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 6674
    :cond_0
    if-nez v6, :cond_1

    .line 6675
    const/4 v3, 0x0

    .line 6771
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :goto_0
    return-object v3

    .line 6676
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v10       #state:I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 6677
    .local v2, bitmapData:[B
    if-nez v2, :cond_2

    .line 6678
    const/4 v3, 0x0

    goto :goto_0

    .line 6681
    :cond_2
    const/4 v3, 0x0

    .line 6683
    .local v3, bmp:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_3

    .line 6684
    const/4 v12, 0x0

    :try_start_0
    array-length v13, v2

    const/4 v14, 0x0

    invoke-static {v2, v12, v13, v14}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeStreamBySkia([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 6692
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6693
    :catch_0
    move-exception v4

    .line 6694
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6686
    .end local v4           #e:Ljava/io/IOException;
    :cond_3
    const/4 v12, 0x0

    :try_start_2
    array-length v13, v2

    invoke-static {v2, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 6688
    :catch_1
    move-exception v5

    .line 6689
    .local v5, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v12, "ImageManager"

    const-string v13, "decrpty input stream error"

    invoke-static {v12, v13, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6692
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 6693
    :catch_2
    move-exception v4

    .line 6694
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6691
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 6692
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 6695
    :goto_2
    throw v12

    .line 6693
    :catch_3
    move-exception v4

    .line 6694
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 6701
    .end local v2           #bitmapData:[B
    .end local v3           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v10           #state:I
    :cond_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 6702
    .local v8, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v8, :cond_8

    .line 6704
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6710
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6711
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6712
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6714
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image, file resolution "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6715
    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    .line 6716
    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/htc/opensense2/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6718
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    .line 6719
    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6722
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6723
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6728
    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6729
    const/4 v1, 0x0

    .line 6741
    .local v1, b:Landroid/graphics/Bitmap;
    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_9

    .line 6742
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/htc/opensense2/album/util/BitmapUtil2;->DecodeFDBySkia(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6747
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v9

    .line 6752
    .local v9, rotateDegree:I
    if-gez v9, :cond_6

    .line 6753
    add-int/lit16 v9, v9, 0x168

    .line 6755
    :cond_6
    if-eqz v9, :cond_7

    .line 6757
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v11, v12, 0x4

    .line 6758
    .local v11, totalMemory:I
    const/high16 v12, 0x70

    if-lt v11, v12, :cond_a

    .line 6759
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the bitmap heap will increase "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " after load bitmap"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6760
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6766
    .end local v11           #totalMemory:I
    :cond_7
    :goto_4
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "B: got bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " with sampleSize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    .line 6768
    goto/16 :goto_0

    .line 6707
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #rotateDegree:I
    :cond_8
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " data available "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6708
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 6744
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    .line 6762
    .restart local v9       #rotateDegree:I
    .restart local v11       #totalMemory:I
    :cond_a
    invoke-static {v1, v9}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v1

    goto :goto_4

    .line 6769
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v9           #rotateDegree:I
    .end local v11           #totalMemory:I
    :catch_4
    move-exception v5

    .line 6770
    .restart local v5       #ex:Ljava/lang/Exception;
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got exception decoding bitmap "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6771
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 7
    .parameter "targetWidthOrHeight"

    .prologue
    const/4 v2, 0x0

    .line 7061
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 7062
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 7069
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v2

    .line 7065
    .restart local v1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputStream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " available data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7066
    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 7067
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 7068
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 7165
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 7135
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1800(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1900(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7137
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 7138
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 7159
    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 7140
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    monitor-enter v0

    .line 7145
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 7152
    .local v2, moved:Z
    if-eqz v2, :cond_1

    .line 7153
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    iget v4, v4, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    goto :goto_0

    .line 7154
    .end local v2           #moved:Z
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 7147
    :catch_0
    move-exception v1

    .line 7149
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7150
    monitor-exit v0

    goto :goto_0

    .line 7154
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #moved:Z
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 7159
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #moved:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7435
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6598
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6599
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 6603
    :goto_0
    return-object v0

    .line 6601
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 6603
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 7443
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 7439
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 7449
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7284
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 7477
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 7471
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 2

    .prologue
    .line 7455
    const-string v0, "media"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7458
    :cond_0
    const/4 v0, 0x0

    .line 7465
    :goto_0
    return v0

    .line 7460
    :cond_1
    const-string v0, "http"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7462
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 7465
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v1, -0x1

    .line 7245
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7247
    const-string v8, " "

    .line 7279
    :cond_0
    :goto_0
    return-object v8

    .line 7250
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7251
    .local v13, uriPath:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 7252
    .local v6, authority:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 7253
    .local v11, scheme:Ljava/lang/String;
    const-string v8, " "

    .line 7255
    .local v8, displayName:Ljava/lang/String;
    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7257
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 7258
    .local v10, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_display_name"

    aput-object v3, v2, v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 7262
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 7264
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7265
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7266
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7269
    .end local v7           #c:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    const-string v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7271
    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 7272
    .local v12, start:I
    const/16 v0, 0x2e

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 7273
    .local v9, end:I
    if-eq v1, v12, :cond_0

    if-eq v1, v9, :cond_0

    if-le v9, v12, :cond_0

    .line 7275
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 7422
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 7423
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 6613
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6614
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 6617
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 6623
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 6619
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 6621
    :catch_0
    move-exception v0

    .line 6622
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 6623
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7363
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7364
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7368
    :goto_0
    return-object v0

    .line 7366
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setupProperties()V

    .line 7368
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 6645
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 6646
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6647
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 6648
    .local v1, path:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 6657
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #scheme:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 6647
    .restart local v2       #scheme:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6650
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 6652
    .end local v2           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 6653
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 6655
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6656
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSize()J
    .locals 10

    .prologue
    .line 7107
    const/4 v6, 0x0

    .line 7108
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 7110
    .local v8, size:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7115
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7116
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 7125
    :goto_0
    if-eqz v6, :cond_0

    .line 7126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7129
    :cond_0
    :goto_1
    return-wide v8

    .line 7118
    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_0

    .line 7120
    :catch_0
    move-exception v7

    .line 7121
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7122
    const-wide/16 v8, -0x1

    .line 7125
    if-eqz v6, :cond_0

    .line 7126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 7125
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 7126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 7221
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7222
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 7223
    .local v7, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "title"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7227
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7228
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7229
    .local v8, title:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7238
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 7232
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #id:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 7233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7234
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 7238
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 7428
    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 7429
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public heapBasedfullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "targetWidthHeight"

    .prologue
    .line 6783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 6784
    const/4 v7, 0x0

    .line 6785
    .local v7, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v11

    .line 6786
    .local v11, state:I
    if-nez v11, :cond_0

    .line 6787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 6789
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 6791
    .local v3, bitmapData:[B
    if-nez v3, :cond_1

    .line 6792
    const/4 v4, 0x0

    .line 6889
    .end local v3           #bitmapData:[B
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :goto_0
    return-object v4

    .line 6795
    .restart local v3       #bitmapData:[B
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v11       #state:I
    :cond_1
    const/4 v4, 0x0

    .line 6800
    .local v4, bmp:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    :try_start_0
    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 6806
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6807
    :catch_0
    move-exception v5

    .line 6808
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6802
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 6803
    .local v6, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v13, "ImageManager"

    const-string v14, "decrpty input stream error"

    invoke-static {v13, v14, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6806
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 6807
    :catch_2
    move-exception v5

    .line 6808
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 6805
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 6806
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6809
    :goto_1
    throw v13

    .line 6807
    :catch_3
    move-exception v5

    .line 6808
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 6815
    .end local v3           #bitmapData:[B
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v11           #state:I
    :cond_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 6816
    .local v9, pfdInput:Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_6

    .line 6818
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6823
    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6824
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6825
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6827
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image, file resolution "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6828
    const/4 v13, -0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_3

    .line 6829
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v13

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6831
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 6832
    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6835
    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6836
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6841
    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v13, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6842
    const/4 v2, 0x0

    .line 6857
    .local v2, b:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6858
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6861
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v10

    .line 6867
    .local v10, rotateDegree:I
    if-gez v10, :cond_4

    .line 6868
    add-int/lit16 v10, v10, 0x168

    .line 6870
    :cond_4
    if-eqz v10, :cond_5

    .line 6872
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int/2addr v13, v14

    mul-int/lit8 v12, v13, 0x4

    .line 6873
    .local v12, totalMemory:I
    const/high16 v13, 0x70

    if-lt v12, v13, :cond_7

    .line 6874
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "the bitmap heap will increase "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after load bitmap"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6875
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6882
    .end local v12           #totalMemory:I
    :cond_5
    :goto_3
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "B: got bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sampleSize "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    .line 6886
    goto/16 :goto_0

    .line 6821
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v10           #rotateDegree:I
    :cond_6
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data available "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    .line 6887
    .end local v9           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v6

    .line 6888
    .restart local v6       #ex:Ljava/lang/Exception;
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got exception decoding bitmap "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6889
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6877
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    .restart local v8       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v9       #pfdInput:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #rotateDegree:I
    .restart local v12       #totalMemory:I
    :cond_7
    :try_start_6
    invoke-static {v2, v10}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v2

    goto :goto_3
.end method

.method public imageId()J
    .locals 10

    .prologue
    .line 7170
    const/4 v6, 0x0

    .line 7171
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 7174
    .local v8, imageId:J
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7178
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7180
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 7191
    :cond_0
    if-eqz v6, :cond_1

    .line 7192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7195
    :cond_1
    :goto_0
    return-wide v8

    .line 7185
    :catch_0
    move-exception v7

    .line 7187
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][imageId]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7191
    if-eqz v6, :cond_1

    .line 7192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7191
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 7192
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public is3D()Z
    .locals 5

    .prologue
    .line 7518
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 7520
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 7522
    .local v3, mime:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7523
    const/4 v4, 0x1

    .line 7526
    .end local v3           #mime:Ljava/lang/String;
    :goto_1
    return v4

    .line 7520
    .restart local v3       #mime:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7526
    .end local v3           #mime:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public is3DJPS()Z
    .locals 2

    .prologue
    .line 7531
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    .line 7533
    const-string v0, "image/jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/x-jps"

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7536
    :cond_0
    const/4 v0, 0x1

    .line 7539
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7347
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7351
    :cond_0
    :goto_0
    return v0

    .line 7349
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7350
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 7076
    const/4 v6, 0x0

    .line 7077
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 7079
    .local v8, isFavorite:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;->access$1700(Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "favorite"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7084
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7086
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 7087
    .local v9, nValue:I
    and-int/lit8 v0, v9, 0x1

    if-ne v0, v10, :cond_1

    move v8, v10

    .line 7088
    :goto_0
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumObjectManager][isFavorite]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7098
    .end local v9           #nValue:I
    :goto_1
    if-eqz v6, :cond_0

    .line 7099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7102
    :cond_0
    :goto_2
    return v8

    .restart local v9       #nValue:I
    :cond_1
    move v8, v11

    .line 7087
    goto :goto_0

    .line 7092
    .end local v9           #nValue:I
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 7094
    :catch_0
    move-exception v7

    .line 7095
    .local v7, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7096
    const/4 v8, 0x0

    .line 7098
    if-eqz v6, :cond_0

    .line 7099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 7098
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 7099
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isFileExists()Z
    .locals 3

    .prologue
    .line 6629
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 6630
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 6631
    .local v0, bExist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 6634
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6640
    :cond_0
    :goto_1
    return v0

    .line 6630
    .end local v0           #bExist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6635
    .restart local v0       #bExist:Z
    :catch_0
    move-exception v1

    .line 6637
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isGif()Z
    .locals 2

    .prologue
    .line 7337
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 7338
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7339
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7341
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 7506
    const/4 v0, 0x0

    .line 7508
    .local v0, bResult:Z
    return v0
.end method

.method public isPlayable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 7482
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->isGif()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7483
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mGifFrameCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 7484
    new-instance v2, Landroid/webkit/GIFImageParser;

    invoke-direct {v2}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 7485
    .local v2, parser:Landroid/webkit/GIFImageParser;
    const/4 v0, 0x0

    .line 7487
    .local v0, byteArray:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7491
    :goto_0
    if-eqz v0, :cond_0

    .line 7492
    invoke-virtual {v2, v0}, Landroid/webkit/GIFImageParser;->setRawData([B)V

    .line 7493
    invoke-virtual {v2}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v4

    iput v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mGifFrameCount:I

    .line 7496
    .end local v0           #byteArray:[B
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v4, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mGifFrameCount:I

    if-le v4, v3, :cond_1

    .line 7500
    :goto_1
    return v3

    .line 7488
    .restart local v0       #byteArray:[B
    .restart local v2       #parser:Landroid/webkit/GIFImageParser;
    :catch_0
    move-exception v1

    .line 7489
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageManager"

    const-string v5, "out of memory"

    invoke-static {v4, v5, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7500
    .end local v0           #byteArray:[B
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #parser:Landroid/webkit/GIFImageParser;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 6593
    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 7328
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 7329
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 7330
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7332
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 7216
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaladoThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 7199
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 7200
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7201
    .local v0, b:Landroid/graphics/Bitmap;
    const/16 v2, 0x1f

    .line 7202
    .local v2, res:I
    if-eqz v1, :cond_0

    .line 7203
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageStream(Ljava/io/FileDescriptor;ILandroid/graphics/Bitmap;)I

    move-result v2

    .line 7205
    :cond_0
    const/16 v3, -0xff

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 7206
    :cond_1
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode by scalado fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7208
    const/4 v0, 0x0

    .line 7209
    const/4 v3, 0x0

    .line 7212
    :goto_0
    return-object v3

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public setDataPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 6608
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mDataPath:Ljava/lang/String;

    .line 6609
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 7513
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1
    .parameter "mime"

    .prologue
    .line 7356
    if-eqz p1, :cond_0

    .line 7357
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->mMimeType:Ljava/lang/String;

    .line 7358
    :cond_0
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 7288
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7289
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 7290
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 7291
    .local v5, m:Landroid/graphics/Matrix;
    const/high16 v2, 0x3f80

    const/high16 v4, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 7292
    .local v7, scale:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7294
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 7295
    .local v3, width:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7297
    div-int/lit8 v3, v3, 0x2

    .line 7300
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 7303
    .end local v3           #width:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #scale:F
    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method
