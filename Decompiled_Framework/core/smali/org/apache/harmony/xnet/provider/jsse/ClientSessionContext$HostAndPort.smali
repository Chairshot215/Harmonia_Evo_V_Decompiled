.class Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
.super Ljava/lang/Object;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HostAndPort"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    iget v3, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method
