.class public abstract Lcom/htc/reportagent/budget/flow/Flow;
.super Ljava/lang/Object;
.source "Flow.java"


# static fields
.field public static final KEY_APP_USAGE:I = 0x2

.field public static final KEY_BASELINE:I = 0x0

.field public static final KEY_STATS:I = 0x1

.field private static final MAX_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final _DEBUG:Z


# instance fields
.field private mKeys:[Ljava/lang/String;

.field private mPref:Lcom/htc/reportagent/budget/BudgetPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/htc/reportagent/budget/flow/Flow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/budget/flow/Flow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/reportagent/budget/BudgetPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "keyBaseline"
    .parameter "keyBytes"
    .parameter "keyUsage"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/htc/reportagent/budget/flow/Flow;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 24
    iget-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 25
    iget-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 26
    return-void
.end method


# virtual methods
.method public appUsageUpdated(J)V
    .locals 7
    .parameter "pkgSize"

    .prologue
    const/4 v6, 0x2

    .line 79
    invoke-virtual {p0, v6}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v0

    .line 80
    .local v0, value:J
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/flow/Flow;->getTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appUsageUpdated()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkgSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/reportagent/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_0
    add-long v2, v0, p1

    invoke-virtual {p0, v6, v2, v3}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 85
    return-void
.end method

.method protected get(I)J
    .locals 2
    .parameter "key"

    .prologue
    .line 38
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 40
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    iget-object v1, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/reportagent/budget/BudgetPreference;->get(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected abstract getSystemTrafficStats()J
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public isAvailableByPercentage(JJ)Z
    .locals 10
    .parameter "expectedSize"
    .parameter "percentage"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    cmp-long v7, v8, p3

    if-lez v7, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v5

    .line 121
    :cond_1
    cmp-long v7, v8, p3

    if-nez v7, :cond_2

    move v5, v6

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    long-to-float v7, p3

    const/high16 v8, 0x42c8

    div-float v4, v7, v8

    .line 127
    .local v4, expectedPercentage:F
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v7

    long-to-float v7, v7

    invoke-virtual {p0, v5}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v8

    long-to-float v8, v8

    div-float v2, v7, v8

    .line 128
    .local v2, currentPercentage:F
    sub-float v3, v4, v2

    .line 130
    .local v3, diffPercentage:F
    invoke-virtual {p0, v5}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v7

    long-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-long v0, v7

    .line 132
    .local v0, availSize:J
    cmp-long v7, v0, p1

    if-gez v7, :cond_0

    move v5, v6

    .line 138
    goto :goto_0
.end method

.method public isAvailableBySize(JJ)Z
    .locals 9
    .parameter "expectedSize"
    .parameter "limit"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    cmp-long v6, v7, p3

    if-lez v6, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v4

    .line 95
    :cond_1
    cmp-long v6, v7, p3

    if-nez v6, :cond_2

    move v4, v5

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v2

    .line 102
    .local v2, usage:J
    sub-long v0, p3, v2

    .line 103
    .local v0, availSize:J
    cmp-long v6, v0, p1

    if-gez v6, :cond_0

    move v4, v5

    .line 111
    goto :goto_0
.end method

.method public isMustReset()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const-wide v4, 0x3fffffffffffffffL

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v1}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 51
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/flow/Flow;->getSystemTrafficStats()J

    move-result-wide v0

    .line 62
    .local v0, baseline:J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 63
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 64
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 65
    return-void
.end method

.method protected set(IJ)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 30
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/htc/reportagent/budget/flow/Flow;->mPref:Lcom/htc/reportagent/budget/BudgetPreference;

    iget-object v1, p0, Lcom/htc/reportagent/budget/flow/Flow;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lcom/htc/reportagent/budget/BudgetPreference;->set(Ljava/lang/String;J)Z

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public systemRebooted()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/reportagent/budget/flow/Flow;->getSystemTrafficStats()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 58
    return-void
.end method

.method public systemTrafficStatsUpdated()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 69
    invoke-virtual {p0, v8}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v0

    .line 70
    .local v0, baseline:J
    invoke-virtual {p0, v9}, Lcom/htc/reportagent/budget/flow/Flow;->get(I)J

    move-result-wide v2

    .line 71
    .local v2, bytes:J
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/flow/Flow;->getSystemTrafficStats()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 73
    .local v4, diff:J
    add-long v6, v0, v4

    invoke-virtual {p0, v8, v6, v7}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 74
    add-long v6, v2, v4

    invoke-virtual {p0, v9, v6, v7}, Lcom/htc/reportagent/budget/flow/Flow;->set(IJ)Z

    .line 75
    return-void
.end method
