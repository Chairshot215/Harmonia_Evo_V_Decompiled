.class public final Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
.super Ljava/lang/Object;
.source "IndicatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/IndicatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusInfo"
.end annotation


# instance fields
.field public mStatusData1:Ljava/lang/String;

.field public mStatusDataID:J

.field public mStatusIconRes:I

.field public mStatusLabelRes:I

.field public mStatusMessage:Ljava/lang/String;

.field public mStatusMimetype:Ljava/lang/String;

.field public mStatusPackage:Ljava/lang/String;

.field public mStatusPostID:Ljava/lang/String;

.field public mStatusTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 34
    iput v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 35
    iput v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J

    return-void
.end method
