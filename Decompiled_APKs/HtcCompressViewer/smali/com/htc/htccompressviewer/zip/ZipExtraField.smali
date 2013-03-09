.class public interface abstract Lcom/htc/htccompressviewer/zip/ZipExtraField;
.super Ljava/lang/Object;
.source "ZipExtraField.java"


# virtual methods
.method public abstract getCentralDirectoryData()[B
.end method

.method public abstract getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;
.end method

.method public abstract getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;
.end method

.method public abstract getLocalFileDataData()[B
.end method

.method public abstract getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;
.end method

.method public abstract parseFromLocalFileData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation
.end method
