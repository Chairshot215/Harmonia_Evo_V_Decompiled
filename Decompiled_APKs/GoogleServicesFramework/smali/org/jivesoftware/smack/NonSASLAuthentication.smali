.class Lorg/jivesoftware/smack/NonSASLAuthentication;
.super Ljava/lang/Object;
.source "NonSASLAuthentication.java"


# instance fields
.field private connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smack/NonSASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 52
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v2, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 92
    .local v2, authTypes:Lorg/jivesoftware/smack/packet/Authentication;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;)V

    .line 93
    const-string v7, ""

    invoke-virtual {v2, v7}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lorg/jivesoftware/smack/packet/Authentication;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Authentication;-><init>()V

    .line 102
    .local v1, auth:Lorg/jivesoftware/smack/packet/Authentication;
    const-string v7, "@"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, atIdx:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    .line 107
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, node:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, domain:Ljava/lang/String;
    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Authentication;->setTo(Ljava/lang/String;)V

    .line 116
    .end local v4           #domain:Ljava/lang/String;
    .end local v5           #node:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Authentication;->getDigest()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 117
    iget-object v7, p0, Lorg/jivesoftware/smack/NonSASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p2}, Lorg/jivesoftware/smack/packet/Authentication;->setDigest(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Authentication;->setResource(Ljava/lang/String;)V

    .line 128
    iget-object v7, p0, Lorg/jivesoftware/smack/NonSASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v8, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Authentication;->getPacketID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v3

    .line 130
    .local v3, collector:Lorg/jivesoftware/smack/PacketCollector;
    const-string v7, "Smack"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "Smack"

    const-string v8, "[NonSASLAuth] authenticate: send auth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v7, p0, Lorg/jivesoftware/smack/NonSASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v7, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 137
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/IQ;

    .line 138
    .local v6, response:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v6, :cond_4

    .line 139
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "Authentication timed out"

    new-instance v9, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v10, 0x1f7

    invoke-direct {v9, v10}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    new-instance v10, Ljava/io/IOException;

    const-string v11, "Authentication timed out"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;Ljava/lang/Throwable;)V

    throw v7

    .line 112
    .end local v3           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v6           #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Authentication;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Authentication;->getPassword()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 120
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Authentication;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    const-string v8, "Server does not support compatible authentication mechanism."

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 143
    .restart local v3       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v6       #response:Lorg/jivesoftware/smack/packet/IQ;
    :cond_4
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v7

    sget-object v8, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v7, v8, :cond_5

    .line 144
    new-instance v7, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v7

    .line 147
    :cond_5
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 149
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
