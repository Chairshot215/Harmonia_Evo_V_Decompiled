.class public Lcom/htc/musicenhancer/GenerateFingerprint;
.super Ljava/lang/Object;
.source "GenerateFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;,
        Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;
    }
.end annotation


# instance fields
.field private final SEARCHTRACKCOUNT:I

.field private final TAG:Ljava/lang/String;

.field private mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field private mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

.field private mIsBusy:Z

.field private mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "[GenerateFingerprint]"

    iput-object v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->TAG:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    .line 22
    iput-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    .line 23
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->SEARCHTRACKCOUNT:I

    .line 26
    iput-object p1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 27
    return-void
.end method

.method static synthetic access$002(Lcom/htc/musicenhancer/GenerateFingerprint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/GenerateFingerprint;)Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/musicenhancer/GenerateFingerprint;Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;)Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    return-object p1
.end method

.method private generateFingerprintByAudidId(ILandroid/database/Cursor;)Z
    .locals 7
    .parameter "audioId"
    .parameter "trackCursor"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_2

    .line 112
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 115
    .local v0, currAudioId:I
    if-ne v0, p1, :cond_1

    .line 116
    const-string v5, "_data"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    const-string v4, "[GenerateFingerprint]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateFingerprintByTrackName fingerprint filepath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start to Generate fingerprint. Filepath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 122
    iput-boolean v3, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    .line 123
    const-string v4, "Generating fingerprint from file."

    invoke-static {v4}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    iget-object v5, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-static {v4, v5, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->fingerprintMIDFileFromFile(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V

    .line 136
    .end local v0           #currAudioId:I
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    :goto_1
    return v3

    .line 128
    .restart local v0       #currAudioId:I
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #filePath:Ljava/lang/String;
    :cond_0
    const-string v3, "This file didn\'t exist. return false in"

    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    move v3, v4

    .line 129
    goto :goto_1

    .line 132
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .end local v0           #currAudioId:I
    :cond_2
    move v3, v4

    .line 136
    goto :goto_1
.end method

.method private unknownAlbum(I)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Lcom/htc/musicenhancer/FingerprintResult;

    invoke-direct {v0}, Lcom/htc/musicenhancer/FingerprintResult;-><init>()V

    .line 157
    .local v0, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/FingerprintResult;->setState(I)V

    .line 158
    iget-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    invoke-interface {v1, p1, v0}, Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;->onCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V

    .line 160
    .end local v0           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :cond_0
    return-void
.end method

.method private unknownError(I)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/htc/musicenhancer/FingerprintResult;

    invoke-direct {v0}, Lcom/htc/musicenhancer/FingerprintResult;-><init>()V

    .line 165
    .local v0, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/FingerprintResult;->setState(I)V

    .line 166
    iget-object v1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    invoke-interface {v1, p1, v0}, Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;->onCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V

    .line 168
    .end local v0           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/htc/musicenhancer/GenerateFingerprint;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    invoke-static {v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->cancel(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    .line 144
    :cond_0
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    return v0
.end method

.method public registerOnCompletedListener(Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    .line 148
    return-void
.end method

.method public start(Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    .locals 13
    .parameter "downloadAlbumInfo"
    .parameter "audioId"

    .prologue
    const/4 v12, 0x1

    .line 30
    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1, v12}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->updateStatus(I)V

    .line 32
    const/4 v4, 0x0

    .line 34
    .local v4, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :try_start_0
    new-instance v9, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    invoke-direct {v9, p0, p1}, Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;-><init>(Lcom/htc/musicenhancer/GenerateFingerprint;Lcom/htc/musicenhancer/DownloadAlbumInfo;)V

    iput-object v9, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    .line 36
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 37
    .local v8, trackCursor:Landroid/database/Cursor;
    const-string v9, "[GenerateFingerprint]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trackCursor count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v9, "[GenerateFingerprint]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fingerprint album id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    const-string v9, "album"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, albumName:Ljava/lang/String;
    const-string v9, "<unknown>"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 46
    const-string v9, "Update album error for unknown album"

    invoke-static {v9}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/htc/musicenhancer/GenerateFingerprint;->unknownAlbum(I)V

    .line 107
    .end local v0           #albumName:Ljava/lang/String;
    .end local v4           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .end local v8           #trackCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #albumName:Ljava/lang/String;
    .restart local v4       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v8       #trackCursor:Landroid/database/Cursor;
    :cond_1
    const/4 v7, 0x0

    .line 55
    .local v7, trackCount:I
    const/4 v9, -0x1

    if-eq p2, v9, :cond_2

    .line 56
    invoke-direct {p0, p2, v8}, Lcom/htc/musicenhancer/GenerateFingerprint;->generateFingerprintByAudidId(ILandroid/database/Cursor;)Z

    move-result v6

    .line 57
    .local v6, isGenerate:Z
    if-eq v6, v12, :cond_0

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .end local v6           #isGenerate:Z
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0x14

    if-ge v7, v9, :cond_4

    .line 64
    const-string v9, "_data"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, filePath:Ljava/lang/String;
    const-string v9, "[GenerateFingerprint]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fingerprint filepath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start to Generate fingerprint. Filepath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 68
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mIsBusy:Z

    .line 71
    const-string v9, "Generating fingerprint from file."

    invoke-static {v9}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 72
    iget-object v9, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mFingerprintResultReadyObject:Lcom/htc/musicenhancer/GenerateFingerprint$FingerprintResultReadyObject;

    iget-object v10, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mConfig:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-static {v9, v10, v3}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->fingerprintMIDFileFromFile(Lcom/gracenote/mmid/MobileSDK/GNFingerprintResultReady;Lcom/gracenote/mmid/MobileSDK/GNConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v7           #trackCount:I
    .end local v8           #trackCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 95
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :goto_2
    const-string v9, "[GenerateFingerprint]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught IllegalArgumentException in start. ex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/htc/musicenhancer/GenerateFingerprint;->unknownError(I)V

    goto/16 :goto_0

    .line 76
    .restart local v0       #albumName:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v7       #trackCount:I
    .restart local v8       #trackCursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v9, "This file didn\'t exist. move to next"

    invoke-static {v9}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 77
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 78
    add-int/lit8 v7, v7, 0x1

    .line 80
    goto/16 :goto_1

    .line 84
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    iget-object v9, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    if-eqz v9, :cond_0

    .line 86
    const-string v9, "Update error. Can\'t find any track for this album."

    invoke-static {v9}, Lcom/htc/musicenhancer/EnhancerService;->writeLog(Ljava/lang/String;)V

    .line 87
    new-instance v5, Lcom/htc/musicenhancer/FingerprintResult;

    invoke-direct {v5}, Lcom/htc/musicenhancer/FingerprintResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v4           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .local v5, fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v5, v9}, Lcom/htc/musicenhancer/FingerprintResult;->setState(I)V

    .line 90
    iget-object v9, p0, Lcom/htc/musicenhancer/GenerateFingerprint;->mOnCompletedListener:Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v10

    invoke-interface {v9, v10, v5}, Lcom/htc/musicenhancer/GenerateFingerprint$OnCompletedListener;->onCompleted(ILcom/htc/musicenhancer/FingerprintResult;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .end local v5           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v4       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    goto/16 :goto_0

    .line 97
    .end local v0           #albumName:Ljava/lang/String;
    .end local v7           #trackCount:I
    .end local v8           #trackCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 98
    .local v1, ex:Ljava/lang/Exception;
    :goto_4
    const-string v9, "[GenerateFingerprint]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught unknown ex in start. ex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 104
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :cond_5
    const-string v9, "[GenerateFingerprint]"

    const-string v10, "downloadAlbumInfo is null"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .restart local v0       #albumName:Ljava/lang/String;
    .restart local v5       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v7       #trackCount:I
    .restart local v8       #trackCursor:Landroid/database/Cursor;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v4       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    goto :goto_4

    .line 94
    .end local v4           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v5       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    .restart local v4       #fingerprintResult:Lcom/htc/musicenhancer/FingerprintResult;
    goto :goto_2
.end method
