.class Lcom/sqn/WimaxSniffClient;
.super Lcom/sqn/dcc/SniffClient;
.source "WimaxSniffClient.java"


# instance fields
.field _observer:Lcom/htc/net/wimax/WimaxEventObserver;

.field _out:Lcom/sqn/dcc/DccStdOut;


# direct methods
.method public constructor <init>(Lcom/sqn/dcc/DccStdOut;Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sqn/dcc/SniffClient;-><init>()V

    iput-object v0, p0, Lcom/sqn/WimaxSniffClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object v0, p0, Lcom/sqn/WimaxSniffClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    iput-object p1, p0, Lcom/sqn/WimaxSniffClient;->_out:Lcom/sqn/dcc/DccStdOut;

    iput-object p2, p0, Lcom/sqn/WimaxSniffClient;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public SniffCapture(Lcom/sqn/dcc/SniffPacket;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxSniffClient;->_out:Lcom/sqn/dcc/DccStdOut;

    const-string v1, "SniffCient: packet is :"

    invoke-virtual {v0, v1}, Lcom/sqn/dcc/DccStdOut;->println(Ljava/lang/String;)V

    return-void
.end method
