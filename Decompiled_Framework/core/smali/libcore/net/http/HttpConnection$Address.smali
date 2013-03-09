.class public final Llibcore/net/http/HttpConnection$Address;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final proxy:Ljava/net/Proxy;

.field private final requiresTunnel:Z

.field private final socketHost:Ljava/lang/String;

.field private final socketPort:I

.field private final uriHost:Ljava/lang/String;

.field private final uriPort:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v0

    iput v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    iput v0, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Z)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iput-boolean p3, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v2

    iput v2, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    return-void
.end method

.method static synthetic access$000(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$200(Llibcore/net/http/HttpConnection$Address;)I
    .locals 1

    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    return v0
.end method

.method static synthetic access$300(Llibcore/net/http/HttpConnection$Address;)Z
    .locals 1

    iget-boolean v0, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    return v0
.end method

.method static synthetic access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Llibcore/net/http/HttpConnection$Address;)I
    .locals 1

    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    return v0
.end method


# virtual methods
.method public connect(I)Llibcore/net/http/HttpConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Llibcore/net/http/HttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Llibcore/net/http/HttpConnection;-><init>(Llibcore/net/http/HttpConnection$Address;ILlibcore/net/http/HttpConnection$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Llibcore/net/http/HttpConnection$Address;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Llibcore/net/http/HttpConnection$Address;

    iget-object v2, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iget-object v3, v0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    iget v3, v0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    iget-boolean v3, v0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x11

    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v0, v1, v2

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
