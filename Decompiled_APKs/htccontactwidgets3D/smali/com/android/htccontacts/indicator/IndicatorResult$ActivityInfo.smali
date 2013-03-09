.class public final Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
.super Ljava/lang/Object;
.source "IndicatorResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/IndicatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityInfo"
.end annotation


# instance fields
.field public mActivityId:J

.field public mActivityType:Ljava/lang/String;

.field public mContactId:J

.field public mContent:Ljava/lang/String;

.field public mMessageAddr:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContent:Ljava/lang/String;

    .line 45
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    .line 46
    iput-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    .line 47
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    .line 48
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    .line 49
    iput-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public resetValue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContent:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    .line 65
    iput-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    .line 66
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    .line 67
    iput-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    .line 68
    iput-object v3, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    .locals 0
    .parameter "content"
    .parameter "timestame"
    .parameter "type"
    .parameter "cid"
    .parameter "ActivityID"
    .parameter "MessageAddr"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContent:Ljava/lang/String;

    .line 54
    iput-wide p2, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    .line 55
    iput-object p4, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    .line 56
    iput-wide p5, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    .line 57
    iput-wide p7, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    .line 58
    iput-object p9, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo: Content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contact id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ActivityID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Message Address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
