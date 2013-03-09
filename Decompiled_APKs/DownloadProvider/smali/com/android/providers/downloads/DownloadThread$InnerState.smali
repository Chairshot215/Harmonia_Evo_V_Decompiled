.class Lcom/android/providers/downloads/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field mBytesSync:J

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field mSyncThreshold:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mSyncThreshold:J

    .line 161
    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSync:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>()V

    return-void
.end method
