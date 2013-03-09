.class Lcom/android/camera/ImageManager$1AddImageCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field delegate:Ljava/io/OutputStream;

.field mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

.field private mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/android/camera/ImageManager;

.field final synthetic val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$source:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$StoreImageCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    iput-object p2, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    iput p8, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    invoke-direct {p0, p1}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 3

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling AddImageCancelable.cancel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v21, 0x1

    :cond_1
    :goto_0
    const/16 v19, 0x0

    const/4 v13, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_13

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v4, :cond_9

    new-instance v4, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v4, v5}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_13

    :catch_0
    move-exception v15

    move-object v8, v13

    move-object/from16 v2, v19

    :goto_1
    :try_start_3
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v2, 0x0

    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    if-eqz v4, :cond_4

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v4, :cond_5

    :try_start_5
    const-string v4, "ImageManager"

    const-string v5, "close output stream...."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    :cond_5
    :goto_3
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    if-eqz v4, :cond_1c

    const/16 v20, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final image file size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_size"

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v20, :cond_6

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_6
    :goto_4
    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v21, :cond_e

    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    :goto_5
    new-instance v2, Lcom/android/camera/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1200()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1300()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_9 .. :try_end_9} :catch_13

    :try_start_a
    new-instance v3, Lcom/android/camera/ImageManager$Image;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->getCount()I

    move-result v11

    const/4 v12, 0x0

    move-wide/from16 v5, v17

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_14

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    new-instance v4, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    invoke-direct {v4, v5, v6}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_c .. :try_end_c} :catch_14

    move-object v8, v13

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v2, 0x0

    :cond_b
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    if-eqz v4, :cond_d

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v4, :cond_5

    :try_start_e
    const-string v4, "ImageManager"

    const-string v5, "close output stream...."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    goto/16 :goto_3

    :catch_1
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const-wide/16 v17, -0x1

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v4

    :catch_2
    move-exception v15

    move-object v8, v13

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    invoke-interface {v4, v5, v6}, Lcom/android/camera/ImageManager$StoreImageCallback;->storeImage(Ljava/io/OutputStream;[B)Z

    move-result v4

    if-nez v4, :cond_1d

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    invoke-virtual {v4, v5}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->write([B)V

    move-object v8, v13

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x3

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

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_10 .. :try_end_10} :catch_14

    move-result-object v8

    if-eqz v8, :cond_a

    const/4 v4, 0x0

    :try_start_11
    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v4, "ImageManager"

    const-string v5, "set saveImageContents ..."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_11 .. :try_end_11} :catch_4

    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    const-string v4, "ImageManager"

    const-string v5, "return saveImageContents ..."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    invoke-virtual/range {v3 .. v9}, Lcom/android/camera/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    const-string v4, "ImageManager"

    const-string v5, "get saveImageContents ..."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "ImageManager"

    const-string v5, "get saveImageContents ... true"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating new picture with id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ImageManager"

    const-string v5, "HonyComb Porting check point: update MINI_THUMB_MAGIC"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mini_thumb_magic"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v14, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_6

    :catch_3
    move-exception v15

    goto/16 :goto_1

    :catchall_2
    move-exception v4

    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_15 .. :try_end_15} :catch_4

    :catch_4
    move-exception v16

    :goto_9
    :try_start_16
    const-string v4, "ImageManager"

    const-string v5, "caught CanceledException"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    if-eqz v4, :cond_12

    if-eqz v21, :cond_12

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled... cleaning up this uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->acknowledgeCancel()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v2, 0x0

    :cond_13
    if-eqz v8, :cond_14

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    if-eqz v4, :cond_15

    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    :cond_15
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v4, :cond_5

    :try_start_18
    const-string v4, "ImageManager"

    const-string v5, "close output stream...."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    goto/16 :goto_3

    :catch_5
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    :cond_16
    :try_start_19
    new-instance v4, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v4, v5}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_19 .. :try_end_19} :catch_4

    :catchall_3
    move-exception v4

    :goto_b
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v2, 0x0

    :cond_17
    if-eqz v8, :cond_18

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    if-eqz v5, :cond_19

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8

    :cond_19
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v5, :cond_1a

    :try_start_1b
    const-string v5, "ImageManager"

    const-string v6, "close output stream...."

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    :cond_1a
    :goto_d
    throw v4

    :catch_6
    move-exception v16

    :try_start_1c
    const-string v4, "ImageManager"

    const-string v5, "Cannot get final image file size"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "_size"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v20, :cond_6

    :try_start_1d
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_7

    goto/16 :goto_4

    :catch_7
    move-exception v4

    goto/16 :goto_4

    :catchall_4
    move-exception v4

    if-eqz v20, :cond_1b

    :try_start_1e
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_e

    :cond_1b
    :goto_e
    throw v4

    :cond_1c
    const-string v4, "_size"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :catch_8
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_9
    move-exception v16

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close output stream with IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_a
    move-exception v16

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close output stream with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_b
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_c
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    :catch_d
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_e
    move-exception v5

    goto/16 :goto_e

    :catch_f
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_10
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :catch_11
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_12
    move-exception v16

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close output stream with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :catchall_5
    move-exception v4

    move-object v8, v13

    move-object/from16 v2, v19

    goto/16 :goto_b

    :catchall_6
    move-exception v4

    move-object v8, v13

    goto/16 :goto_b

    :catch_13
    move-exception v16

    move-object v8, v13

    move-object/from16 v2, v19

    goto/16 :goto_9

    :catch_14
    move-exception v16

    move-object v8, v13

    goto/16 :goto_9

    :cond_1d
    move-object v8, v13

    goto/16 :goto_6
.end method
