.class Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SsStateChangeResult"
.end annotation


# instance fields
.field networkId:I

.field state:Lcom/sqn/dcc/swmSsState;


# direct methods
.method constructor <init>(ILcom/sqn/dcc/swmSsState;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;->state:Lcom/sqn/dcc/swmSsState;

    iput p1, p0, Lcom/htc/net/wimax/WimaxStateTracker$SsStateChangeResult;->networkId:I

    return-void
.end method
