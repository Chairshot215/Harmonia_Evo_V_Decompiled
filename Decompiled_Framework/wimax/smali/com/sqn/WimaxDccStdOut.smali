.class public Lcom/sqn/WimaxDccStdOut;
.super Lcom/sqn/dcc/DccStdOut;
.source "WimaxDccStdOut.java"


# instance fields
.field private _observer:Lcom/htc/net/wimax/WimaxEventObserver;


# direct methods
.method public constructor <init>(Lcom/htc/net/wimax/WimaxEventObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/sqn/dcc/DccStdOut;-><init>()V

    iput-object p1, p0, Lcom/sqn/WimaxDccStdOut;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDccStdOut;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public printError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sqn/WimaxDccStdOut;->_observer:Lcom/htc/net/wimax/WimaxEventObserver;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/htc/net/wimax/WimaxEventObserver;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sqn/WimaxDccStdOut;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printlnError(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sqn/WimaxDccStdOut;->printError(Ljava/lang/String;)V

    return-void
.end method
