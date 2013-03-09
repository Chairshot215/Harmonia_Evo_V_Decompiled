.class public Lcom/htc/dlnamiddlelayer/LocalCacheItem;
.super Lcom/htc/dlnamiddlelayer/CacheItem;
.source "LocalCacheItem.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPushGetResult:Lcom/awox/jUPnPCP/PushControllerGetResult;

.field protected nAlbumID:J

.field protected nBitRate:J

.field protected nDuration:J

.field protected nFps:J

.field protected nModifiedTime:J

.field protected nSize:J

.field protected sAlbum:Ljava/lang/String;

.field protected sArtist:Ljava/lang/String;

.field protected sComposer:Ljava/lang/String;

.field protected sContainerPath:Ljava/lang/String;

.field protected sDate:Ljava/lang/String;

.field protected sDownloadStoreAlbumArtPath:Ljava/lang/String;

.field protected sFileName:Ljava/lang/String;

.field protected sFilePath:Ljava/lang/String;

.field protected sGenre:Ljava/lang/String;

.field protected sMimeType:Ljava/lang/String;

.field protected sPushAlbumArtPath:Ljava/lang/String;

.field protected sResolution:Ljava/lang/String;

.field protected sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLandroid/content/Context;)V
    .locals 3
    .parameter "index"
    .parameter "aContext"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/CacheItem;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sTitle:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sArtist:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sAlbum:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sComposer:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sGenre:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDate:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sResolution:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sMimeType:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sContainerPath:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFileName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    .line 24
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nDuration:J

    .line 25
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nSize:J

    .line 26
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nFps:J

    .line 27
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nBitRate:J

    .line 28
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nModifiedTime:J

    .line 29
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sPushAlbumArtPath:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDownloadStoreAlbumArtPath:Ljava/lang/String;

    .line 31
    iput-wide v1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nAlbumID:J

    .line 33
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mPushGetResult:Lcom/awox/jUPnPCP/PushControllerGetResult;

    .line 40
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    .line 41
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sAlbum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sAlbum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sAlbum:Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumID()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nAlbumID:J

    return-wide v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sArtist:Ljava/lang/String;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitRate()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nBitRate:J

    return-wide v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sComposer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sComposer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sComposer:Ljava/lang/String;

    .line 171
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContainerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sContainerPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sContainerPath:Ljava/lang/String;

    .line 236
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDate:Ljava/lang/String;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDownloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDownloadStoreAlbumArtPath:Ljava/lang/String;

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nDuration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFileName:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getFps()J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nFps:J

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sGenre:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sGenre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sGenre:Ljava/lang/String;

    .line 197
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifiedTime()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nModifiedTime:J

    return-wide v0
.end method

.method public getPushAlbumArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sPushAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sPushAlbumArtPath:Ljava/lang/String;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sResolution:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sResolution:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sResolution:Ljava/lang/String;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nSize:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getThumbnailURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sTitle:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sMimeType:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnknownString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mContext:Landroid/content/Context;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 296
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .parameter "album"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sAlbum:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAlbumID(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 327
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nAlbumID:J

    .line 328
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .parameter "artist"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sArtist:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setBitRate(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nBitRate:J

    .line 154
    return-void
.end method

.method public setComposer(Ljava/lang/String;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sComposer:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setContainerPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sContainerPath:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDate:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setDiscNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDownloadAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sDownloadStoreAlbumArtPath:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nDuration:J

    .line 85
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFileName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sFilePath:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setFps(J)V
    .locals 0
    .parameter "fps"

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nFps:J

    .line 242
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .parameter "genre"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sGenre:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setGetResult(Lcom/awox/jUPnPCP/PushControllerGetResult;)V
    .locals 0
    .parameter "theResult"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->mPushGetResult:Lcom/awox/jUPnPCP/PushControllerGetResult;

    .line 47
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 283
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nModifiedTime:J

    .line 284
    return-void
.end method

.method public setPushAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sPushAlbumArtPath:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sResolution:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->nSize:J

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sTitle:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTrackNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->sMimeType:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setURI_Entry_ResInfo(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 0
    .parameter "aURI"
    .parameter "entryInfo"
    .parameter "resInfo"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mEntryInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 53
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mResInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 54
    return-void
.end method
