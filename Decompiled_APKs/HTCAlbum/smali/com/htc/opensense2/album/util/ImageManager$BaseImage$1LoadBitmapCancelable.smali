.class final Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;
.super Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mCancelInitiationTime:J

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field mPFD:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

.field final synthetic val$targetWidthHeight:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .parameter
    .parameter "pfdInput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 375
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iput p3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v0, p1, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    .line 372
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 376
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 377
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    .line 383
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 390
    .local v11, t1:J
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load full size image from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 394
    .local v13, t2:J
    iget-wide v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 398
    :cond_0
    if-eqz v0, :cond_2

    .line 399
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/htc/opensense2/album/util/ImageManager$BaseImage;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v8

    .line 400
    .local v8, degrees:I
    if-eqz v8, :cond_2

    .line 401
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 402
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v1, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    const/4 v7, 0x0

    .line 405
    .local v7, b2:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 410
    if-eqz v7, :cond_2

    .line 411
    if-eq v0, v7, :cond_1

    .line 412
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 413
    const/4 v0, 0x0

    .line 415
    :cond_1
    move-object v0, v7

    .line 424
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    .end local v8           #degrees:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v11           #t1:J
    .end local v13           #t2:J
    :goto_0
    return-object v0

    .line 406
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v5       #m:Landroid/graphics/Matrix;
    .restart local v7       #b2:Landroid/graphics/Bitmap;
    .restart local v8       #degrees:I
    .restart local v11       #t1:J
    .restart local v13       #t2:J
    :catch_0
    move-exception v10

    .line 407
    .local v10, oome:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v1, "ImageManager"

    const-string v2, "out of memory"

    invoke-static {v1, v2, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 408
    const/4 v0, 0x0

    .line 424
    .end local v0           #b:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_0

    .line 420
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    .end local v8           #degrees:I
    .end local v10           #oome:Ljava/lang/OutOfMemoryError;
    .end local v11           #t1:J
    .end local v13           #t2:J
    :catch_1
    move-exception v9

    .line 421
    .local v9, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_0

    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v1
.end method
