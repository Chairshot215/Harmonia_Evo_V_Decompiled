.class public abstract Lcom/htc/dlnamiddlelayer/CacheItem;
.super Ljava/lang/Object;
.source "CacheItem.java"


# instance fields
.field protected mEntryInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

.field protected mResInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

.field protected nIndex:J

.field protected sDiscNumber:Ljava/lang/String;

.field protected sTrackNumber:Ljava/lang/String;

.field protected sURI:Ljava/lang/String;

.field protected thumbFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    .line 7
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    .line 8
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mEntryInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 9
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mResInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    .line 11
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->thumbFilePath:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sDiscNumber:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sTrackNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAlbum()Ljava/lang/String;
.end method

.method public abstract getArtist()Ljava/lang/String;
.end method

.method public abstract getBitRate()J
.end method

.method public abstract getComposer()Ljava/lang/String;
.end method

.method public abstract getContainerPath()Ljava/lang/String;
.end method

.method public abstract getDate()Ljava/lang/String;
.end method

.method public abstract getDiscNumber()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public getEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mEntryInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    return-object v0
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFps()J
.end method

.method public abstract getGenre()Ljava/lang/String;
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    return-wide v0
.end method

.method public getResInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->mResInfo:Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    return-object v0
.end method

.method public abstract getResolution()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->thumbFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->thumbFilePath:Ljava/lang/String;

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getThumbnailURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, ""

    return-object v0
.end method

.method public getThumbnailURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTrackNumber()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->sURI:Ljava/lang/String;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setIndex(J)V
    .locals 0
    .parameter "index"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->nIndex:J

    .line 23
    return-void
.end method

.method public setThumbFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/CacheItem;->thumbFilePath:Ljava/lang/String;

    .line 46
    return-void
.end method
