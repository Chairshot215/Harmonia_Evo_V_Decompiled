.class public Lcom/htc/reportagent/budget/flow/AllFlowTotal;
.super Lcom/htc/reportagent/budget/flow/Flow;
.source "AllFlowTotal.java"


# direct methods
.method public constructor <init>(Lcom/htc/reportagent/budget/BudgetPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 10
    const-string v0, "AllTotalBaseline"

    const-string v1, "AllTotalStats"

    const-string v2, "AllTotalAppUsage"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/reportagent/budget/flow/Flow;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getSystemTrafficStats()J
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/reportagent/budget/flow/AllFlowTotal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
