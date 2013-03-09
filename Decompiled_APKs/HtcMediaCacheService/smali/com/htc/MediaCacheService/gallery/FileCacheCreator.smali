.class public Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
.super Ljava/lang/Object;
.source "FileCacheCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/gallery/FileCacheCreator$ImageCacheCreator;,
        Lcom/htc/MediaCacheService/gallery/FileCacheCreator$VideoCacheCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public CompareFileCacheEntry(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z
    .locals 1
    .parameter "entry"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public CreateCache([J[Ljava/lang/String;I)Lcom/htc/MediaCacheService/gallery/FileCache;
    .locals 1
    .parameter "arLong"
    .parameter "arStr"
    .parameter "nEtryDefualtSate"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public CreateMediaCacheContentValue(Lcom/htc/MediaCacheService/gallery/FileCache;)Landroid/content/ContentValues;
    .locals 1
    .parameter "entry"

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetCacheProviderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetDataIdx()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public GetId(Lcom/htc/MediaCacheService/gallery/FileCache;)J
    .locals 2
    .parameter "entry"

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetId([J)J
    .locals 2
    .parameter "arrL"

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetIdIdx()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public GetLongValue(Landroid/database/Cursor;)[J
    .locals 1
    .parameter "cur"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetMediaProviderProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetMediaProviderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 1
    .parameter "cur"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public SetData(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z
    .locals 1
    .parameter "entry"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
