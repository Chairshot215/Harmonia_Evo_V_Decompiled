.class public Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "UnrecognizedExtraField.java"

# interfaces
.implements Lcom/htc/htccompressviewer/zip/ZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lcom/htc/htccompressviewer/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->centralData:[B

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->centralData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->headerId:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->localData:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->localData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 134
    new-array v0, p3, [B

    .line 135
    .local v0, tmp:[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 137
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->centralData:[B

    .line 102
    return-void
.end method

.method public setHeaderId(Lcom/htc/htccompressviewer/zip/ZipShort;)V
    .locals 0
    .parameter "headerId"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->headerId:Lcom/htc/htccompressviewer/zip/ZipShort;

    .line 45
    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->localData:[B

    .line 70
    return-void
.end method
