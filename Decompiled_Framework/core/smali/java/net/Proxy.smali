.class public Ljava/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Proxy$Type;
    }
.end annotation


# static fields
.field public static final NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private address:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal Proxy.Type or SocketAddress argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    iput-object p2, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/net/Proxy;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/net/Proxy;

    iget-object v3, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    iget-object v4, v0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    iget-object v4, v0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    invoke-virtual {v1}, Ljava/net/Proxy$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Ljava/net/Proxy$Type;
    .locals 1

    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method
