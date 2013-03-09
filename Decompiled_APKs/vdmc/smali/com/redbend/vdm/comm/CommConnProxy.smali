.class Lcom/redbend/vdm/comm/CommConnProxy;
.super Ljava/lang/Object;
.source "CommConnProxy.java"


# static fields
.field private static _connId:I


# instance fields
.field private _connections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbend/vdm/comm/CommRawConnection;",
            ">;"
        }
    .end annotation
.end field

.field private _factory:Lcom/redbend/vdm/comm/CommFactory;

.field private _timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/redbend/vdm/comm/CommConnProxy;->initIDs()V

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/redbend/vdm/comm/CommConnProxy;->_connId:I

    return-void
.end method

.method constructor <init>(Lcom/redbend/vdm/comm/CommFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/16 v0, 0x1e

    iput v0, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_timeout:I

    .line 16
    invoke-direct {p0}, Lcom/redbend/vdm/comm/CommConnProxy;->initInstance()V

    .line 17
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_factory:Lcom/redbend/vdm/comm/CommFactory;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_connections:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initInstance()V
.end method


# virtual methods
.method close(Lcom/redbend/vdm/comm/CommRawConnection;)V
    .locals 0
    .parameter "conn"

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/redbend/vdm/comm/CommRawConnection;->close()V

    .line 55
    return-void
.end method

.method protected native destroyInstance()V
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/redbend/vdm/comm/CommRawConnection;
    .locals 2
    .parameter "proxy"
    .parameter "proxyAuthLevel"
    .parameter "proxyUsernamePassword"
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v1, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_factory:Lcom/redbend/vdm/comm/CommFactory;

    invoke-interface {v1}, Lcom/redbend/vdm/comm/CommFactory;->createRawConnection()Lcom/redbend/vdm/comm/CommRawConnection;

    move-result-object v0

    .line 33
    .local v0, conn:Lcom/redbend/vdm/comm/CommRawConnection;
    invoke-static {}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->values()[Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/redbend/vdm/comm/CommRawConnection;->init(Ljava/lang/String;Lcom/redbend/vdm/comm/CommHttpAuth$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_timeout:I

    invoke-interface {v0, v1}, Lcom/redbend/vdm/comm/CommRawConnection;->setConnectionTimeout(I)V

    .line 36
    iget-object v1, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_connections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v0
.end method

.method open(Ljava/lang/String;Lcom/redbend/vdm/comm/CommRawConnection;)I
    .locals 1
    .parameter "url"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-interface {p2, p1}, Lcom/redbend/vdm/comm/CommRawConnection;->open(Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/redbend/vdm/comm/CommConnProxy;->_connId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/redbend/vdm/comm/CommConnProxy;->_connId:I

    return v0
.end method

.method receive([BLcom/redbend/vdm/comm/CommRawConnection;)I
    .locals 1
    .parameter "msg"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p2, p1}, Lcom/redbend/vdm/comm/CommRawConnection;->receive([B)I

    move-result v0

    return v0
.end method

.method send([BLcom/redbend/vdm/comm/CommRawConnection;)V
    .locals 0
    .parameter "msg"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/comm/VdmCommException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p2, p1}, Lcom/redbend/vdm/comm/CommRawConnection;->send([B)V

    .line 47
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 62
    iput p1, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_timeout:I

    .line 64
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/comm/CommRawConnection;

    .line 66
    .local v0, conn:Lcom/redbend/vdm/comm/CommRawConnection;
    invoke-interface {v0, p1}, Lcom/redbend/vdm/comm/CommRawConnection;->setConnectionTimeout(I)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0           #conn:Lcom/redbend/vdm/comm/CommRawConnection;
    :cond_0
    return-void
.end method

.method term(Lcom/redbend/vdm/comm/CommRawConnection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/redbend/vdm/comm/CommConnProxy;->_connections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
