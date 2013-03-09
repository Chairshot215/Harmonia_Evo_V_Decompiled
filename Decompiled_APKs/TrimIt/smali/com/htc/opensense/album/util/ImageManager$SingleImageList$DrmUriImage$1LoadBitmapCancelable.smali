.class final Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;
.super Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->fullSizeBitmap_cancelable(I)Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .parameter
    .parameter "pfdInput"

    .prologue
    .line 5963
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;->this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;

    iget-object v0, p1, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->this$1:Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    .line 5964
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 1

    .prologue
    .line 5967
    const/4 v0, 0x0

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 5971
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage$1LoadBitmapCancelable;->this$2:Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList$DrmUriImage;->forceMakeThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
