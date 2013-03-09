.class Lcom/sqn/WimaxMacSsClient;
.super Lcom/sqn/dcc/MacSsClient;
.source "WimaxMacSsClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/MacSsClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxMacSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public DcdChanged(Lcom/sqn/dcc/swmDcd;)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "MacSsClient: dcd has changed"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iget-object v1, p1, Lcom/sqn/dcc/swmDcd;->phy:Lcom/sqn/dcc/swmDcdPhy;

    iget-object v1, v1, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    iget-wide v1, v1, Lcom/sqn/dcc/swmOfdmaDcd;->bsId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/net/wimax/WimaxEventObserver;->BaseMacAddrChangeNotification(J)V

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iget-wide v1, p1, Lcom/sqn/dcc/swmDcd;->frequency:J

    invoke-interface {v0, v1, v2}, Lcom/htc/net/wimax/WimaxEventObserver;->FrequencyChangeNotification(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "MacSsClient: _observer is null"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public FcdChanged(Lcom/sqn/dcc/swmFcd;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "MacSsClient: fcd has changed"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method

.method public UcdChanged(Lcom/sqn/dcc/swmUcd;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxMacSsClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "MacSsClient: ucd has changed"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method
