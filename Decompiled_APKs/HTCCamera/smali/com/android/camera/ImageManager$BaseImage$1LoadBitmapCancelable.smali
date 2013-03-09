.class final Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field mPFD:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/camera/ImageManager$BaseImage;

.field final synthetic val$targetWidthHeight:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iput p3, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v0, p1, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    const-string v0, "ImageManager"

    const-string v1, "requesting bitmap load cancel"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 11

    const/high16 v10, 0x4000

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget v2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v0, v7, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v1
.end method
