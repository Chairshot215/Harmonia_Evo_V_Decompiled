.class public interface abstract Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
.super Ljava/lang/Object;
.source "IMediaDataGallery.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaData;


# static fields
.field public static final CONTENT_DRM_CD:I = 0x2

.field public static final CONTENT_DRM_FL:I = 0x1

.field public static final CONTENT_DRM_SD:I = 0x3

.field public static final CONTENT_NORMAL:I = 0x0

.field public static final CONTENT_REMOTE:I = -0x1


# virtual methods
.method public abstract alreadyHasDisplayImageDimension()Z
.end method

.method public abstract getContentType()I
.end method

.method public abstract getDegreesRotated()I
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract isCorrupted()Z
.end method

.method public abstract isDrm()Z
.end method

.method public abstract isPlayable()Z
.end method

.method public abstract isVideo()Z
.end method

.method public abstract setDisplayImageDimension(II)V
.end method
