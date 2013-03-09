.class public Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;
.super Ljava/lang/Object;
.source "DMCNotificationInfo.java"


# instance fields
.field private mDownloadStoreAlbumArtPath:Ljava/lang/String;

.field private mPhotoSlideshowState:I

.field private mPlayState:I

.field private mThumbnailPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mTitle:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mThumbnailPath:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/htc/dlnamiddlelayer/PlayState;->STOPPED:Lcom/htc/dlnamiddlelayer/PlayState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/PlayState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPlayState:I

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPhotoSlideshowState:I

    .line 8
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mDownloadStoreAlbumArtPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadStoreAlbumArt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mDownloadStoreAlbumArtPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mDownloadStoreAlbumArtPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoSlideshowState()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPhotoSlideshowState:I

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPlayState:I

    return v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mThumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadStoreAlbumArt(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mDownloadStoreAlbumArtPath:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPhotoSlideshowState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPhotoSlideshowState:I

    .line 28
    return-void
.end method

.method public setPlayState(I)V
    .locals 0
    .parameter "playState"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mPlayState:I

    .line 23
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mThumbnailPath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DMCNotificationInfo;->mTitle:Ljava/lang/String;

    .line 13
    return-void
.end method
