.class public Lcom/htc/reportagent/budget/network/MobileNetwork;
.super Lcom/htc/reportagent/budget/network/Network;
.source "MobileNetwork.java"


# static fields
.field private static final DL:I = 0x0

.field private static final TOTAL:I = 0x2

.field private static final UL:I = 0x1


# instance fields
.field protected mFlow:[Lcom/htc/reportagent/budget/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/htc/reportagent/budget/BudgetPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/reportagent/budget/network/Network;-><init>()V

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/reportagent/budget/flow/Flow;

    iput-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    .line 19
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/reportagent/budget/flow/MobileFlowDL;

    invoke-direct {v2, p1}, Lcom/htc/reportagent/budget/flow/MobileFlowDL;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    aput-object v2, v0, v1

    .line 20
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/reportagent/budget/flow/MobileFlowUL;

    invoke-direct {v2, p1}, Lcom/htc/reportagent/budget/flow/MobileFlowUL;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    aput-object v2, v0, v1

    .line 21
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x2

    new-instance v2, Lcom/htc/reportagent/budget/flow/MobileFlowTotal;

    invoke-direct {v2, p1}, Lcom/htc/reportagent/budget/flow/MobileFlowTotal;-><init>(Lcom/htc/reportagent/budget/BudgetPreference;)V

    aput-object v2, v0, v1

    .line 22
    return-void
.end method


# virtual methods
.method protected getFlowDL()Lcom/htc/reportagent/budget/flow/Flow;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getFlowTotal()Lcom/htc/reportagent/budget/flow/Flow;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getFlowUL()Lcom/htc/reportagent/budget/flow/Flow;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/reportagent/budget/network/MobileNetwork;->mFlow:[Lcom/htc/reportagent/budget/flow/Flow;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/htc/reportagent/budget/network/MobileNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
