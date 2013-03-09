.class public Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
.super Lcom/htc/dlnamiddlelayer/CacheItem;
.source "RemoteCacheItem.java"


# instance fields
.field protected cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

.field protected cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

.field protected contentID:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected nBestResourceIndex:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "aIndex"
    .parameter "aID"
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/CacheItem;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->contentID:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    .line 18
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    .line 21
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    .line 25
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    .line 26
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->contentID:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, sAlbum:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Album:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 108
    .end local v0           #sAlbum:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #sAlbum:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, sArtist:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 95
    .end local v0           #sArtist:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #sArtist:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitRate()J
    .locals 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v1, v1

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_BitRate:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v0

    .line 248
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 7

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    const-string v4, ""

    .line 189
    :cond_0
    :goto_0
    return-object v4

    .line 173
    :cond_1
    const/4 v4, 0x0

    .line 175
    .local v4, sComposer:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoCount()J

    move-result-wide v0

    .line 176
    .local v0, count:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    int-to-long v5, v2

    cmp-long v5, v5, v0

    if-gez v5, :cond_2

    .line 178
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v5, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoName(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, name:Ljava/lang/String;
    const-string v5, "upnp:author"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    invoke-virtual {v5, v2}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetExtraInfoData(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_0

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 176
    .restart local v3       #name:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getContainerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, ""

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->contentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->contentID:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0xa

    .line 113
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AwoxAPI Date :         "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Date:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Date:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/awox/jUPnPCP/jUPnPCP;->awConvert_DLNADateStrToDate(Ljava/lang/String;)Lcom/awox/jUPnPCP/ConvertDateGetResult;

    move-result-object v11

    .line 118
    .local v11, theDate:Lcom/awox/jUPnPCP/ConvertDateGetResult;
    const-string v10, "yyyy-MM-dd"

    .line 120
    .local v10, sDateFormat:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getYear()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getMonth()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getDay()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getHour()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getMinute()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v11}, Lcom/awox/jUPnPCP/ConvertDateGetResult;->getSecond()J

    move-result-wide v12

    long-to-int v6, v12

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 123
    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, dateString:Ljava/lang/String;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 126
    .local v8, hour:I
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 128
    .local v9, min:I
    if-eqz v8, :cond_0

    .line 130
    if-ge v8, v14, :cond_2

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 136
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 138
    if-ge v9, v14, :cond_3

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    :cond_1
    :goto_1
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date : dateString :    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v7           #dateString:Ljava/lang/String;
    .end local v8           #hour:I
    .end local v9           #min:I
    .end local v10           #sDateFormat:Ljava/lang/CharSequence;
    .end local v11           #theDate:Lcom/awox/jUPnPCP/ConvertDateGetResult;
    :goto_2
    return-object v7

    .line 133
    .restart local v0       #cal:Ljava/util/Calendar;
    .restart local v7       #dateString:Ljava/lang/String;
    .restart local v8       #hour:I
    .restart local v9       #min:I
    .restart local v10       #sDateFormat:Ljava/lang/CharSequence;
    .restart local v11       #theDate:Lcom/awox/jUPnPCP/ConvertDateGetResult;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 141
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 150
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v7           #dateString:Ljava/lang/String;
    .end local v8           #hour:I
    .end local v9           #min:I
    .end local v10           #sDateFormat:Ljava/lang/CharSequence;
    .end local v11           #theDate:Lcom/awox/jUPnPCP/ConvertDateGetResult;
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method

.method public getDiscNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    .line 218
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v5, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v5, v5

    sget v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Duration:I

    int-to-long v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v0

    .line 221
    .local v0, duration:J
    sget v4, Lcom/awox/jUPnPCP/jUPnPCP;->kRendererMediaDuration_Unknown:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 227
    .end local v0           #duration:J
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFps()J
    .locals 2

    .prologue
    .line 281
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, sGenre:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Genre:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 164
    .end local v0           #sGenre:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #sGenre:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v1, v1

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Resolution:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()J
    .locals 5

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v1, v1

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_Size:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsULong(JJ)J

    move-result-wide v0

    .line 237
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getThumbnailURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sequence"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    const-string v1, ""

    .line 339
    :goto_0
    return-object v1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    invoke-virtual {v1, p1}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetThumbnailURI(Ljava/lang/String;)Lcom/awox/jUPnPCP/ThumbnailGetResult;

    move-result-object v0

    .line 333
    .local v0, thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Lcom/awox/jUPnPCP/ThumbnailGetResult;->getMURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 339
    .end local v0           #thumbnailResult:Lcom/awox/jUPnPCP/ThumbnailGetResult;
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, sTitle:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    sget v2, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;->GetInfoAsCString(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    .end local v0           #sTitle:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #sTitle:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetMimeTypeForResourceIndex(J)Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getUnknownString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getURI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->isValidResourceIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    iget v1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    int-to-long v1, v1

    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getUnknownString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->mContext:Landroid/content/Context;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 322
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public hasEntryInfo()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "CacheMediaItem : EntryInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasResInfo()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "CacheMediaItem : ResInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isValidResourceIndex()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "CacheMediaItem : BestResourceIndex invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEntry_ResInfo(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;I)V
    .locals 1
    .parameter "entryInfo"
    .parameter "resInfo"
    .parameter "nBestIndex"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;

    .line 33
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->cdsResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;

    .line 34
    iput p3, p0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->nBestResourceIndex:I

    .line 36
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasEntryInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CDSEntryInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mEntryInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->hasResInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mResInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 41
    :cond_1
    return-void
.end method
