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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    iget-object v0, p1, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 15

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iget-object v11, v11, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->checkCanceled()V

    new-instance v11, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    iget-object v12, v12, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v11, v12, v0}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/htc/opensense/album/util/ImageManager;Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/htc/opensense/album/util/ImageManager$BaseImage;

    invoke-virtual {v12}, Lcom/htc/opensense/album/util/ImageManager$BaseImage;->compressionType()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v12

    const/16 v13, 0x4b

    iget-object v14, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide v6

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_0

    :try_start_3
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    :goto_2
    return v10

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

    :catch_0
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_1

    :try_start_7
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    :cond_2
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    iget-object v12, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v11, v12}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->write([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/htc/opensense/album/util/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_9
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_3

    :try_start_a
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_4

    :try_start_c
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_5

    :try_start_d
    iget-object v11, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_5
    :goto_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    throw v10

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method
