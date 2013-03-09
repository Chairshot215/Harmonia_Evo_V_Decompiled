.class final Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field pfdInput:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

.field final synthetic val$targetWidthOrHeight:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    iput p3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v0, p1, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 2

    const-string v0, "ImageManager"

    const-string v1, "requesting bitmap load cancel"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    iget-object v2, v2, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/ImageManager$SingleImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "b is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v2
.end method
