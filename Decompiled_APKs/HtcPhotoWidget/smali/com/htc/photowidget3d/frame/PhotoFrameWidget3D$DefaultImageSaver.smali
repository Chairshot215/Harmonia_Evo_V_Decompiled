.class Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;
.super Landroid/os/AsyncTask;
.source "PhotoFrameWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultImageSaver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter "bmp"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    .line 524
    iput-object p2, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    .line 525
    return-void
.end method

.method private saveDefaultImage(Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "bmp"

    .prologue
    .line 562
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[saveDefaultImage] Bitmap = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 565
    :cond_0
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[saveDefaultImage] Bitmap null or recycled!!"

    invoke-static {v7, v8}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :goto_0
    return-void

    .line 571
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    invoke-virtual {v7}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->getHostContext()Landroid/content/Context;

    move-result-object v1

    .line 572
    .local v1, context:Landroid/content/Context;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 576
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 577
    .local v5, fos:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 579
    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 580
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 581
    .local v0, bf:[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 582
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 584
    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 586
    iget-object v7, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->loadInstanceData()Ljava/util/Properties;
    invoke-static {v7}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1300(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;)Ljava/util/Properties;

    move-result-object v6

    .line 587
    .local v6, props:Ljava/util/Properties;
    if-eqz v6, :cond_2

    .line 589
    const-string v7, "image_name"

    invoke-virtual {v6, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    const-string v7, "save_bmp"

    invoke-virtual {v6, v7, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_2
    iget-object v7, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->this$0:Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;

    #calls: Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->storeInstanceData(Ljava/util/Properties;)V
    invoke-static {v7, v6}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$1400(Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;Ljava/util/Properties;)V

    .line 594
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[saveDefaultImage] FileName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bf = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 605
    .end local v0           #bf:[B
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #props:Ljava/util/Properties;
    :goto_1
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[saveDefaultImage] ---"

    invoke-static {v7, v8}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v2

    .line 598
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file not found exception"

    invoke-static {v7, v8, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 600
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 602
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->saveDefaultImage(Landroid/graphics/Bitmap;)V

    .line 545
    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 557
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->mBitmap:Landroid/graphics/Bitmap;

    .line 558
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 518
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/frame/PhotoFrameWidget3D$DefaultImageSaver;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method
