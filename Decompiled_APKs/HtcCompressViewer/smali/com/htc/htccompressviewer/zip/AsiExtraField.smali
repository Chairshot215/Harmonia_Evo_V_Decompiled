.class public Lcom/htc/htccompressviewer/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "AsiExtraField.java"

# interfaces
.implements Lcom/htc/htccompressviewer/zip/ZipExtraField;
.implements Lcom/htc/htccompressviewer/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lcom/htc/htccompressviewer/zip/ZipShort; = null

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->HEADER_ID:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    .line 65
    iput v1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->uid:I

    .line 71
    iput v1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->gid:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->dirFlag:Z

    .line 92
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 96
    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->HEADER_ID:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    new-array v2, v5, [B

    .line 140
    .local v2, data:[B
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-static {v5, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 144
    .local v3, linkArray:[B
    array-length v5, v3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getGroupId()I

    move-result v5

    invoke-static {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v5, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 156
    iget-object v5, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 157
    iget-object v5, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 159
    .local v0, checksum:J
    array-length v5, v2

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 160
    .local v4, result:[B
    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    array-length v5, v2

    invoke-static {v2, v7, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    return-object v4
.end method

.method public getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 329
    const v0, 0x8000

    .line 330
    .local v0, type:I
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    const v0, 0xa000

    .line 335
    :cond_0
    :goto_0
    and-int/lit16 v1, p1, 0xfff

    or-int/2addr v1, v0

    return v1

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const/16 v0, 0x4000

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLink()Z
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    invoke-static {p1, p2}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    .line 293
    .local v0, givenChecksum:J
    add-int/lit8 v8, p3, -0x4

    new-array v6, v8, [B

    .line 294
    .local v6, tmp:[B
    add-int/lit8 v8, p2, 0x4

    add-int/lit8 v9, p3, -0x4

    invoke-static {p1, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 296
    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 297
    iget-object v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 298
    .local v4, realChecksum:J
    cmp-long v8, v0, v4

    if-eqz v8, :cond_0

    .line 299
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad CRC checksum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 305
    :cond_0
    invoke-static {v6, v7}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 307
    .local v3, newMode:I
    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/htc/htccompressviewer/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 308
    .local v2, linkArray:[B
    const/4 v8, 0x6

    invoke-static {v6, v8}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->uid:I

    .line 309
    const/16 v8, 0x8

    invoke-static {v6, v8}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->gid:I

    .line 311
    array-length v8, v2

    if-nez v8, :cond_2

    .line 312
    const-string v8, ""

    iput-object v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 318
    :goto_0
    and-int/lit16 v8, v3, 0x4000

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-virtual {p0, v7}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->setDirectory(Z)V

    .line 319
    invoke-virtual {p0, v3}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->setMode(I)V

    .line 320
    return-void

    .line 314
    :cond_2
    const/16 v8, 0xa

    array-length v9, v2

    invoke-static {v6, v8, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->link:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDirectory(Z)V
    .locals 1
    .parameter "dirFlag"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->dirFlag:Z

    .line 269
    iget v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    .line 270
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .parameter "gid"

    .prologue
    .line 198
    iput p1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->gid:I

    .line 199
    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 220
    iget v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    .line 221
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/htc/htccompressviewer/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->mode:I

    .line 251
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 180
    iput p1, p0, Lcom/htc/htccompressviewer/zip/AsiExtraField;->uid:I

    .line 181
    return-void
.end method
