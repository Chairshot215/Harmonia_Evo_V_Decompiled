.class public Lorg/jivesoftware/smack/SASLAuthentication;
.super Ljava/lang/Object;
.source "SASLAuthentication.java"


# static fields
.field private static implementedMechanisms:Ljava/util/Map;

.field private static mechanismsPreferences:Ljava/util/List;


# instance fields
.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

.field private resourceBinded:Z

.field private saslFailed:Z

.field private saslNegotiated:Z

.field private serverMechanisms:Ljava/util/Collection;

.field private sessionSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    const-string v1, "PLAIN"

    const-class v2, Lorg/jivesoftware/smack/sasl/SASLPlainMechanism;

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->registerSASLMechanism(ILjava/lang/String;Ljava/lang/Class;)V

    .line 84
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 72
    iput-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 77
    iput-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 78
    iput-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 79
    iput-boolean v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 129
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 130
    return-void
.end method

.method private bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 283
    const-wide/16 v6, 0x7530

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    if-nez v6, :cond_1

    .line 291
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Resource binding not offered by server"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 294
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/Bind;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Bind;-><init>()V

    .line 295
    .local v1, bindResource:Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Bind;->setResource(Ljava/lang/String;)V

    .line 297
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Bind;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 300
    .local v2, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 302
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Bind;

    .line 303
    .local v3, response:Lorg/jivesoftware/smack/packet/Bind;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 304
    if-nez v3, :cond_2

    .line 305
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 308
    :cond_2
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_3

    .line 309
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 311
    :cond_3
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Bind;->getJid()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, userJID:Ljava/lang/String;
    iget-boolean v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    if-eqz v6, :cond_5

    .line 314
    new-instance v4, Lorg/jivesoftware/smack/packet/Session;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Session;-><init>()V

    .line 315
    .local v4, session:Lorg/jivesoftware/smack/packet/Session;
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v7, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Session;->getPacketID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 317
    iget-object v6, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 319
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 320
    .local v0, ack:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 321
    if-nez v0, :cond_4

    .line 322
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "No response from the server."

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 325
    :cond_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_6

    .line 326
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v6

    .line 331
    .end local v0           #ack:Lorg/jivesoftware/smack/packet/IQ;
    .end local v4           #session:Lorg/jivesoftware/smack/packet/Session;
    :cond_5
    new-instance v6, Lorg/jivesoftware/smack/XMPPException;

    const-string v7, "Session establishment not offered by server"

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    .end local v1           #bindResource:Lorg/jivesoftware/smack/packet/Bind;
    .end local v2           #collector:Lorg/jivesoftware/smack/PacketCollector;
    .end local v3           #response:Lorg/jivesoftware/smack/packet/Bind;
    .end local v5           #userJID:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 333
    .restart local v0       #ack:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #bindResource:Lorg/jivesoftware/smack/packet/Bind;
    .restart local v2       #collector:Lorg/jivesoftware/smack/PacketCollector;
    .restart local v3       #response:Lorg/jivesoftware/smack/packet/Bind;
    .restart local v4       #session:Lorg/jivesoftware/smack/packet/Session;
    .restart local v5       #userJID:Ljava/lang/String;
    :cond_6
    return-object v5
.end method

.method public static registerSASLMechanism(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "mClass"

    .prologue
    .line 99
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    sget-object v0, Lorg/jivesoftware/smack/SASLAuthentication;->mechanismsPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    sget-object v3, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    sget-object v1, Lorg/jivesoftware/smack/SASLAuthentication;->implementedMechanisms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 183
    :goto_0
    if-eqz v0, :cond_4

    .line 187
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/jivesoftware/smack/SASLAuthentication;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iput-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    monitor-enter p0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 197
    const-wide/16 v0, 0x7530

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    if-eqz v0, :cond_2

    .line 207
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    throw v0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_2
    return-object v0

    .line 210
    :cond_2
    :try_start_7
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    if-eqz v0, :cond_3

    .line 212
    invoke-direct {p0, p3}, Lorg/jivesoftware/smack/SASLAuthentication;->bindResourceAndEstablishSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 215
    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    goto :goto_2

    .line 230
    :cond_4
    new-instance v0, Lorg/jivesoftware/smack/NonSASLAuthentication;

    iget-object v1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/NonSASLAuthentication;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/jivesoftware/smack/NonSASLAuthentication;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 198
    :catch_2
    move-exception v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method authenticated()V
    .locals 1

    .prologue
    .line 375
    monitor-enter p0

    .line 376
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslNegotiated:Z

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 379
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method authenticationFailed()V
    .locals 1

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->saslFailed:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 391
    monitor-exit p0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method bindingRequired()V
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    .line 400
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->resourceBinded:Z

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 403
    monitor-exit p0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method challengeReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->currentMechanism:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;->challengeReceived(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public hasAnonymousAuthentication()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    const-string v1, "ANONYMOUS"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasNonAnonymousAuthentication()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 147
    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SASLAuthentication;->hasAnonymousAuthentication()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_0

    :cond_2
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .parameter "stanza"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->write(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/XMPPConnection;->writer:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 409
    return-void
.end method

.method sessionsSupported()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/SASLAuthentication;->sessionSupported:Z

    .line 418
    return-void
.end method

.method setAvailableSASLMethods(Ljava/util/Collection;)V
    .locals 0
    .parameter "mechanisms"

    .prologue
    .line 345
    iput-object p1, p0, Lorg/jivesoftware/smack/SASLAuthentication;->serverMechanisms:Ljava/util/Collection;

    .line 346
    return-void
.end method
