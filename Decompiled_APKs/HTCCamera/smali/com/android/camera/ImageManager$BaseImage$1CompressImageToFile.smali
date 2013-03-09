.class Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$BaseImage;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$1:Lcom/android/camera/ImageManager$BaseImage;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    iput-object p5, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    iget-object v0, p1, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget-object v3, v3, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->checkCanceled()V

    new-instance v3, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget-object v4, v4, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v3, v4, v0}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$BaseImage;->compressionType()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v5, 0x64

    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    :goto_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_0

    :try_start_3
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    :goto_2
    return v2

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :catch_0
    move-exception v1

    :try_start_6
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write jpeg data with FileNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_1

    :try_start_7
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto :goto_2

    :cond_2
    :try_start_8
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    array-length v3, v3

    if-nez v3, :cond_3

    const-string v3, "ImageManager"

    const-string v4, "  jpegData.length == 0  "

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "ImageManager"

    const-string v4, "write jpeg data.....start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$callback:Lcom/android/camera/ImageManager$StoreImageCallback;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ImageManager$StoreImageCallback;->storeImage(Ljava/io/OutputStream;[B)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v3, v4}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->write([B)V

    :cond_5
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "done writing... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_9
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write jpeg data with CanceledException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$CanceledException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_6

    :try_start_a
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_6
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_7
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_8
    move-exception v1

    :try_start_b
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write jpeg data with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_7

    :try_start_c
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto/16 :goto_2

    :catch_9
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_a
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_b
    move-exception v1

    :try_start_d
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "write jpeg data with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_8

    :try_start_e
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    goto/16 :goto_2

    :catch_c
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_d
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v3, :cond_9

    :try_start_f
    const-string v3, "ImageManager"

    const-string v4, "close output stream...."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    :cond_9
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    throw v2

    :catch_e
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_f
    move-exception v1

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close output stream with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
