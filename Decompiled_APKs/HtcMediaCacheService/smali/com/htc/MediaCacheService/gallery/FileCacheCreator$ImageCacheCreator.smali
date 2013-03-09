.class public Lcom/htc/MediaCacheService/gallery/FileCacheCreator$ImageCacheCreator;
.super Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
.source "FileCacheCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/gallery/FileCacheCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/htc/MediaCacheService/gallery/FileCacheCreator;-><init>()V

    .line 148
    return-void
.end method


# virtual methods
.method public CompareFileCacheEntry(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z
    .locals 1
    .parameter "entry"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 194
    check-cast p1, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    .end local p1
    invoke-static {p1, p2, p3}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->compareFileCacheEntry(Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;[J[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public CreateCache([J[Ljava/lang/String;I)Lcom/htc/MediaCacheService/gallery/FileCache;
    .locals 1
    .parameter "arLong"
    .parameter "arStr"
    .parameter "nEtryDefualtSate"

    .prologue
    .line 152
    new-instance v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;-><init>([J[Ljava/lang/String;I)V

    return-object v0
.end method

.method public CreateMediaCacheContentValue(Lcom/htc/MediaCacheService/gallery/FileCache;)Landroid/content/ContentValues;
    .locals 3
    .parameter "entry"

    .prologue
    .line 204
    move-object v0, p1

    check-cast v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    .line 205
    .local v0, img:Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;
    iget-object v1, v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    iget-object v2, v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->CreateMediaCacheContentValue([J[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    return-object v1
.end method

.method public GetCacheProviderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public GetDataIdx()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public GetId(Lcom/htc/MediaCacheService/gallery/FileCache;)J
    .locals 3
    .parameter "entry"

    .prologue
    .line 172
    move-object v0, p1

    check-cast v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    .line 173
    .local v0, img:Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;
    iget-object v1, v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->mArrL:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    return-wide v1
.end method

.method public GetId([J)J
    .locals 2
    .parameter "arrL"

    .prologue
    .line 167
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public GetIdIdx()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public GetLongValue(Landroid/database/Cursor;)[J
    .locals 1
    .parameter "cur"

    .prologue
    .line 157
    invoke-static {p1}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->GetLongValue(Landroid/database/Cursor;)[J

    move-result-object v0

    return-object v0
.end method

.method public GetMediaProviderProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->IMAGES_MEDIAPROVIDER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public GetMediaProviderUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 1
    .parameter "cur"

    .prologue
    .line 162
    invoke-static {p1}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->GetStringValue(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetData(Lcom/htc/MediaCacheService/gallery/FileCache;[J[Ljava/lang/String;)Z
    .locals 1
    .parameter "entry"
    .parameter "arrL"
    .parameter "arrS"

    .prologue
    .line 199
    check-cast p1, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;

    .end local p1
    invoke-static {p1, p2, p3}, Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;->SetData(Lcom/htc/MediaCacheService/gallery/FileCache$ImageCacheEntry;[J[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
