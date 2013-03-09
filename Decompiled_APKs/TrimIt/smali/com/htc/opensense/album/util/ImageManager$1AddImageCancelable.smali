.class Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;
.super Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field private mSaveImageCancelable:Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$directory:Ljava/lang/String;

.field final synthetic val$exifData:Ljava/util/HashMap;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$source:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentResolver;ILjava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8201
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$directory:Ljava/lang/String;

    iput-object p6, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    iput-object p7, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput p8, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$orientation:I

    iput-object p9, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 8209
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    .line 8210
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 8212
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .locals 37

    .prologue
    .line 8216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    if-nez v4, :cond_0

    .line 8217
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 8221
    :cond_0
    const/16 v26, 0x0

    .line 8222
    .local v26, il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    const/4 v15, 0x0

    .line 8225
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 8226
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->mCancel:Z

    if-eqz v4, :cond_3

    .line 8227
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v4, v5}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    throw v4

    .line 8229
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 8351
    :catch_0
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .local v8, c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .line 8352
    .end local v26           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .local v2, il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .local v20, ex:Lcom/htc/opensense/album/util/ImageManager$CanceledException;
    :goto_0
    :try_start_3
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught CanceledException, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 8357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8359
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->acknowledgeCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8367
    if-eqz v2, :cond_2

    .line 8368
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8369
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 8370
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    .line 8373
    .end local v20           #ex:Lcom/htc/opensense/album/util/ImageManager$CanceledException;
    :cond_2
    :goto_1
    return-void

    .line 8229
    .end local v2           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    :cond_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8230
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 8233
    .local v24, id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$directory:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 8235
    new-instance v2, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 8248
    .end local v26           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    :goto_2
    :try_start_6
    new-instance v3, Lcom/htc/opensense/album/util/ImageManager$Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->getCount()I

    move-result v11

    const/4 v12, 0x0

    move-wide/from16 v5, v24

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lcom/htc/opensense/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;II)V

    .line 8251
    .local v3, image:Lcom/htc/opensense/album/util/ImageManager$Image;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const-string v9, "mini_thumb_magic"

    aput-object v9, v6, v7

    const/4 v7, 0x2

    const-string v9, "_data"

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const-string v9, "_size"

    aput-object v9, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v8

    .line 8257
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_7
    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 8259
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 8260
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->checkCanceled()V

    .line 8261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$orientation:I

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/htc/opensense/album/util/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    .line 8262
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 8264
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 8270
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 8271
    .local v22, filePath:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8273
    .local v21, file:Ljava/io/File;
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 8274
    .local v35, values:Landroid/content/ContentValues;
    const-string v4, "mini_thumb_magic"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8275
    const-string v6, "_size"

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8280
    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 8281
    .local v31, model:Ljava/lang/String;
    const-string v4, "ro.product.manufacturer"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 8283
    .local v28, maker:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 8284
    .local v16, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    .line 8285
    .local v36, year:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    .line 8286
    .local v32, month:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 8287
    .local v18, day:Ljava/lang/String;
    const/16 v4, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    .line 8288
    .local v23, hour:Ljava/lang/String;
    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    .line 8289
    .local v30, minute:Ljava/lang/String;
    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    .line 8291
    .local v33, second:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 8292
    :cond_4
    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 8293
    :cond_5
    const/16 v4, 0xb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 8294
    :cond_6
    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 8295
    :cond_7
    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 8297
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 8305
    .local v17, date:Ljava/lang/String;
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 8308
    const/4 v13, 0x0

    .line 8309
    .local v13, additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    .line 8310
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$exifData:Ljava/util/HashMap;

    invoke-direct {v14, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .end local v13           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v14, additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v13, v14

    .line 8312
    .end local v14           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    invoke-static/range {v22 .. v22}, Lcom/htc/opensense/album/util/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v29

    .line 8314
    .local v29, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v29, :cond_c

    .line 8315
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 8367
    if-eqz v2, :cond_2

    .line 8368
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8369
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 8370
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    goto/16 :goto_1

    .line 8242
    .end local v2           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .end local v3           #image:Lcom/htc/opensense/album/util/ImageManager$Image;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v13           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v28           #maker:Ljava/lang/String;
    .end local v29           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30           #minute:Ljava/lang/String;
    .end local v31           #model:Ljava/lang/String;
    .end local v32           #month:Ljava/lang/String;
    .end local v33           #second:Ljava/lang/String;
    .end local v35           #values:Landroid/content/ContentValues;
    .end local v36           #year:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    :cond_a
    :try_start_b
    new-instance v2, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .end local v26           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    goto/16 :goto_2

    .line 8262
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v3       #image:Lcom/htc/opensense/album/util/ImageManager$Image;
    .restart local v8       #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 8351
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 8275
    .restart local v21       #file:Ljava/io/File;
    .restart local v22       #filePath:Ljava/lang/String;
    .restart local v35       #values:Landroid/content/ContentValues;
    :cond_b
    const-wide/16 v4, 0x1

    goto/16 :goto_3

    .line 8317
    .restart local v13       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #calendar:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/lang/String;
    .restart local v18       #day:Ljava/lang/String;
    .restart local v23       #hour:Ljava/lang/String;
    .restart local v28       #maker:Ljava/lang/String;
    .restart local v29       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v30       #minute:Ljava/lang/String;
    .restart local v31       #model:Ljava/lang/String;
    .restart local v32       #month:Ljava/lang/String;
    .restart local v33       #second:Ljava/lang/String;
    .restart local v36       #year:Ljava/lang/String;
    :cond_c
    if-eqz v13, :cond_e

    .line 8318
    :try_start_e
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v34

    .line 8319
    .local v34, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v34, :cond_e

    .line 8320
    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 8321
    .local v27, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 8322
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 8323
    .local v19, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 8342
    .end local v19           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v29           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 8360
    .end local v13           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v28           #maker:Ljava/lang/String;
    .end local v30           #minute:Ljava/lang/String;
    .end local v31           #model:Ljava/lang/String;
    .end local v32           #month:Ljava/lang/String;
    .end local v33           #second:Ljava/lang/String;
    .end local v35           #values:Landroid/content/ContentValues;
    .end local v36           #year:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 8361
    .end local v3           #image:Lcom/htc/opensense/album/util/ImageManager$Image;
    .end local v24           #id:J
    .local v20, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_10
    const-string v4, "ImageManager"

    const-string v5, "exception occur while sotre image"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8362
    if-eqz v8, :cond_d

    .line 8363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 8364
    const/4 v8, 0x0

    .line 8367
    :cond_d
    if-eqz v2, :cond_2

    .line 8368
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8369
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 8370
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    goto/16 :goto_1

    .line 8328
    .end local v20           #ex:Ljava/lang/Exception;
    .restart local v3       #image:Lcom/htc/opensense/album/util/ImageManager$Image;
    .restart local v13       #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #calendar:Ljava/util/Calendar;
    .restart local v17       #date:Ljava/lang/String;
    .restart local v18       #day:Ljava/lang/String;
    .restart local v21       #file:Ljava/io/File;
    .restart local v22       #filePath:Ljava/lang/String;
    .restart local v23       #hour:Ljava/lang/String;
    .restart local v24       #id:J
    .restart local v28       #maker:Ljava/lang/String;
    .restart local v29       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v30       #minute:Ljava/lang/String;
    .restart local v31       #model:Ljava/lang/String;
    .restart local v32       #month:Ljava/lang/String;
    .restart local v33       #second:Ljava/lang/String;
    .restart local v35       #values:Landroid/content/ContentValues;
    .restart local v36       #year:Ljava/lang/String;
    :cond_e
    if-eqz v28, :cond_f

    .line 8329
    :try_start_11
    const-string v4, "Make"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8331
    :cond_f
    if-eqz v31, :cond_10

    .line 8332
    const-string v4, "Model"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8334
    :cond_10
    const-string v4, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8335
    const-string v4, "DateTimeDigitized"

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8337
    const-string v4, "Flash"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8338
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inserted exif "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8341
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/ExifUtil;->modifiedExifData(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 8342
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 8344
    :try_start_12
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 8367
    if-eqz v2, :cond_2

    .line 8368
    const-string v4, "ImageManager"

    const-string v5, "close crop image saving cursor"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8369
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 8370
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    goto/16 :goto_1

    .line 8348
    .end local v13           #additionExif:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #calendar:Ljava/util/Calendar;
    .end local v17           #date:Ljava/lang/String;
    .end local v18           #day:Ljava/lang/String;
    .end local v21           #file:Ljava/io/File;
    .end local v22           #filePath:Ljava/lang/String;
    .end local v23           #hour:Ljava/lang/String;
    .end local v28           #maker:Ljava/lang/String;
    .end local v29           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v30           #minute:Ljava/lang/String;
    .end local v31           #model:Ljava/lang/String;
    .end local v32           #month:Ljava/lang/String;
    .end local v33           #second:Ljava/lang/String;
    .end local v35           #values:Landroid/content/ContentValues;
    .end local v36           #year:Ljava/lang/String;
    :cond_11
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8349
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v4, v5}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    .line 8367
    .end local v3           #image:Lcom/htc/opensense/album/util/ImageManager$Image;
    .end local v24           #id:J
    :catchall_3
    move-exception v4

    :goto_6
    if-eqz v2, :cond_12

    .line 8368
    const-string v5, "ImageManager"

    const-string v6, "close crop image saving cursor"

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8369
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    .line 8370
    invoke-virtual {v2}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    :cond_12
    throw v4

    .line 8367
    .end local v2           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    :catchall_4
    move-exception v4

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .end local v26           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    goto :goto_6

    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v24       #id:J
    :catchall_5
    move-exception v4

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_6

    .line 8360
    .end local v2           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v24           #id:J
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v26       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    :catch_3
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    move-object/from16 v2, v26

    .end local v26           #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    .restart local v2       #il:Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
    goto/16 :goto_5

    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v24       #id:J
    :catch_4
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_5

    .line 8351
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v15       #c:Landroid/database/Cursor;
    :catch_5
    move-exception v20

    move-object v8, v15

    .end local v15           #c:Landroid/database/Cursor;
    .restart local v8       #c:Landroid/database/Cursor;
    goto/16 :goto_0
.end method
