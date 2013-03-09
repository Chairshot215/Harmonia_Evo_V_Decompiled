.class public abstract Lcom/htc/reportagent/budget/network/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static final _DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appUsageUpdated(JJ)V
    .locals 3
    .parameter "newDLAppUsage"
    .parameter "newULAppUsage"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    add-long v1, p1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/reportagent/budget/flow/Flow;->appUsageUpdated(J)V

    .line 44
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/htc/reportagent/budget/flow/Flow;->appUsageUpdated(J)V

    .line 45
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/htc/reportagent/budget/flow/Flow;->appUsageUpdated(J)V

    .line 46
    return-void
.end method

.method protected abstract getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;
.end method

.method protected abstract getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;
.end method

.method protected abstract getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;
.end method

.method public abstract getTAG()Ljava/lang/String;
.end method

.method public isAvailableByBytes(JJJJJ)Z
    .locals 10
    .parameter "totalLimit"
    .parameter "expectedDLSize"
    .parameter "DLLimit"
    .parameter "expectedULSize"
    .parameter "ULLimit"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    add-long v8, p3, p7

    invoke-virtual {v7, v8, v9, p1, p2}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableBySize(JJ)Z

    move-result v4

    .line 51
    .local v4, result1:Z
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    move-wide v0, p5

    invoke-virtual {v7, p3, p4, v0, v1}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableBySize(JJ)Z

    move-result v5

    .line 52
    .local v5, result2:Z
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableBySize(JJ)Z

    move-result v6

    .line 54
    .local v6, result3:Z
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public isAvailableByPercentage(JJJJJ)Z
    .locals 10
    .parameter "amountPercentage"
    .parameter "expectedDLSize"
    .parameter "DLPercentage"
    .parameter "expectedULSize"
    .parameter "ULPercentage"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    add-long v8, p3, p7

    invoke-virtual {v7, v8, v9, p1, p2}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableByPercentage(JJ)Z

    move-result v4

    .line 60
    .local v4, result1:Z
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    move-wide v0, p5

    invoke-virtual {v7, p3, p4, v0, v1}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableByPercentage(JJ)Z

    move-result v5

    .line 61
    .local v5, result2:Z
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v7

    move-wide/from16 v0, p7

    move-wide/from16 v2, p9

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/htc/reportagent/budget/flow/Flow;->isAvailableByPercentage(JJ)Z

    move-result v6

    .line 63
    .local v6, result3:Z
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public isMustReset()Z
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/reportagent/budget/flow/Flow;->isMustReset()Z

    move-result v0

    .line 19
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/reportagent/budget/flow/Flow;->isMustReset()Z

    move-result v1

    and-int/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/reportagent/budget/flow/Flow;->isMustReset()Z

    move-result v1

    and-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->reset()V

    .line 32
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->reset()V

    .line 33
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->reset()V

    .line 34
    return-void
.end method

.method public systemRebooted()V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemRebooted()V

    .line 26
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemRebooted()V

    .line 27
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemRebooted()V

    .line 28
    return-void
.end method

.method public systemTrafficStatsUpdated()V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemTrafficStatsUpdated()V

    .line 38
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemTrafficStatsUpdated()V

    .line 39
    invoke-virtual {p0}, Lcom/htc/reportagent/budget/network/Network;->getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/reportagent/budget/flow/Flow;->systemTrafficStatsUpdated()V

    .line 40
    return-void
.end method
