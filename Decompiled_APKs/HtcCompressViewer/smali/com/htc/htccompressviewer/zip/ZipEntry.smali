.class public Lcom/htc/htccompressviewer/zip/ZipEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final PLATFORM_FAT:I = 0x0

.field private static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10


# instance fields
.field private externalAttributes:J

.field private extraFields:Ljava/util/Vector;

.field private internalAttributes:I

.field private name:Ljava/lang/String;

.field private platform:I


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 37
    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->internalAttributes:I

    .line 38
    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->externalAttributes:J

    .line 40
    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 41
    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/htc/htccompressviewer/zip/ZipEntry;)V
    .locals 2
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 77
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setInternalAttributes(I)V

    .line 78
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExternalAttributes(J)V

    .line 79
    invoke-virtual {p1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExtraFields()[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtraFields([Lcom/htc/htccompressviewer/zip/ZipExtraField;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 37
    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->internalAttributes:I

    .line 38
    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->externalAttributes:J

    .line 40
    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 41
    iput-object v2, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 4
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 37
    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->internalAttributes:I

    .line 38
    iput v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    .line 39
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->externalAttributes:J

    .line 40
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 41
    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 61
    .local v0, extra:[B
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->parse([B)[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtraFields([Lcom/htc/htccompressviewer/zip/ZipExtraField;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtra()V

    goto :goto_0
.end method


# virtual methods
.method public addExtraField(Lcom/htc/htccompressviewer/zip/ZipExtraField;)V
    .locals 5
    .parameter "ze"

    .prologue
    .line 223
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    if-nez v4, :cond_0

    .line 224
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 226
    :cond_0
    invoke-interface {p1}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v3

    .line 227
    .local v3, type:Lcom/htc/htccompressviewer/zip/ZipShort;
    const/4 v0, 0x0

    .line 228
    .local v0, done:Z
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .local v1, fieldsSize:I
    :goto_0
    if-nez v0, :cond_2

    if-ge v2, v1, :cond_2

    .line 229
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/htccompressviewer/zip/ZipExtraField;

    invoke-interface {v4}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/htccompressviewer/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v4, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 231
    const/4 v0, 0x1

    .line 228
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    if-nez v0, :cond_3

    .line 235
    iget-object v4, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtra()V

    .line 238
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccompressviewer/zip/ZipEntry;

    .line 97
    .local v0, e:Lcom/htc/htccompressviewer/zip/ZipEntry;
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    :goto_0
    iput-object v1, v0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 98
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setInternalAttributes(I)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExternalAttributes(J)V

    .line 100
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExtraFields()[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtraFields([Lcom/htc/htccompressviewer/zip/ZipExtraField;)V

    .line 101
    return-object v0

    .line 97
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 370
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExtraFields()[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lcom/htc/htccompressviewer/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraFields()[Lcom/htc/htccompressviewer/zip/ZipExtraField;
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/htc/htccompressviewer/zip/ZipExtraField;

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lcom/htc/htccompressviewer/zip/ZipExtraField;

    .line 212
    .local v0, result:[Lcom/htc/htccompressviewer/zip/ZipExtraField;
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInternalAttributes()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->internalAttributes:I

    return v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 296
    .local v0, extra:[B
    if-eqz v0, :cond_0

    .end local v0           #extra:[B
    :goto_0
    return-object v0

    .restart local v0       #extra:[B
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlatform()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    return v0
.end method

.method public getUnixMode()I
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeExtraField(Lcom/htc/htccompressviewer/zip/ZipShort;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 246
    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 247
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 250
    .local v0, done:Z
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .local v1, fieldsSize:I
    :goto_0
    if-nez v0, :cond_2

    if-ge v2, v1, :cond_2

    .line 251
    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccompressviewer/zip/ZipExtraField;

    invoke-interface {v3}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/htccompressviewer/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 253
    const/4 v0, 0x1

    .line 250
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :cond_2
    if-nez v0, :cond_3

    .line 257
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtra()V

    .line 260
    return-void
.end method

.method public setComprSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setCompressedSize(J)V

    .line 320
    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->externalAttributes:J

    .line 139
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->getExtraFields()[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lcom/htc/htccompressviewer/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 287
    return-void
.end method

.method public setExtra([B)V
    .locals 3
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    invoke-static {p1}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->parse([B)[Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtraFields([Lcom/htc/htccompressviewer/zip/ZipExtraField;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setExtraFields([Lcom/htc/htccompressviewer/zip/ZipExtraField;)V
    .locals 3
    .parameter "fields"

    .prologue
    .line 195
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->extraFields:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExtra()V

    .line 200
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 120
    iput p1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->internalAttributes:I

    .line 121
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->name:Ljava/lang/String;

    .line 346
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 186
    iput p1, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    .line 187
    return-void
.end method

.method public setUnixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 149
    shl-int/lit8 v2, p1, 0x10

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/htc/htccompressviewer/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/htccompressviewer/zip/ZipEntry;->setExternalAttributes(J)V

    .line 155
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/htccompressviewer/zip/ZipEntry;->platform:I

    .line 156
    return-void

    :cond_1
    move v0, v1

    .line 149
    goto :goto_0
.end method
