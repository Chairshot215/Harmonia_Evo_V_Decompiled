.class public interface abstract Lcom/htc/sunny2/IMediaData;
.super Ljava/lang/Object;
.source "IMediaData.java"


# static fields
.field public static final SOURCE_FILE_PATH:I = 0x0

.field public static final SOURCE_INPUT_STREAM:I = 0x2

.field public static final SOURCE_PARCEL_FILE_DESCRIPTOR:I = 0x1

.field public static final SOURCE_RESOURCE_ID:I = 0x4

.field public static final SOURCE_URI:I = 0x3

.field public static final SOURCE_WEB_PHOTO:I = 0x5


# virtual methods
.method public abstract getDateModified()J
.end method

.method public abstract getDateTaken()J
.end method

.method public abstract getDisplayImageFilePath()Ljava/lang/String;
.end method

.method public abstract getDisplayImageHeight()I
.end method

.method public abstract getDisplayImageIdentifier()Ljava/lang/String;
.end method

.method public abstract getDisplayImageInputStream()Ljava/io/InputStream;
.end method

.method public abstract getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getDisplayImageResId()I
.end method

.method public abstract getDisplayImageSourceType()I
.end method

.method public abstract getDisplayImageUri()Ljava/lang/String;
.end method

.method public abstract getDisplayImageWidth()I
.end method

.method public abstract getMediaDataList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaMimeType()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract hasSubList()Z
.end method
