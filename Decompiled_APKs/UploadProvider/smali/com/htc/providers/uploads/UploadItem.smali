.class public interface abstract Lcom/htc/providers/uploads/UploadItem;
.super Ljava/lang/Object;
.source "UploadItem.java"


# virtual methods
.method public abstract addFile(IIII)V
.end method

.method public abstract getBatchId()I
.end method

.method public abstract getCurrentByte()D
.end method

.method public abstract getFileUri()Landroid/net/Uri;
.end method

.method public abstract getId()I
.end method

.method public abstract getIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInsertDateTime()Ljava/util/Date;
.end method

.method public abstract getInsertTime()Ljava/util/Calendar;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getRespCode()I
.end method

.method public abstract getRespMesg()Ljava/lang/String;
.end method

.method public abstract getServiceProvider()Ljava/lang/String;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getStatusChangeTime()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTotalByte()D
.end method

.method public abstract getTotalNum()I
.end method

.method public abstract printAll()V
.end method

.method public abstract setStatus(I)V
.end method
