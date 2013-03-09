.class public Lgov/nist/javax/sip/DefaultAddressResolver;
.super Ljava/lang/Object;
.source "DefaultAddressResolver.java"

# interfaces
.implements Lgov/nist/core/net/AddressResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;
    .locals 4

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method
