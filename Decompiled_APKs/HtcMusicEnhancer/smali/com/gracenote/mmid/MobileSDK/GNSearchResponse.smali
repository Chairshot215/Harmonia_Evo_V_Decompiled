.class public Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;
.super Lcom/gracenote/mmid/MobileSDK/GNResponse;
.source "GNSearchResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;,
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;,
        Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
    }
.end annotation


# instance fields
.field private TIMEOUT:I

.field private albumId:Ljava/lang/String;

.field private albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

.field private albumReleaseYear:Ljava/lang/String;

.field private albumReview:[Ljava/lang/String;

.field private albumReviewReceived:Z

.field private albumReviewTimer:Ljava/util/Timer;

.field private albumReviewTimerExecuted:Z

.field private albumReviewUrl:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private albumTitleYomi:Ljava/lang/String;

.field private albumTrackCount:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private artistBetsumei:Ljava/lang/String;

.field private artistBioReceived:Z

.field private artistBioTimer:Ljava/util/Timer;

.field private artistBioTimerExecuted:Z

.field private artistBiography:[Ljava/lang/String;

.field private artistBiographyUrl:Ljava/lang/String;

.field private artistImage:[B

.field private artistImageReceived:Z

.field private artistImageTimer:Ljava/util/Timer;

.field private artistImageTimerExecuted:Z

.field private artistImageUrl:Ljava/lang/String;

.field private artistYomi:Ljava/lang/String;

.field private coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

.field private genre:Ljava/lang/String;

.field private genreId:Ljava/lang/String;

.field private getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

.field private getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

.field private getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

.field private songPosition:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

.field private trackNumber:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;

.field private trackTitleYomi:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gracenote/mmid/MobileSDK/GNCoverArt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;[Lcom/gracenote/mmid/MobileSDK/GNLinkData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "inStatus"
    .parameter "inAlbumTitle"
    .parameter "inAlbumTitleYomi"
    .parameter "inArtist"
    .parameter "inArtistYomi"
    .parameter "inArtistBetsumei"
    .parameter "inTrackTitle"
    .parameter "inTrackId"
    .parameter "inTrackTitleYomi"
    .parameter "inCoverArt"
    .parameter "inAlbumId"
    .parameter "inAlbumReleaseYear"
    .parameter "inGenre"
    .parameter "inGenreId"
    .parameter "inAlbumLinkData"
    .parameter "inTrackLinkData"
    .parameter "inAlbumTrackCount"
    .parameter "inTrackNumber"
    .parameter "inSongPosition"
    .parameter "inAlbumReviewUrl"
    .parameter "inArtistBiographyUrl"
    .parameter "inArtistImageUrl"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNResponse;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageReceived:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioReceived:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewReceived:Z

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimerExecuted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z

    .line 67
    const v1, 0xea60

    iput v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->TIMEOUT:I

    .line 81
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTitle:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTitleYomi:Ljava/lang/String;

    .line 83
    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "inArtist is null"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 84
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artist:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistYomi:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBetsumei:Ljava/lang/String;

    .line 87
    if-eqz p7, :cond_1

    const/4 v1, 0x1

    :goto_1
    const-string v2, "inTrackTitle is null"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 88
    iput-object p7, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackTitle:Ljava/lang/String;

    .line 89
    iput-object p8, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackId:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackTitleYomi:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    .line 92
    iput-object p11, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumId:Ljava/lang/String;

    .line 95
    iput-object p12, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReleaseYear:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->genre:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->genreId:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 101
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 102
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTrackCount:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackNumber:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->songPosition:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewUrl:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiographyUrl:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageUrl:Ljava/lang/String;

    .line 112
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiographyUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z

    return-void
.end method

.method static synthetic access$11(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimerExecuted:Z

    return v0
.end method

.method static synthetic access$12(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$13(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$14(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiography:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setArtistBioReceived(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    return-object v0
.end method

.method static synthetic access$17(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    return-void
.end method

.method static synthetic access$18(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimerExecuted:Z

    return-void
.end method

.method static synthetic access$19(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z

    return v0
.end method

.method static synthetic access$2(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$21(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B

    return-void
.end method

.method static synthetic access$22(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setArtistImageReceived(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    return-object v0
.end method

.method static synthetic access$24(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    return-void
.end method

.method static synthetic access$25(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$26(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z

    return-void
.end method

.method static synthetic access$3(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z

    return v0
.end method

.method static synthetic access$4(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$6(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReview:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 650
    invoke-direct {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->setAlbumReviewReceived(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    return-object v0
.end method

.method static synthetic access$9(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    return-void
.end method

.method private declared-synchronized isAlbumReviewReceived()Z
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isArtistBioReceived()Z
    .locals 1

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isArtistImageReceived()Z
    .locals 1

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setAlbumReviewReceived(Z)V
    .locals 1
    .parameter "albumReviewReceived"

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    monitor-exit p0

    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setArtistBioReceived(Z)V
    .locals 1
    .parameter "artistBioReceived"

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setArtistImageReceived(Z)V
    .locals 1
    .parameter "artistImageReceived"

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageReceived:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAlbumReviewTimer()V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 357
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    .line 363
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimer:Ljava/util/Timer;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$2;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 376
    iget v2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->TIMEOUT:I

    int-to-long v2, v2

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 377
    return-void

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startArtistBioTimer()V
    .locals 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 436
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    .line 442
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimer:Ljava/util/Timer;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$4;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 456
    iget v2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->TIMEOUT:I

    int-to-long v2, v2

    .line 442
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 457
    return-void

    .line 438
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startArtistImageTimer()V
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 514
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    .line 521
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimer:Ljava/util/Timer;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$6;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    .line 537
    iget v2, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->TIMEOUT:I

    int-to-long v2, v2

    .line 521
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 538
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumLinkData()[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 586
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    goto :goto_0
.end method

.method public getAlbumReleaseYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReleaseYear:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumReview()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 306
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReview:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReview:[Ljava/lang/String;

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReviewTimerExecuted:Z

    if-nez v1, :cond_0

    .line 316
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$1;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    invoke-direct {v0, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    .line 338
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getAlbumReviewAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetAlbumReviewAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startAlbumReviewTimer()V

    .line 342
    :cond_2
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->isAlbumReviewReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumReview:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitleYomi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTitleYomi:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTrackCount()I
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTrackCount:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 257
    const/4 v0, -0x1

    .line 260
    :goto_0
    return v0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->albumTrackCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 260
    .local v0, count:I
    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistBetsumei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBetsumei:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistBiography()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 387
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiography:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiography:[Ljava/lang/String;

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiographyUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiographyUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBioTimerExecuted:Z

    if-nez v1, :cond_0

    .line 397
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$3;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$3;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    invoke-direct {v0, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    .line 417
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistBioAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistBioAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startArtistBioTimer()V

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->isArtistBioReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistBiography:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getArtistImage()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 467
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B

    if-eqz v1, :cond_1

    .line 468
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B

    .line 501
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-boolean v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImageTimerExecuted:Z

    if-nez v1, :cond_0

    .line 476
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    new-instance v1, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;

    invoke-direct {v1, p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$5;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;)V

    invoke-direct {v0, p0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;-><init>(Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;Ljava/util/Observer;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    .line 495
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->getArtistImageAsync:Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse$GetArtistImageAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->startArtistImageTimer()V

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->isArtistImageReceived()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistImage:[B

    goto :goto_0
.end method

.method public getArtistYomi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->artistYomi:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverArt()Lcom/gracenote/mmid/MobileSDK/GNCoverArt;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->coverArt:Lcom/gracenote/mmid/MobileSDK/GNCoverArt;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->songPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackLinkData()[Lcom/gracenote/mmid/MobileSDK/GNLinkData;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    .line 603
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackLinkData:[Lcom/gracenote/mmid/MobileSDK/GNLinkData;

    goto :goto_0
.end method

.method public getTrackNumber()I
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 241
    const/4 v0, -0x1

    .line 244
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackNumber:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    .local v0, trackNum:I
    goto :goto_0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitleYomi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNSearchResponse;->trackTitleYomi:Ljava/lang/String;

    return-object v0
.end method
