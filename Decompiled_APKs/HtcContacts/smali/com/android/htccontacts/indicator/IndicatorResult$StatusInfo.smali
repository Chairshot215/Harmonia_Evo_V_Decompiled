.class public final Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
.super Ljava/lang/Object;
.source "IndicatorResult.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/IndicatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusInfo"
.end annotation


# instance fields
.field public mHasImAccount:Z

.field public mPresence:I

.field public mStatusIconRes:I

.field public mStatusLabelRes:I

.field public mStatusMessage:Ljava/lang/String;

.field public mStatusPackage:Ljava/lang/String;

.field public mStatusTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    .line 39
    iput v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusLabelRes:I

    .line 40
    iput v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    .line 41
    iput v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mPresence:I

    .line 42
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mHasImAccount:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
