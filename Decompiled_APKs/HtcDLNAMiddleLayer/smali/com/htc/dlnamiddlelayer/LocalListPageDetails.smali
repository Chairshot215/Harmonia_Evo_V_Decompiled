.class public Lcom/htc/dlnamiddlelayer/LocalListPageDetails;
.super Ljava/lang/Object;
.source "LocalListPageDetails.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemDetails(IIILcom/htc/dlnamiddlelayer/DLNAServiceObject;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 5
    .parameter "cookie"
    .parameter "id"
    .parameter "filterCapability"
    .parameter "serviceObject"

    .prologue
    .line 9
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    const-wide/16 v2, 0x0

    invoke-virtual {p3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;-><init>(JLandroid/content/Context;)V

    .line 10
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 12
    invoke-static {v0, p1, p3}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getAudioInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    .line 13
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, p3}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getAudioDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    .line 24
    :cond_0
    :goto_0
    new-instance v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v1}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    .line 25
    .local v1, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 26
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 29
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getGenre()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getComposer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 31
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getResolution()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 34
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getBitRate()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 35
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDuration()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 36
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getFps()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 37
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getContainerPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 39
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDiscNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDiscNumber:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getTrackNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTrackNumber:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getStatus()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentStatus:Ljava/lang/String;

    .line 43
    const-string v2, ""

    iput-object v2, v1, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 45
    return-object v1

    .line 15
    .end local v1           #details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 19
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    goto :goto_0
.end method
