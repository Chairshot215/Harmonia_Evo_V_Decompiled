.class public Lcom/htc/musicenhancer/DownloadAlbumInfo;
.super Ljava/lang/Object;
.source "DownloadAlbumInfo.java"


# static fields
.field private static final RETRY_COUNT:I = 0x2

.field public static final STATUS_COMPLETED:I = 0x5

.field public static final STATUS_FAIL:I = 0x6

.field public static final STATUS_FINGERPRINTING:I = 0x1

.field public static final STATUS_IDLE:I = 0x0

.field public static final STATUS_RECOGNIZING:I = 0x4

.field public static final STATUS_SEARCH_BY_FINGERPRINT:I = 0x2

.field public static final STATUS_SEARCH_BY_TEXT:I = 0x3


# instance fields
.field private mAlbumArtData:[B

.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumId:I

.field private mAlbumKey:Ljava/lang/String;

.field private mFingerprintData:Ljava/lang/String;

.field private mIsUpdateCurrent:Z

.field private mRetryCount:I

.field private mSearchingAudioId:I

.field private mStatus:I

.field private mTrackCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mRetryCount:I

    .line 30
    iput v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mStatus:I

    .line 31
    iput-object v1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mFingerprintData:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtData:[B

    .line 33
    iput-boolean v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mIsUpdateCurrent:Z

    .line 34
    iput-object v1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtPath:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mSearchingAudioId:I

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mRetryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 69
    iget v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mRetryCount:I

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeTrackCursor()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public currentStatus()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mStatus:I

    return v0
.end method

.method public getAlbumArt()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtData:[B

    return-object v0
.end method

.method public getAlbumArtpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumId:I

    return v0
.end method

.method public getAlbumKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mFingerprintData:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchingAudioId()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mSearchingAudioId:I

    return v0
.end method

.method public getTrackCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public isUpdateCurrent()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mIsUpdateCurrent:Z

    return v0
.end method

.method public setAlbumArt([B)V
    .locals 0
    .parameter "albumArtData"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtData:[B

    .line 98
    return-void
.end method

.method public setAlbumArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumArtPath:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setAlbumId(I)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumId:I

    .line 40
    return-void
.end method

.method public setAlbumKey(Ljava/lang/String;)V
    .locals 0
    .parameter "albumKey"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mAlbumKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setFingerprintData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mFingerprintData:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setIsUpdateCurrent(Z)V
    .locals 0
    .parameter "isUpdateCurrent"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mIsUpdateCurrent:Z

    .line 110
    return-void
.end method

.method public setSearchingAudioId(I)V
    .locals 0
    .parameter "audioId"

    .prologue
    .line 117
    iput p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mSearchingAudioId:I

    .line 118
    return-void
.end method

.method public setTrackCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mTrackCursor:Landroid/database/Cursor;

    .line 56
    return-void
.end method

.method public updateStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 77
    iput p1, p0, Lcom/htc/musicenhancer/DownloadAlbumInfo;->mStatus:I

    .line 78
    return-void
.end method
