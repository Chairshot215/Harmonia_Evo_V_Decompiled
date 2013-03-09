.class final Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;
.super Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mCancelInitiationTime:J

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field pfdInput:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

.field final synthetic val$targetWidthOrHeight:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

    iput p3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v0, p1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

    iget-object v2, v2, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget v3, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_0
    const-string v3, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitmap is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v2, "not loaded successfully"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    const-string v2, "loaded success"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v2
.end method
