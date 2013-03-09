.class public Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;
.super Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UriImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;-><init>()V

    return-void
.end method

.method private decodeToByteArray(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    :try_start_0
    new-array v1, v5, [B

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "ImageManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getRotateDegree()I
    .locals 13

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v11

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getDataPath()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const/4 v11, 0x0

    :try_start_0
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v11, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v11, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v11, 0x10e

    goto :goto_0

    :catch_0
    move-exception v7

    const/4 v11, 0x0

    goto :goto_0

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

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v11

    move/from16 v21, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v3

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

    invoke-static/range {v21 .. v22}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v21, 0x1

    :goto_0
    return v21

    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_1

    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    div-int v21, v20, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v2, v0, :cond_2

    move/from16 v0, p2

    if-le v11, v0, :cond_2

    div-int v21, v11, v2

    move/from16 v0, v21

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v21

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ldalvik/system/VMRuntime;->getExternalBytesAllocated()J

    move-result-wide v23

    add-long v9, v21, v23

    const-wide/32 v14, 0x1000000

    sub-long v12, v14, v9

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

    invoke-static/range {v21 .. v22}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v18, 0x0

    const/16 v16, 0x3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    div-int v21, v20, v2

    move/from16 v0, v21

    int-to-long v7, v0

    div-int v21, v11, v2

    move/from16 v0, v21

    int-to-long v5, v0

    mul-long v21, v7, v5

    const-wide/16 v23, 0x2

    mul-long v18, v21, v23

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

    invoke-static/range {v21 .. v22}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v21, v18, v12

    if-lez v21, :cond_4

    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_3

    :cond_4
    move/from16 v21, v2

    goto/16 :goto_0
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const-string v13, "drm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/htc/opensense/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    :cond_0
    if-nez v6, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_3

    const/4 v12, 0x0

    :try_start_0
    array-length v13, v2

    const/4 v14, 0x0

    invoke-static {v2, v12, v13, v14}, Lcom/htc/opensense/album/util/BitmapUtil2;->DecodeStreamBySkia([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

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

    :catch_1
    move-exception v5

    :try_start_3
    const-string v12, "ImageManager"

    const-string v13, "decrpty input stream error"

    invoke-static {v12, v13, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v12

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v12

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v12, 0x1

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v12

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v13, 0x1

    if-ge v12, v13, :cond_5

    const/4 v12, 0x1

    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v12, 0x0

    iput-boolean v12, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    iput-object v12, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    const/16 v12, 0x1f4

    move/from16 v0, p1

    if-le v0, v12, :cond_9

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/htc/opensense/album/util/BitmapUtil2;->DecodeFDBySkia(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v9

    if-gez v9, :cond_6

    add-int/lit16 v9, v9, 0x168

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v11, v12, 0x4

    const/high16 v12, 0x70

    if-lt v11, v12, :cond_a

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v9}, Lcom/htc/opensense/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto/16 :goto_0

    :cond_8
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "view single image "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_3

    :cond_a
    invoke-static {v1, v9}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v1

    goto :goto_4

    :catch_4
    move-exception v5

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

    invoke-static {v12, v13}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

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

    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1500(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1600(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    monitor-enter v0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget v4, v4, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 13

    const/4 v4, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v8, " "

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v8, ""

    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_data"

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

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_4
    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_5
    move-object v8, v11

    goto/16 :goto_0
.end method

.method public getDateAdded()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 15

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v8, " "

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v8, " "

    const-string v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const-string v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    const/16 v0, 0x2e

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-eq v1, v12, :cond_0

    if-eq v1, v9, :cond_0

    if-le v9, v12, :cond_0

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public getHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

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

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSize()J
    .locals 10

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

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

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-wide v8

    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, -0x1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

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

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v13}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "drm"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/htc/opensense/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mChildContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1200(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/DrmManager;->getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->decodeToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    const/4 v13, 0x0

    :try_start_0
    array-length v14, v3

    invoke-static {v3, v13, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    const-string v13, "ImageManager"

    const-string v14, "decrpty input stream error"

    invoke-static {v13, v14, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v13

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v13

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v13, 0x1

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->heapBasedComputeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v13

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    const/4 v13, 0x1

    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v13, 0x0

    iput-boolean v13, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    iput-object v13, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v10

    if-gez v10, :cond_4

    add-int/lit16 v10, v10, 0x168

    :cond_4
    if-eqz v10, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int/2addr v13, v14

    mul-int/lit8 v12, v13, 0x4

    const/high16 v13, 0x70

    if-lt v12, v13, :cond_7

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/htc/opensense/album/util/ImageManager;->rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto/16 :goto_0

    :cond_6
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "view single image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v6

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

    invoke-static {v13, v14}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_6
    invoke-static {v2, v10}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v2

    goto :goto_3
.end method

.method public imageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDrm()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1300(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    #getter for: Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->access$1400(Lcom/htc/opensense/album/util/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

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

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v9, :cond_1

    move v8, v9

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v8

    :cond_1
    move v8, v10

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public isFileExists()Z
    .locals 3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isGif()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public scaladoThumbBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v2, 0x1f

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->getRotateDegree()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/htc/opensense/album/util/ScaladoLib2;->LoadImageStream(Ljava/io/FileDescriptor;ILandroid/graphics/Bitmap;)I

    move-result v2

    :cond_0
    const/16 v3, -0xff

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_2

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

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f80

    const/high16 v3, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
