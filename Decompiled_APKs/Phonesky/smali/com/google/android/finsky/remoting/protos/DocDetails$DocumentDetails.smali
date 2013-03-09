.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentDetails"
.end annotation


# instance fields
.field private albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

.field private appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

.field private artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

.field private bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

.field private cachedSize:I

.field private hasAlbumDetails:Z

.field private hasAppDetails:Z

.field private hasArtistDetails:Z

.field private hasBookDetails:Z

.field private hasMagazineDetails:Z

.field private hasSongDetails:Z

.field private hasSubscriptionDetails:Z

.field private hasTvEpisodeDetails:Z

.field private hasTvSeasonDetails:Z

.field private hasTvShowDetails:Z

.field private hasVideoDetails:Z

.field private magazineDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

.field private songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

.field private subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

.field private tvEpisodeDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

.field private tvSeasonDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

.field private tvShowDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

.field private videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    .line 35
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    .line 55
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 75
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 95
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 115
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    .line 135
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    .line 155
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->magazineDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    .line 175
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvShowDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    .line 195
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvSeasonDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    .line 215
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvEpisodeDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    return-object v0
.end method

.method public getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    return-object v0
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSerializedSize()I

    .line 303
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    return v0
.end method

.method public getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->magazineDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 334
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasMagazineDetails()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 338
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvShowDetails()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 342
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvShowDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvSeasonDetails()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 346
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvEpisodeDetails()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 350
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    :cond_a
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->cachedSize:I

    .line 354
    return v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    return-object v0
.end method

.method public getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvEpisodeDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    return-object v0
.end method

.method public getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvSeasonDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    return-object v0
.end method

.method public getTvShowDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvShowDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    return-object v0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    return-object v0
.end method

.method public hasAlbumDetails()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails:Z

    return v0
.end method

.method public hasAppDetails()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails:Z

    return v0
.end method

.method public hasArtistDetails()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails:Z

    return v0
.end method

.method public hasBookDetails()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails:Z

    return v0
.end method

.method public hasMagazineDetails()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasMagazineDetails:Z

    return v0
.end method

.method public hasSongDetails()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails:Z

    return v0
.end method

.method public hasSubscriptionDetails()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails:Z

    return v0
.end method

.method public hasTvEpisodeDetails()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvEpisodeDetails:Z

    return v0
.end method

.method public hasTvSeasonDetails()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvSeasonDetails:Z

    return v0
.end method

.method public hasTvShowDetails()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvShowDetails:Z

    return v0
.end method

.method public hasVideoDetails()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 363
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    :sswitch_0
    return-object p0

    .line 373
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;-><init>()V

    .line 374
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 375
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setAppDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 379
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;-><init>()V

    .line 380
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 381
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 385
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;-><init>()V

    .line 386
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 387
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setArtistDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 391
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;-><init>()V

    .line 392
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setSongDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 397
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;-><init>()V

    .line 398
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 403
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;-><init>()V

    .line 404
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 405
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setVideoDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 409
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;-><init>()V

    .line 410
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 411
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 415
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;-><init>()V

    .line 416
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setMagazineDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 421
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;-><init>()V

    .line 422
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 423
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setTvShowDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto :goto_0

    .line 427
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;-><init>()V

    .line 428
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 429
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setTvSeasonDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto/16 :goto_0

    .line 433
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;-><init>()V

    .line 434
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->setTvEpisodeDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    goto/16 :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->albumDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    .line 44
    return-object p0
.end method

.method public setAppDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails:Z

    .line 23
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->appDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    .line 24
    return-object p0
.end method

.method public setArtistDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails:Z

    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->artistDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    .line 64
    return-object p0
.end method

.method public setBookDetails(Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails:Z

    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->bookDetails_:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    .line 104
    return-object p0
.end method

.method public setMagazineDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasMagazineDetails:Z

    .line 163
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->magazineDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    .line 164
    return-object p0
.end method

.method public setSongDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails:Z

    .line 83
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->songDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 84
    return-object p0
.end method

.method public setSubscriptionDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails:Z

    .line 143
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->subscriptionDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    .line 144
    return-object p0
.end method

.method public setTvEpisodeDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvEpisodeDetails:Z

    .line 223
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvEpisodeDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    .line 224
    return-object p0
.end method

.method public setTvSeasonDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvSeasonDetails:Z

    .line 203
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvSeasonDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    .line 204
    return-object p0
.end method

.method public setTvShowDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvShowDetails:Z

    .line 183
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->tvShowDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    .line 184
    return-object p0
.end method

.method public setVideoDetails(Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;)Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails:Z

    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->videoDetails_:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    .line 124
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAlbumDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasArtistDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSongDetails()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasBookDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasVideoDetails()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 279
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasSubscriptionDetails()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 282
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasMagazineDetails()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 283
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 285
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvShowDetails()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 286
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvShowDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvShowDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvSeasonDetails()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 291
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasTvEpisodeDetails()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 292
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 294
    :cond_a
    return-void
.end method
