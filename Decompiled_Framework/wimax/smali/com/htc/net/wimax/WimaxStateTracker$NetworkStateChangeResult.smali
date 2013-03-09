.class Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;
.super Ljava/lang/Object;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStateChangeResult"
.end annotation


# instance fields
.field BSSID:Ljava/lang/String;

.field networkId:I

.field state:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method constructor <init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    iput-object p2, p0, Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    iput p3, p0, Lcom/htc/net/wimax/WimaxStateTracker$NetworkStateChangeResult;->networkId:I

    return-void
.end method
