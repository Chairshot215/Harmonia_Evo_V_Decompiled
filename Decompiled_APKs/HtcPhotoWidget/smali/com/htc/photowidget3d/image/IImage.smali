.class public interface abstract Lcom/htc/photowidget3d/image/IImage;
.super Ljava/lang/Object;
.source "IImage.java"


# static fields
.field public static final MINI_THUMB_MAX_NUM_PIXELS:I = 0x4000

.field public static final MINI_THUMB_TARGET_SIZE:I = 0x60

.field public static final NO_NATIVE:Z = false

.field public static final NO_ROTATE:Z = false

.field public static final ROTATE_AS_NEEDED:Z = true

.field public static final THUMBNAIL_MAX_NUM_PIXELS:I = 0x30000

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x140

.field public static final UNCONSTRAINED:I = -0x1

.field public static final USE_NATIVE:Z = true


# virtual methods
.method public abstract fileCorrupt()V
.end method

.method public abstract fullSizeBitmap(II)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
.end method

.method public abstract fullSizeImageData()Ljava/io/InputStream;
.end method

.method public abstract fullSizeImageUri()Landroid/net/Uri;
.end method

.method public abstract getContainer()Lcom/htc/photowidget3d/image/IImageList;
.end method

.method public abstract getDataPath()Ljava/lang/String;
.end method

.method public abstract getDateModified()J
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDegreesRotated()I
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isCorrupted()Z
.end method

.method public abstract isDrm()Z
.end method

.method public abstract isReadonly()Z
.end method

.method public abstract miniThumbBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract resetCorruptState()V
.end method

.method public abstract rotateImageBy(I)Z
.end method

.method public abstract setImageUri(Landroid/net/Uri;)V
.end method

.method public abstract thumbBitmap(Z)Landroid/graphics/Bitmap;
.end method
