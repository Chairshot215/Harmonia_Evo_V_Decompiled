.class Lcom/sqn/WimaxHoClient;
.super Lcom/sqn/dcc/HoClient;
.source "WimaxHoClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/HoClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxHoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxHoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxHoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxHoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public HandoverCanceled()V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxHoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "HoClient: HO has Canceled"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxHoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0}, Lcom/htc/net/wimax/WimaxEventObserver;->HandoverFailedNotification()V

    return-void
.end method

.method public HandoverStarted(JSI)V
    .locals 4

    iget-object v1, p0, Lcom/sqn/WimaxHoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HoClient: HO has started, bsId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preamble = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/HTCWimax4GBaseStationInfo;-><init>()V

    iget-object v1, p0, Lcom/sqn/WimaxHoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v1, v0}, Lcom/htc/net/wimax/WimaxEventObserver;->HandoverStartedNotification(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V

    return-void
.end method

.method public HandoverSucceeded(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sqn/WimaxHoClient;->_out:Lcom/sqn/dcc/DccStdOut;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoClient: HO has Succeeded, dhcpRenewing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sqn/WimaxHoClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    invoke-interface {v0, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->HandoverSucceededNotification(Z)V

    return-void
.end method
