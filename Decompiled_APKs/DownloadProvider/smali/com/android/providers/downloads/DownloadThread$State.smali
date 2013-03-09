.class Lcom/android/providers/downloads/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mBytesNotified:J

.field public mContinuingDownload:Z

.field public mCountRetry:Z

.field public mCurrentBytes:J

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mHeaderETag:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNewUri:Ljava/lang/String;

.field public mRedirectCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStream:Ljava/io/FileOutputStream;

.field public mTimeLastNotification:J

.field public mTotalBytes:J

.field mWifiControl:Z


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 126
    iput v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 127
    iput v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 129
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mWifiControl:Z

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 136
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 138
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 139
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 140
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 143
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 146
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 147
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 148
    return-void
.end method
