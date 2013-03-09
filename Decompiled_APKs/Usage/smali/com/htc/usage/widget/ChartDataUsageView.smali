.class public Lcom/htc/usage/widget/ChartDataUsageView;
.super Lcom/htc/usage/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/usage/widget/ChartDataUsageView$DataAxis;,
        Lcom/htc/usage/widget/ChartDataUsageView$TimeAxis;,
        Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:J = 0xfaL

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LIMIT_SWEEPS_TO_VALID_DATA:Z = false

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final MSG_UPDATE_AXIS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ChartDataUsageView"


# instance fields
.field private mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/htc/usage/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

.field private mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

.field private mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

.field private mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

.field private mVertListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/usage/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/usage/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    new-instance v0, Lcom/htc/usage/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/htc/usage/widget/ChartDataUsageView$2;-><init>(Lcom/htc/usage/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHorizListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    .line 325
    new-instance v0, Lcom/htc/usage/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/htc/usage/widget/ChartDataUsageView$3;-><init>(Lcom/htc/usage/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mVertListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    .line 90
    new-instance v0, Lcom/htc/usage/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/htc/usage/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/htc/usage/widget/InvertedChartAxis;

    new-instance v2, Lcom/htc/usage/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/htc/usage/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/htc/usage/widget/InvertedChartAxis;-><init>(Lcom/htc/usage/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->init(Lcom/htc/usage/widget/ChartAxis;Lcom/htc/usage/widget/ChartAxis;)V

    .line 92
    new-instance v0, Lcom/htc/usage/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/htc/usage/widget/ChartDataUsageView$1;-><init>(Lcom/htc/usage/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/usage/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/usage/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/usage/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/usage/widget/ChartDataUsageView;Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/usage/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/usage/widget/ChartDataUsageView;)Lcom/htc/usage/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/htc/usage/widget/ChartDataUsageView;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v0

    return-object v0
.end method

.method private clearUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 2
    .parameter "sweep"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 323
    return-void
.end method

.method private static findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .parameter "builder"
    .parameter "key"
    .parameter "bootstrap"

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 662
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 663
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 664
    invoke-static {p0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 665
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 666
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 668
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/htc/usage/widget/ChartSweepView;Z)V
    .locals 4
    .parameter "sweep"
    .parameter "force"

    .prologue
    const/16 v2, 0x64

    .line 315
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 319
    :cond_1
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .prologue
    .line 279
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 282
    .local v3, maxEstimate:J
    const-wide v1, 0x7fffffffffffffffL

    .line 283
    .local v1, interestLine:J
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/htc/usage/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 289
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 290
    const-wide v1, 0x7fffffffffffffffL

    .line 293
    :cond_1
    const-wide/16 v5, 0x7

    mul-long/2addr v5, v1

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    const/4 v0, 0x1

    .line 294
    .local v0, estimateVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v0}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 295
    return-void

    .line 285
    .end local v0           #estimateVisible:Z
    :cond_2
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/htc/usage/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 293
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 442
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 443
    .local v0, left:J
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 446
    .local v2, right:J
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 448
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V
    .locals 23
    .parameter "activeSweep"

    .prologue
    .line 219
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mVertMax:J

    .line 221
    .local v7, max:J
    const-wide/16 v17, 0x0

    .line 222
    .local v17, newMax:J
    if-eqz p1, :cond_0

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/htc/usage/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 224
    .local v5, adjustAxis:I
    if-lez v5, :cond_5

    .line 226
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 236
    .end local v5           #adjustAxis:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 237
    .local v13, maxSweep:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 238
    .local v11, maxSeries:J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 239
    .local v15, maxVisible:J
    const-wide v19, 0x80000000L

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 240
    .local v9, maxDefault:J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 243
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 244
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/usage/widget/ChartDataUsageView;->mVertMax:J

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 247
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValidRange(JJ)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValidRange(JJ)V

    .line 250
    if-eqz v6, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mGrid:Lcom/htc/usage/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/usage/widget/ChartGridView;->invalidate()V

    .line 258
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/htc/usage/widget/ChartSweepView;->updateValueFromPosition()V

    .line 265
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->layoutSweep(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 268
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->layoutSweep(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 272
    .end local v6           #changed:Z
    :cond_4
    return-void

    .line 227
    .end local v9           #maxDefault:J
    .end local v11           #maxSeries:J
    .end local v13           #maxSweep:J
    .end local v15           #maxVisible:J
    .restart local v5       #adjustAxis:I
    :cond_5
    if-gez v5, :cond_6

    .line 229
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 231
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter "stats"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 172
    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 176
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 177
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 178
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 179
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->requestLayout()V

    .line 180
    return-void

    .line 172
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7
    .parameter "policy"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 183
    if-nez p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 186
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 212
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 201
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 209
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->requestLayout()V

    .line 211
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/htc/usage/widget/ChartSweepView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/htc/usage/widget/ChartSweepView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 163
    iput-object p1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 165
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 166
    invoke-direct {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->requestLayout()V

    .line 168
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/htc/usage/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/htc/usage/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/htc/usage/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateNetworkSeriesPath()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 672
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setForceGenerateNewPath(Z)V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setForceGenerateNewPath(Z)V

    .line 679
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-super {p0}, Lcom/htc/usage/widget/ChartView;->onFinishInflate()V

    .line 109
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartGridView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mGrid:Lcom/htc/usage/widget/ChartGridView;

    .line 110
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    .line 111
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    .line 112
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 114
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartSweepView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    .line 115
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartSweepView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    .line 116
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartSweepView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    .line 117
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/htc/usage/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartSweepView;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    .line 120
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/htc/usage/widget/ChartSweepView;->setValidRangeDynamic(Lcom/htc/usage/widget/ChartSweepView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 121
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setValidRangeDynamic(Lcom/htc/usage/widget/ChartSweepView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/htc/usage/widget/ChartSweepView;->setValidRangeDynamic(Lcom/htc/usage/widget/ChartSweepView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setValidRangeDynamic(Lcom/htc/usage/widget/ChartSweepView;Lcom/htc/usage/widget/ChartSweepView;)V

    .line 126
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    new-array v1, v4, [Lcom/htc/usage/widget/ChartSweepView;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->setNeighbors([Lcom/htc/usage/widget/ChartSweepView;)V

    .line 127
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    new-array v1, v4, [Lcom/htc/usage/widget/ChartSweepView;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->setNeighbors([Lcom/htc/usage/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    new-array v1, v6, [Lcom/htc/usage/widget/ChartSweepView;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->setNeighbors([Lcom/htc/usage/widget/ChartSweepView;)V

    .line 129
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    new-array v1, v6, [Lcom/htc/usage/widget/ChartSweepView;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->setNeighbors([Lcom/htc/usage/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHorizListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->addOnSweepListener(Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;)V

    .line 132
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mHorizListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->addOnSweepListener(Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;)V

    .line 133
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mVertListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->addOnSweepListener(Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;)V

    .line 134
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mVertListener:Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->addOnSweepListener(Lcom/htc/usage/widget/ChartSweepView$OnSweepListener;)V

    .line 136
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setDragInterval(J)V

    .line 137
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartSweepView;->setDragInterval(J)V

    .line 140
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/htc/usage/widget/ChartSweepView;->setClickable(Z)V

    .line 141
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/htc/usage/widget/ChartSweepView;->setFocusable(Z)V

    .line 142
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/htc/usage/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/htc/usage/widget/ChartSweepView;->setFocusable(Z)V

    .line 146
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mGrid:Lcom/htc/usage/widget/ChartGridView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartGridView;->init(Lcom/htc/usage/widget/ChartAxis;Lcom/htc/usage/widget/ChartAxis;)V

    .line 147
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->init(Lcom/htc/usage/widget/ChartAxis;Lcom/htc/usage/widget/ChartAxis;)V

    .line 148
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    iget-object v2, p0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->init(Lcom/htc/usage/widget/ChartAxis;Lcom/htc/usage/widget/ChartAxis;)V

    .line 149
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->init(Lcom/htc/usage/widget/ChartAxis;)V

    .line 150
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->init(Lcom/htc/usage/widget/ChartAxis;)V

    .line 151
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepWarning:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->init(Lcom/htc/usage/widget/ChartAxis;)V

    .line 152
    iget-object v0, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLimit:Lcom/htc/usage/widget/ChartSweepView;

    iget-object v1, p0, Lcom/htc/usage/widget/ChartView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/htc/usage/widget/ChartSweepView;->init(Lcom/htc/usage/widget/ChartAxis;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/htc/usage/widget/ChartDataUsageView;->setActivated(Z)V

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 358
    goto :goto_0

    .line 361
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 362
    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/usage/widget/ChartDataUsageView;->mListener:Lcom/htc/usage/widget/ChartDataUsageView$DataUsageChartListener;

    .line 159
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 401
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mGrid:Lcom/htc/usage/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartGridView;->setBounds(JJ)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 406
    .local v10, historyStart:J
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 408
    .local v8, historyEnd:J
    const-wide v20, 0x7fffffffffffffffL

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 410
    .local v18, validStart:J
    :goto_0
    const-wide/high16 v20, -0x8000

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 418
    .local v16, validEnd:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValidRange(JJ)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/usage/widget/ChartSweepView;->setValidRange(JJ)V

    .line 423
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 424
    .local v6, halfRange:J
    move-wide/from16 v12, v16

    .line 425
    .local v12, sweepMax:J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 427
    .local v14, sweepMin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepLeft:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSweepRight:Lcom/htc/usage/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/htc/usage/widget/ChartSweepView;->setValue(J)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/widget/ChartDataUsageView;->requestLayout()V

    .line 431
    if-eqz v5, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartDataUsageView;->mDetailSeries:Lcom/htc/usage/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/usage/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 436
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/usage/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/htc/usage/widget/ChartSweepView;)V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/htc/usage/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 439
    return-void

    .line 408
    .end local v6           #halfRange:J
    .end local v12           #sweepMax:J
    .end local v14           #sweepMin:J
    .end local v16           #validEnd:J
    .end local v18           #validStart:J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 410
    .restart local v18       #validStart:J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
