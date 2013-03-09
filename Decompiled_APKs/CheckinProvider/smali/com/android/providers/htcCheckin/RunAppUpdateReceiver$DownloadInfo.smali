.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
.super Ljava/lang/Object;
.source "RunAppUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadInfo"
.end annotation


# instance fields
.field nApkSize:J

.field nOrder:I

.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .parameter "pSource"
    .parameter "pOrder"
    .parameter "pSize"

    .prologue
    .line 1399
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->source:Ljava/lang/String;

    .line 1400
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->source:Ljava/lang/String;

    .line 1401
    iput p2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->nOrder:I

    .line 1402
    iput-wide p3, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->nApkSize:J

    .line 1403
    return-void
.end method

.method static synthetic access$2100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getApkSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1394
    invoke-direct {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getOrder()I

    move-result v0

    return v0
.end method

.method private getApkSize()J
    .locals 2

    .prologue
    .line 1411
    iget-wide v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->nApkSize:J

    return-wide v0
.end method

.method private getOrder()I
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->nOrder:I

    return v0
.end method

.method private getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->source:Ljava/lang/String;

    return-object v0
.end method
