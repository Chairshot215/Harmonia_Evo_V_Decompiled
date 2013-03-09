.class Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;
.super Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 1
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
    .line 285
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    iget-object v0, p1, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 295
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 298
    .end local v0           #ex:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 303
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 304
    .local v2, t1:J
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iget-object v11, v11, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 305
    .local v0, delegate:Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 306
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->checkCanceled()V

    .line 307
    new-instance v11, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iget-object v12, v12, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v11, v12, v0}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/htc/opensense/album/util/ImageManager;Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    .line 308
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 310
    .local v4, t2:J
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    .line 311
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    invoke-virtual {v12}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compressionType()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v12

    const/16 v13, 0x4b

    iget-object v14, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 318
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v6

    .line 320
    .local v6, t3:J
    const/4 v10, 0x1

    .line 332
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_0

    .line 334
    :try_start_3
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 340
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    .end local v4           #t2:J
    .end local v6           #t3:J
    :goto_2
    return v10

    .line 308
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 321
    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    :catch_0
    move-exception v1

    .line 322
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 332
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_1

    .line 334
    :try_start_7
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 340
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    .line 313
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    .restart local v4       #t2:J
    :cond_2
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 314
    .local v8, x1:J
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v11, v12}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->write([B)V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 324
    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    .end local v4           #t2:J
    .end local v8           #x1:J
    :catch_1
    move-exception v1

    .line 325
    .local v1, ex:Lcom/htc/opensense/album/util/ImageManager$CanceledException;
    :try_start_9
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 332
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_3

    .line 334
    :try_start_a
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 340
    .end local v1           #ex:Lcom/htc/opensense/album/util/ImageManager$CanceledException;
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    .line 335
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    .restart local v4       #t2:J
    .restart local v6       #t3:J
    :catch_2
    move-exception v1

    .line 337
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 335
    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    .end local v4           #t2:J
    .end local v6           #t3:J
    .local v1, ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 337
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 335
    .local v1, ex:Lcom/htc/opensense/album/util/ImageManager$CanceledException;
    :catch_4
    move-exception v1

    .line 337
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 327
    .end local v1           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 328
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 332
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_4

    .line 334
    :try_start_c
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 340
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    .line 335
    :catch_6
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 332
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_5

    .line 334
    :try_start_d
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 340
    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    throw v10

    .line 335
    :catch_7
    move-exception v1

    .line 337
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method
