.class public interface abstract Lcom/android/camera/ImageManager$IImage;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImage"
.end annotation


# virtual methods
.method public abstract commitChanges()V
.end method

.method public abstract fullSizeBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
.end method

.method public abstract fullSizeImageData()Ljava/io/InputStream;
.end method

.method public abstract fullSizeImageId()J
.end method

.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getContainer()Lcom/android/camera/ImageManager$IImageList;
.end method

.method public abstract getDataPath()Ljava/lang/String;
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getIsPrivate()Z
.end method

.method public abstract getLatitude()D
.end method

.method public abstract getLongitude()D
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getPicasaId()Ljava/lang/String;
.end method

.method public abstract getRow()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasLatLong()Z
.end method

.method public abstract imageId()J
.end method

.method public abstract isDrm()Z
.end method

.method public abstract isReadonly()Z
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract onRemove()V
.end method

.method public abstract setPicasaId(Ljava/lang/String;)V
.end method

.method public abstract thumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract thumbUri()Landroid/net/Uri;
.end method
