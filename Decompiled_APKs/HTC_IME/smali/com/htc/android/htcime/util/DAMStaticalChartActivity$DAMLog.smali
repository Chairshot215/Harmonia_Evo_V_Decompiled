.class public Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
.super Ljava/lang/Object;
.source "DAMStaticalChartActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/DAMStaticalChartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DAMLog"
.end annotation


# instance fields
.field public m_lastAvgDiff:F

.field public m_time:J

.field final synthetic this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;FJ)V
    .locals 0
    .parameter
    .parameter "diff"
    .parameter "time"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->this$0:Lcom/htc/android/htcime/util/DAMStaticalChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p2, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_lastAvgDiff:F

    .line 242
    iput-wide p3, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_time:J

    .line 243
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    .line 247
    move-object v0, p1

    check-cast v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    .line 249
    .local v0, another:Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    iget-wide v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_time:J

    iget-wide v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 250
    const/4 v1, 0x1

    .line 253
    :goto_0
    return v1

    .line 251
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_time:J

    iget-wide v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_time:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 252
    const/4 v1, -0x1

    goto :goto_0

    .line 253
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
