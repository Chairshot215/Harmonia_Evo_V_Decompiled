.class public Lorg/jivesoftware/smack/SSLXMPPConnection;
.super Lorg/jivesoftware/smack/XMPPConnection;
.source "SSLXMPPConnection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 6
    .parameter "host"
    .parameter "port"
    .parameter "sslHandshakeTimeout"
    .parameter "useProtoBuf"
    .parameter "serviceName"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p5

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjavax/net/SocketFactory;)V

    .line 129
    return-void
.end method
